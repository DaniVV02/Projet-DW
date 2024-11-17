--requetes apres mise a jour des vue virtuelle :
--actions achats:

--traitement 1
SELECT 
    v_Date.Date_Complete AS DateAchats, 
    v_joueurs.IdJoueurs, 
    p.Categorie AS TypeAchat, 
    COUNT(a.IdProduit) AS NombreAchats, 
    SUM(a.Montant_achat) AS MontantTotal
FROM 
    Achats a
JOIN 
    v_joueurs ON a.IdJoueurs = v_joueurs.IdJoueurs
JOIN 
    Produit p ON a.IdProduit = p.IdProduit
JOIN 
    v_Date ON a.IdDate = v_Date.IdDate
GROUP BY 
    v_Date.Date_Complete, v_joueurs.IdJoueurs, p.Categorie
ORDER BY 
    v_Date.Date_Complete, v_joueurs.IdJoueurs, p.Categorie;

--traitement 2
SELECT 
    v_joueurs.IdJoueurs, 
    SUM(a.Nombre_achats) AS TotalAchats, 
    AVG(v_Session.Duree_Session) AS MoyenneDureeSession, 
    AVG(v_Session.Nombre_parties) AS MoyenneParties
FROM 
    Achats a
JOIN 
    v_joueurs ON a.IdJoueurs = v_joueurs.IdJoueurs
JOIN 
    v_Session sa ON a.IdSession_Achats = sa.IdSession_Achats
GROUP BY 
    v_joueurs.IdJoueurs
ORDER BY 
    TotalAchats DESC;

--traitement 3
SELECT 
    e.IdEvenement, 
    e.Type_evenement, 
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
JOIN 
    Evenement e ON a.IdEvenement = e.IdEvenement
JOIN 
    v_Date ON a.IdDate = v_Date.IdDate
WHERE 
    v_Date.Date_Complete BETWEEN 
    (SYSDATE - (e.Duree * 2)) AND 
    (SYSDATE + (e.Duree * 2))
GROUP BY 
    e.IdEvenement, e.Type_evenement, v_Date.Date_Complete, 
    CASE
        WHEN v_Date.Date_Complete < (SYSDATE - e.Duree) THEN 'Avant'
        WHEN v_Date.Date_Complete BETWEEN (SYSDATE - e.Duree) AND SYSDATE THEN 'Pendant'
        ELSE 'Après'
    END
ORDER BY 
    e.IdEvenement, v_Date.Date_Complete;

--traitement 4
SELECT 
    v_joueurs.IdJoueurs, 
    p.Nom_Produit, 
    p.Categorie AS TypeProduit, 
    COUNT(a.IdProduit) AS NombreAchats, 
    AVG(DATEDIFF(NEXT_PURCHASE.Date_achats, v_Date.Date_Complete)) AS FrequenceRachat
FROM 
    Achats a
JOIN 
    v_joueurs ON a.IdJoueurs = v_joueurs.IdJoueurs
JOIN 
    Produit p ON a.IdProduit = p.IdProduit
JOIN 
    v_Date ON a.IdDate = v_Date.IdDate
LEFT JOIN 
    (SELECT IdJoueurs, IdProduit, MIN(IdDate) AS Date_achats 
     FROM Achats 
     WHERE IdProduit IN (SELECT IdProduit FROM Produit WHERE Categorie = 'Gemmes') 
     GROUP BY IdJoueurs, IdProduit) AS NEXT_PURCHASE 
    ON a.IdJoueurs = NEXT_PURCHASE.IdJoueurs AND a.IdProduit = NEXT_PURCHASE.IdProduit
WHERE 
    p.Categorie = 'Gemmes'
GROUP BY 
    v_joueurs.IdJoueurs, p.Nom_Produit, p.Categorie
ORDER BY 
    v_joueurs.IdJoueurs, p.Nom_Produit;

--traitement 5
SELECT 
    p.IdPromotion, 
    p.TypeOffre, 
    v_Date.Date_Complete AS DateAchats, 
    SUM(a.Montant_achat) AS MontantTotal, 
    COUNT(a.IdProduit) AS NombreAchats
FROM 
    Achats a
JOIN 
    Promotion p ON a.IdPromotion = p.IdPromotion
JOIN 
    v_Date ON a.IdDate = v_Date.IdDate
GROUP BY 
    p.IdPromotion, p.TypeOffre, v_Date.Date_Complete
ORDER BY 
    v_Date.Date_Complete;


--actions personnage:

--traitement 1
SELECT 
    B.Nom AS Nom_Brawler,
    VD.Saison,
    COUNT(P.IdSession) AS Total_Sessions
FROM 
    PerfPersonnage P
JOIN 
    Brawler B ON P.IdBrawler = B.IdBrawler
JOIN 
    v_Date VD ON P.IdDate = VD.IdDate  -- Utilisation de la vue v_Date ici
GROUP BY 
    B.Nom, VD.Saison  -- Utilisation de la colonne Saison de la vue v_Date
ORDER BY 
    Total_Sessions DESC;




--traitement 2
SELECT 
    B.Nom AS Nom_Brawler,
    D.Saison,
    AVG(P.Taux_Victoire) AS Taux_Victoire_Moyen
FROM 
    PerfPersonnage P
JOIN 
    Brawler B ON P.IdBrawler = B.IdBrawler
JOIN 
    v_Date D ON P.IdDate = D.IdDate
GROUP BY 
    B.Nom, D.Saison
ORDER BY 
    Taux_Victoire_Moyen DESC;


--traitement 3
SELECT 
    B.Nom AS Nom_Brawler,
    NJ.TypeJoueur,
    AVG(P.Taux_Victoire) AS Taux_Victoire_Moyen,
    COUNT(P.IdSession) AS Total_Sessions
FROM 
    PerfPersonnage P
JOIN 
    Brawler B ON P.IdBrawler = B.IdBrawler
JOIN 
    NiveauJoueur NJ ON P.IdNiveauJoueur = NJ.IdNiveauJoueur
GROUP BY 
    B.Nom, NJ.TypeJoueur
HAVING 
    AVG(P.Taux_Victoire) > 0.7 OR AVG(P.Taux_Victoire) < 0.3
ORDER BY 
    Taux_Victoire_Moyen DESC;

--traitement 4
SELECT 
    B.Nom AS Nom_Brawler,
    D.Annee,
    D.Mois,
    AVG(P.Taux_Victoire) AS Taux_Victoire_Moyen
FROM 
    PerfPersonnage P
JOIN 
    Brawler B ON P.IdBrawler = B.IdBrawler
JOIN 
    v_Date D ON P.IdDate = D.IdDate
WHERE 
    D.Annee >= 2024 -- Supposons que les mises à jour ont commencé en 2024
GROUP BY 
    B.Nom, D.Annee, D.Mois
ORDER BY 
    D.Annee, D.Mois, Taux_Victoire_Moyen DESC;


--traitement 5
SELECT 
    B.Nom AS Nom_Brawler,
    M.Nom_mode AS Mode_Jeu,
    AVG(P.Taux_Victoire) AS Taux_Victoire_Moyen,
    AVG(P.Degats_Totaux) AS Degats_Moyens
FROM 
    PerfPersonnage P
JOIN 
    Brawler B ON P.IdBrawler = B.IdBrawler
JOIN 
    ModeJeu M ON P.IdMode = M.IdMode
GROUP BY 
    B.Nom, M.Nom_mode
HAVING 
    AVG(P.Taux_Victoire) > 0.7 OR AVG(P.Taux_Victoire) < 0.3
ORDER BY 
    Taux_Victoire_Moyen DESC;

