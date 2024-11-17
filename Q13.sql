--couvre la requetes 1 et 4
CREATE MATERIALIZED VIEW AggregatedTransactions AS
SELECT 
    a.IdJoueurs,
    a.IdProduit,
    v_Date.Date_Complete AS DateAchats,
    p.Categorie AS TypeProduit,
    COUNT(a.IdProduit) AS NombreAchats,
    SUM(a.Montant_achat) AS MontantTotal
FROM 
    Achats a
JOIN 
    Produit p ON a.IdProduit = p.IdProduit
JOIN 
    v_Date ON a.IdDate = v_Date.IdDate
GROUP BY 
    a.IdJoueurs, a.IdProduit, v_Date.Date_Complete, p.Categorie;


--couvre la requetes 2 et 4
CREATE MATERIALIZED VIEW PlayerStatistics AS
SELECT 
    v_joueurs.IdJoueurs,
    SUM(a.Nombre_achats) AS TotalAchats,
    SUM(a.Montant_achat) AS TotalDepenses,
    AVG(sa.Duree_Session) AS MoyenneDureeSession,
    AVG(sa.Nombre_parties) AS MoyenneParties
FROM 
    Achats a
JOIN 
    v_joueurs ON a.IdJoueurs = v_joueurs.IdJoueurs
LEFT JOIN 
    Session_Achats sa ON a.IdSession_Achats = sa.IdSession_Achats
GROUP BY 
    v_joueurs.IdJoueurs;

--  couvre la requetes 3et 5

CREATE MATERIALIZED VIEW EventAndPromotionAnalysis AS
SELECT 
    COALESCE(e.IdEvenement, p.IdPromotion) AS IdEntite,
    CASE 
        WHEN e.IdEvenement IS NOT NULL THEN 'Evenement'
        ELSE 'Promotion'
    END AS TypeEntite,
    v_Date.Date_Complete AS DateAchats,
    CASE
        WHEN v_Date.Date_Complete < (SYSDATE - e.Duree) THEN 'Avant'
        WHEN v_Date.Date_Complete BETWEEN (SYSDATE - e.Duree) AND SYSDATE THEN 'Pendant'
        ELSE 'Après'
    END AS Periode,
    SUM(a.Montant_achat) AS MontantTotal,
    COUNT(a.IdProduit) AS NombreAchats
FROM 
    Achats a
LEFT JOIN 
    Evenement e ON a.IdEvenement = e.IdEvenement
LEFT JOIN 
    Promotion p ON a.IdPromotion = p.IdPromotion
JOIN 
    v_Date ON a.IdDate = v_Date.IdDate
GROUP BY 
    COALESCE(e.IdEvenement, p.IdPromotion), 
    CASE 
        WHEN e.IdEvenement IS NOT NULL THEN 'Evenement'
        ELSE 'Promotion'
    END,
    v_Date.Date_Complete,
    CASE
        WHEN v_Date.Date_Complete < (SYSDATE - e.Duree) THEN 'Avant'
        WHEN v_Date.Date_Complete BETWEEN (SYSDATE - e.Duree) AND SYSDATE THEN 'Pendant'
        ELSE 'Après'
    END;

-- couvre la requetes 1 et 5
CREATE MATERIALIZED VIEW DailyProductSales AS
SELECT 
    v_Date.Date_Complete AS DateAchats,
    p.Categorie AS TypeProduit,
    SUM(a.Montant_achat) AS MontantTotal,
    COUNT(a.IdProduit) AS NombreAchats
FROM 
    Achats a
JOIN 
    Produit p ON a.IdProduit = p.IdProduit
JOIN 
    v_Date ON a.IdDate = v_Date.IdDate
GROUP BY 
    v_Date.Date_Complete, p.Categorie;


--traitement 1
SELECT 
    DateAchats, 
    IdJoueurs, 
    TypeProduit AS TypeAchat, 
    SUM(NombreAchats) AS TotalAchats, 
    SUM(MontantTotal) AS MontantTotal
FROM 
    AggregatedTransactions
GROUP BY 
    DateAchats, IdJoueurs, TypeProduit
ORDER BY 
    DateAchats, IdJoueurs, TypeProduit;

--traitement 2
SELECT 
    IdJoueurs, 
    TotalAchats, 
    MoyenneDureeSession, 
    MoyenneParties
FROM 
    PlayerStatistics
ORDER BY 
    TotalAchats DESC;


--traitement 3
SELECT 
    IdEntite AS IdEvenement, 
    TypeEntite AS Type_evenement, 
    Periode, 
    SUM(MontantTotal) AS TotalMontant, 
    SUM(NombreAchats) AS TotalAchats
FROM 
    EventAndPromotionAnalysis
WHERE 
    TypeEntite = 'Evenement'
GROUP BY 
    IdEntite, TypeEntite, Periode
ORDER BY 
    IdEntite, Periode;

--traitement 4
SELECT 
    IdJoueurs, 
    TypeProduit AS TypeAchat, 
    AVG(DATEDIFF(NOW(), DateAchats)) AS MoyenneIntervalleEntreAchats
FROM 
    AggregatedTransactions
WHERE 
    TypeProduit = 'Gemmes'
GROUP BY 
    IdJoueurs, TypeProduit
ORDER BY 
    MoyenneIntervalleEntreAchats ASC;

--traitement 5
SELECT 
    IdEntite AS IdPromotion, 
    TypeEntite AS TypeOffre, 
    Periode, 
    SUM(MontantTotal) AS MontantTotal, 
    SUM(NombreAchats) AS NombreAchats
FROM 
    EventAndPromotionAnalysis
WHERE 
    TypeEntite = 'Promotion'
GROUP BY 
    IdEntite, TypeEntite, Periode
ORDER BY 
    Periode, MontantTotal DESC;
