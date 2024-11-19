
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
    tp.TypeProduit AS Type_Produit,
    p.Nom_Produit AS Nom_Produit,
    COUNT(a.IdProduit) AS Nombre_Total_Achats,
    COUNT(DISTINCT a.IdJoueurs) AS Nombre_Joueurs_Uniques,
    ROUND(AVG(a.Nombre_achats), 2) AS Moyenne_Achats_Par_Joueur,
    ROUND(SUM(a.Montant_achat), 2) AS Montant_Total_Achats
FROM 
    Achats a
INNER JOIN Produit p ON a.IdProduit = p.IdProduit
INNER JOIN TypeProduit tp ON a.IdTypeProduit = tp.IdTypeProduit
GROUP BY 
    tp.TypeProduit, 
    p.Nom_Produit
ORDER BY 
    Nombre_Total_Achats DESC, 
    Montant_Total_Achats DESC;


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
