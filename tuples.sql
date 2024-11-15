INSERT INTO Joueurs (IdJoueurs, Age, Region, Date_Inscription, Type_Joueur)
VALUES
(1, 20, 'Europe', TO_DATE('2021-01-15', 'YYYY-MM-DD'), 'Casual'),
(2, 25, 'Amérique du Nord', TO_DATE('2020-06-10', 'YYYY-MM-DD'), 'Compétitif'),
(3, 18, 'Asie', TO_DATE('2022-03-05', 'YYYY-MM-DD'), 'Compétitif'),
(4, 30, 'Europe', TO_DATE('2019-09-20', 'YYYY-MM-DD'), 'Casual'),
(5, 22, 'Amérique du Sud', TO_DATE('2021-11-11', 'YYYY-MM-DD'), 'Payant');


INSERT INTO Produit (IdProduit, Nom_Produit, Prix_unitaire, Categorie, Popularite, Type_produit)
VALUES
(1, 'Gems Pack - Small', 4.99, 'Monnaie', 80, 'Microtransaction'),
(2, 'Gems Pack - Large', 19.99, 'Monnaie', 90, 'Microtransaction'),
(3, 'Exclusive Skin', 9.99, 'Cosmétique', 70, 'Cosmétique'),
(4, 'Power Points Pack', 2.99, 'Amélioration', 60, 'Ressource'),
(5, 'Special Offer Bundle', 14.99, 'Pack', 85, 'Promotion');


INSERT INTO Evenement (IdEvenement, Type_evenement, Duree, Description, Recompense_possible)
VALUES
(1, 'Événement Spécial', 3, 'Double trophées pendant 3 jours', 'Gems, Power Points'),
(2, 'Championnat Mensuel', 2, 'Tournoi compétitif', 'Skins exclusifs'),
(3, 'Mise à jour de contenu', 1, 'Nouveau Brawler disponible', 'Nouveau skin'),
(4, 'Promotion Été', 7, 'Réduction sur les offres spéciales', 'Bonus de gems');


INSERT INTO Promotion (IdPromotion, TypeOffre, Cout_Promotion, Remise_Promotion, Duree, Frequence, Popularite)
VALUES
(1, 'Réduction sur packs', 200, 20, 7, 'Saisonnière', 75),
(2, 'Offre de lancement', 100, 15, 3, 'Nouvelle mise à jour', 85),
(3, 'Offre exclusive', 150, 10, 5, 'Mensuelle', 80),
(4, 'Réduction spéciale', 180, 25, 10, 'Événement', 90);


INSERT INTO Date_Dim (IdDate, Date, Jour, Mois, Annee, Periode_vacances, Saison)
VALUES
(1, TO_DATE('2024-06-15', 'YYYY-MM-DD'), 15, 6, 2024, 'Vacances d’été', 'Été'),
(2, TO_DATE('2024-12-25', 'YYYY-MM-DD'), 25, 12, 2024, 'Vacances de Noël', 'Hiver'),
(3, TO_DATE('2024-10-01', 'YYYY-MM-DD'), 1, 10, 2024, 'Non', 'Automne'),
(4, TO_DATE('2024-11-20', 'YYYY-MM-DD'), 20, 11, 2024, 'Non', 'Automne');


INSERT INTO Achats (IdProduit, IdJoueurs, IdEvenement, IdPromotion, IdDate, IdSession, Montant_achat, Nombre_achats, Type_achat)
VALUES
(1, 1, 1, 1, 1, 100, 4.99, 1, 'Microtransaction'), -- Joueur casual, achat pendant événement
(2, 2, 2, 3, 2, 150, 19.99, 1, 'Microtransaction'), -- Joueur compétitif, achat pendant tournoi
(3, 3, 3, NULL, 3, 200, 9.99, 1, 'Cosmétique'), -- Achat d’un skin lors d’une mise à jour
(4, 4, NULL, 4, 4, 250, 2.99, 2, 'Ressource'), -- Achat hors événement
(5, 5, 4, 2, 1, 300, 14.99, 1, 'Promotion'), -- Achat pendant la promotion d’été
(2, 2, 1, 1, 2, 180, 19.99, 1, 'Microtransaction'), -- Joueur compétitif, achat influencé par la réduction
(4, 3, NULL, NULL, 4, 200, 2.99, 3, 'Ressource'); -- Achat récurrent de Power Points Pack



/* ------------------------------------------------------------------- */

INSERT INTO Brawler (IdBrawler, Nom, Rarete, Role, Date_Sortie, Points_de_vie, Vitesse, Trait, Attaque_Par_Sec, Rang_attaque, Vitesse_recharge, Degats_ulti, Rang_ulti)
VALUES
(1, 'Shelly', 'Commune', 'Tireur', TO_DATE('2018-06-12', 'YYYY-MM-DD'), 3600, 2, 'Rapide', 3, 2, 1.5, 3000, 3),
(2, 'Colt', 'Commune', 'Tireur', TO_DATE('2018-06-12', 'YYYY-MM-DD'), 2800, 2.5, 'Précision', 4, 1, 1.2, 2800, 2),
(3, 'El Primo', 'Rare', 'Tank', TO_DATE('2018-09-01', 'YYYY-MM-DD'), 5000, 1.8, 'Charge', 2, 4, 2, 4000, 1),
(4, 'Rico', 'Super Rare', 'Tireur', TO_DATE('2019-01-23', 'YYYY-MM-DD'), 3000, 2.2, 'Rebond', 5, 1, 1.3, 3200, 2),
(5, 'Poco', 'Rare', 'Support', TO_DATE('2019-05-10', 'YYYY-MM-DD'), 3200, 2, 'Soin', 1, 5, 2.5, 1500, 5),
(6, 'Spike', 'Légendaire', 'Attaquant', TO_DATE('2020-02-14', 'YYYY-MM-DD'), 2800, 2.3, 'Piques', 3.5, 3, 1.8, 3500, 2),
(7, 'Sandy', 'Légendaire', 'Support', TO_DATE('2020-11-22', 'YYYY-MM-DD'), 3400, 2.1, 'Camouflage', 2.8, 4, 1.7, 3700, 3),
(8, 'Mortis', 'Épique', 'Assassin', TO_DATE('2021-08-15', 'YYYY-MM-DD'), 3600, 3, 'Vampirisme', 3.2, 2, 1.5, 3300, 1),
(9, 'Leon', 'Légendaire', 'Assassin', TO_DATE('2019-12-05', 'YYYY-MM-DD'), 3000, 3.2, 'Invisible', 3.8, 1, 1.4, 4000, 1),
(10, 'Amber', 'Mythique', 'Attaquant', TO_DATE('2021-10-30', 'YYYY-MM-DD'), 3200, 2.5, 'Feu', 4, 2, 1.6, 3600, 2);


INSERT INTO Session (IdSession, Duree_Session, Modes_Jeu_Joues, Trophées_gagnés_total, Trophées_perdus_total, Brawlers_joués, Points_gagnés_rank_total, Points_perdus_rank_total, Rang_gagnés)
VALUES
(1, 60, 'Solo Showdown', 30, 15, 'Shelly, Colt', 200, 100, 1),
(2, 45, 'Gem Grab', 25, 10, 'El Primo, Rico', 150, 80, 1),
(3, 90, 'Brawl Ball', 40, 20, 'Poco, Spike', 300, 150, 2),
(4, 30, 'Heist', 15, 5, 'Sandy, Mortis', 100, 50, 0),
(5, 120, 'Bounty', 50, 30, 'Leon, Amber', 400, 200, 2),
(6, 75, 'Duo Showdown', 35, 18, 'El Primo, Rico', 250, 130, 1),
(7, 50, 'Hot Zone', 20, 10, 'Poco, Mortis', 180, 90, 1),
(8, 40, 'Knockout', 28, 12, 'Spike, Colt', 220, 110, 1),
(9, 110, 'Siege', 45, 25, 'Leon, Shelly', 350, 180, 2),
(10, 65, 'Gem Grab', 30, 15, 'Rico, Sandy', 210, 100, 1);


INSERT INTO ModeJeu (IdMode, Nom_mode, Objectif, Nom_map, Popularite)
VALUES
(1, 'Solo Showdown', 'Survivre', 'Cavern Churn', 80),
(2, 'Gem Grab', 'Collecter des gemmes', 'Hard Rock Mine', 85),
(3, 'Brawl Ball', 'Marquer des buts', 'Pinball Dreams', 75),
(4, 'Heist', 'Casser le coffre', 'Bandit Stash', 70),
(5, 'Bounty', 'Éliminer l’ennemi', 'Canal Grande', 65),
(6, 'Duo Showdown', 'Survivre en duo', 'Scorched Stone', 90),
(7, 'Hot Zone', 'Contrôler la zone', 'Ring of Fire', 60),
(8, 'Knockout', 'Éliminer l’équipe', 'Gold Arm Gulch', 55),
(9, 'Siege', 'Contrôler le robot', 'Factory Rush', 50),
(10, 'Big Game', 'Affronter le boss', 'Royal Runway', 45);



-- Insertions cohérentes avec des corrélations entre performances, popularité et date de sortie
INSERT INTO PerfPersonnage (IdBrawler, IdJoueur, IdSession, IdMode, IdDate, Taux_Victoire, Frequence_Utilisation, Degats_Totaux, Pick_Rate, Taux_mvp, Resultat_match, Win_streak, Taux_ban)
VALUES
(6, 1, 1, 1, 1, 85, 15, 50000, 30, 70, 'Victoire', 5, 20),  -- Spike (Légendaire), très performant, taux de ban élevé
(9, 2, 2, 2, 2, 90, 20, 60000, 35, 80, 'Victoire', 7, 25),  -- Leon (Légendaire), pick rate élevé, OP après sa sortie
(3, 3, 3, 3, 3, 60, 8, 30000, 18, 40, 'Victoire', 2, 10),   -- El Primo (Rare), pick rate modéré, mais fort en début de partie
(10, 4, 4, 4, 4, 75, 10, 45000, 25, 60, 'Victoire', 4, 15), -- Amber (Mythique), très performant, date de sortie récente
(5, 5, 5, 5, 5, 55, 5, 25000, 12, 35, 'Défaite', 1, 5),     -- Poco (Rare), faible pick rate, mais bon support
(2, 6, 6, 6, 6, 50, 6, 28000, 15, 25, 'Défaite', 0, 8),     -- Colt (Commune), pick rate moyen, faible win rate
(4, 7, 7, 7, 7, 65, 9, 35000, 20, 45, 'Victoire', 3, 12),   -- Rico (Super Rare), performant en cartes à longue distance
(1, 8, 8, 8, 8, 45, 4, 20000, 10, 20, 'Défaite', 0, 5),     -- Shelly (Commune), souvent utilisée par les débutants
(7, 9, 9, 9, 9, 80, 12, 40000, 28, 70, 'Victoire', 6, 18),  -- Sandy (Légendaire), haut pick rate, bon win streak
(8, 10, 10, 10, 10, 95, 25, 65000, 40, 90, 'Victoire', 10, 30); -- Mortis (Épique), très populaire et performant, OP en mode compétitif



