
--Actions Achats
--traitement 1
SELECT 
    d.Date_achats, 
    j.IdJoueurs, 
    p.Categorie AS TypeAchat, 
    COUNT(a.IdProduit) AS NombreAchats, 
    SUM(a.Montant_achat) AS MontantTotal
FROM 
    Achats a
JOIN 
    Joueurs j ON a.IdJoueurs = j.IdJoueurs
JOIN 
    Produit p ON a.IdProduit = p.IdProduit
JOIN 
    Date_Achats d ON a.IdDate = d.IdDate
GROUP BY 
    d.Date_achats, j.IdJoueurs, p.Categorie
ORDER BY 
    d.Date_achats, j.IdJoueurs, p.Categorie;


--traitement 2
SELECT 
    j.IdJoueurs, 
    SUM(a.Nombre_achats) AS TotalAchats, 
    AVG(sa.Duree) AS MoyenneDureeSession, 
    AVG(sa.Nombre_parties) AS MoyenneParties
FROM 
    Achats a
JOIN 
    Joueurs j ON a.IdJoueurs = j.IdJoueurs
JOIN 
    Session_Achats sa ON a.IdSession = sa.IdSession
GROUP BY 
    j.IdJoueurs
ORDER BY 
    TotalAchats DESC;

--traitement 3
SELECT 
    e.IdEvenement, 
    e.Type_evenement, 
    d.Date_achats, 
    SUM(a.Montant_achat) AS MontantTotal, 
    COUNT(a.IdProduit) AS NombreAchats
FROM 
    Achats a
JOIN 
    Evenement e ON a.IdEvenement = e.IdEvenement
JOIN 
    Date_Achats d ON a.IdDate = d.IdDate
WHERE 
    d.Date_achats BETWEEN DATE_SUB(e.Date_debut, INTERVAL 7 DAY) AND DATE_ADD(e.Date_fin, INTERVAL 7 DAY)
GROUP BY 
    e.IdEvenement, e.Type_evenement, d.Date_achats
ORDER BY 
    e.IdEvenement, d.Date_achats;

--traitement 4
SELECT 
    j.IdJoueurs, 
    p.Nom_Produit, 
    p.Categorie AS TypeProduit, 
    COUNT(a.IdProduit) AS NombreAchats, 
    AVG(DATEDIFF(NEXT_PURCHASE.Date_achats, d.Date_achats)) AS FrequenceRachat
FROM 
    Achats a
JOIN 
    Joueurs j ON a.IdJoueurs = j.IdJoueurs
JOIN 
    Produit p ON a.IdProduit = p.IdProduit
JOIN 
    Date_Achats d ON a.IdDate = d.IdDate
LEFT JOIN 
    (SELECT IdJoueurs, IdProduit, MIN(IdDate) AS Date_achats 
     FROM Achats 
     WHERE IdProduit IN (SELECT IdProduit FROM Produit WHERE Categorie = 'Gemmes') 
     GROUP BY IdJoueurs, IdProduit) AS NEXT_PURCHASE 
    ON a.IdJoueurs = NEXT_PURCHASE.IdJoueurs AND a.IdProduit = NEXT_PURCHASE.IdProduit
WHERE 
    p.Categorie = 'Gemmes'
GROUP BY 
    j.IdJoueurs, p.Nom_Produit, p.Categorie
ORDER BY 
    j.IdJoueurs, p.Nom_Produit;

--traitement 5

SELECT 
    p.IdPromotion, 
    p.TypeOffre, 
    d.Date_achats, 
    SUM(a.Montant_achat) AS MontantTotal, 
    COUNT(a.IdProduit) AS NombreAchats
FROM 
    Achats a
JOIN 
    Promotion p ON a.IdPromotion = p.IdPromotion
JOIN 
    Date_Achats d ON a.IdDate = d.IdDate
WHERE 
    d.Date_achats BETWEEN DATE_SUB(p.Date_debut, INTERVAL 7 DAY) AND DATE_ADD(p.Date_fin, INTERVAL 7 DAY)
GROUP BY 
    p.IdPromotion, p.TypeOffre, d.Date_achats
ORDER BY 
    p.IdPromotion, d.Date_achats;
