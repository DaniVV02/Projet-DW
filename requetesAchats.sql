
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
    AVG(sa.Duree_Session_Minutes) AS MoyenneDureeSession, 
    AVG(sa.Nombre_parties) AS MoyenneParties
FROM 
    Achats a
JOIN 
    Joueurs j ON a.IdJoueurs = j.IdJoueurs
JOIN 
    Session_Achats sa ON a.IdSession_Achats = sa.IdSession_Achats
GROUP BY 
    j.IdJoueurs
ORDER BY 
    TotalAchats DESC;


--traitement 3     
SELECT 
    e.IdEvenement, 
    e.Type_evenement, 
    d.Date_achats, 
    CASE
        WHEN d.Date_achats < (CURRENT_DATE - e.Duree) THEN 'Avant'
        WHEN d.Date_achats BETWEEN (CURRENT_DATE - e.Duree) AND CURRENT_DATE THEN 'Pendant'
        ELSE 'Après'
    END AS Periode,
    SUM(a.Montant_achat) AS MontantTotal, 
    COUNT(a.IdProduit) AS NombreAchats
FROM 
    Achats a
JOIN 
    Evenement e ON a.IdEvenement = e.IdEvenement
JOIN 
    Date_Achats d ON a.IdDate = d.IdDate
WHERE 
    d.Date_achats BETWEEN 
    (CURRENT_DATE - (e.Duree * 2)) AND 
    (CURRENT_DATE + (e.Duree * 2))
GROUP BY 
    e.IdEvenement, e.Type_evenement, d.Date_achats, 
    CASE
        WHEN d.Date_achats < (CURRENT_DATE - e.Duree) THEN 'Avant'
        WHEN d.Date_achats BETWEEN (CURRENT_DATE - e.Duree) AND CURRENT_DATE THEN 'Pendant'
        ELSE 'Après'
    END
ORDER BY 
    e.IdEvenement, d.Date_achats;


--traitement 4
SELECT 
    j.IdJoueurs, 
    p.Nom_Produit, 
    p.Categorie AS TypeProduit, 
    COUNT(a.IdProduit) AS NombreAchats, 
    AVG(EXTRACT(EPOCH FROM (np.Date_achats - d.Date_achats)) / 86400) AS FrequenceRachat
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
     GROUP BY IdJoueurs, IdProduit) AS np 
    ON a.IdJoueurs = np.IdJoueurs AND a.IdProduit = np.IdProduit
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
    d.Date_achats BETWEEN (CURRENT_DATE - 7) AND (CURRENT_DATE + p.Duree + 7)
GROUP BY 
    p.IdPromotion, p.TypeOffre, d.Date_achats
ORDER BY 
    p.IdPromotion, d.Date_achats;
