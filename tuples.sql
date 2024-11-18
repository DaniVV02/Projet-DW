-- Insertion dans la table Joueurs
INSERT INTO Joueurs VALUES (1, 22, 'Europe', DATE '2023-01-10', 'Joueur Actif');
INSERT INTO Joueurs VALUES (2, 18, 'Asie', DATE '2024-05-20', 'Joueur Occasionnel');
INSERT INTO Joueurs VALUES (3, 30, 'Amérique du Nord', DATE '2022-09-15', 'Joueur Actif');
INSERT INTO Joueurs VALUES (4, 25, 'Europe', DATE '2023-03-05', 'Joueur Régulier');
INSERT INTO Joueurs VALUES (5, 35, 'Amérique du Sud', DATE '2021-07-15', 'Joueur Payant');
INSERT INTO Joueurs VALUES (6, 28, 'Afrique', DATE '2022-12-10', 'Joueur Occasionnel');
INSERT INTO Joueurs VALUES (7, 19, 'Océanie', DATE '2024-06-01', 'Nouveau Joueur');
INSERT INTO Joueurs VALUES (8, 21, 'Amérique du Nord', DATE '2024-01-12', 'Joueur Actif');
INSERT INTO Joueurs VALUES (9, 33, 'Asie', DATE '2020-10-20', 'Joueur Payant');
INSERT INTO Joueurs VALUES (10, 40, 'Europe', DATE '2019-05-30', 'Joueur Régulier');



-- Insertion dans la table Evenement
INSERT INTO Evenement VALUES (1, 'Tournoi', 120, 'Compétition internationale', 'Skin exclusif');
INSERT INTO Evenement VALUES (2, 'Mise à jour', 48, 'Nouveau contenu ajouté', 'Double XP');
INSERT INTO Evenement VALUES (3, 'Challenge Spécial', 72, 'Défi avec récompenses spéciales', 'Pièces d’or');
INSERT INTO Evenement VALUES (4, 'Offre Spéciale Noël', 24, 'Offre limitée pendant Noël', 'Gemme doublée');
INSERT INTO Evenement VALUES (5, 'Double XP Week-End', 48, 'XP doublée pendant le week-end', 'XP supplémentaire');
INSERT INTO Evenement VALUES (6, 'Mise à jour Majeure', 72, 'Nouveaux personnages ajoutés', 'Nouveaux skins');
INSERT INTO Evenement VALUES (7, 'Championnat', 144, 'Compétition mondiale', 'Grosse récompense en gemmes');
INSERT INTO Evenement VALUES (8, 'Anniversaire du jeu', 24, 'Célébration de l’anniversaire du jeu', 'Cadeaux gratuits');
INSERT INTO Evenement VALUES (9, 'Fin de Saison', 120, 'Récompenses de fin de saison', 'Skins et gemmes');
INSERT INTO Evenement VALUES (10, 'Lancement de Nouvelle Carte', 48, 'Nouvelle carte disponible', 'Récompense : boost XP');



-- Insertion dans la table Produit
INSERT INTO Produit VALUES (1, 'Pack de gemmes', 9.99, 'Devise virtuelle', 90);
INSERT INTO Produit VALUES (2, 'Skin légendaire', 14.99, 'Cosmétique', 75);
INSERT INTO Produit VALUES (3, 'Booster XP', 4.99, 'Bonus', 60);
INSERT INTO Produit VALUES (4, 'Mega Boîte', 19.99, 'Booster', 85);
INSERT INTO Produit VALUES (5, 'Mini Pack de gemmes', 4.99, 'Devise virtuelle', 60);
INSERT INTO Produit VALUES (6, 'Skin Rare', 7.99, 'Cosmétique', 50);
INSERT INTO Produit VALUES (7, 'Offre de Débutant', 2.99, 'Pack d’entrée', 70);
INSERT INTO Produit VALUES (8, 'Pack d’or', 29.99, 'Devise virtuelle', 90);
INSERT INTO Produit VALUES (9, 'Power Booster', 5.99, 'Bonus', 65);
INSERT INTO Produit VALUES (10, 'Skin Épique', 12.99, 'Cosmétique', 80);



-- Insertion dans la table Promotion
INSERT INTO Promotion VALUES (1, 'Offre Spéciale', 100, 20.00, 7, 'Hebdomadaire', 80);
INSERT INTO Promotion VALUES (2, 'Black Friday', 500, 50.00, 3, 'Annuel', 95);
INSERT INTO Promotion VALUES (3, 'Promotion de Printemps', 200, 15.00, 14, 'Saisonnière', 75);
INSERT INTO Promotion VALUES (4, 'Offre Weekend', 50, 10.00, 2, 'Hebdomadaire', 85);
INSERT INTO Promotion VALUES (5, 'Promo Été', 150, 25.00, 10, 'Saisonnière', 70);
INSERT INTO Promotion VALUES (6, 'Offre Noël', 300, 30.00, 5, 'Annuel', 95);
INSERT INTO Promotion VALUES (7, 'Promotion Flash', 50, 5.00, 1, 'Ponctuelle', 60);
INSERT INTO Promotion VALUES (8, 'Black Friday Boost', 500, 40.00, 3, 'Annuel', 98);
INSERT INTO Promotion VALUES (9, 'Offre Saint-Valentin', 100, 20.00, 7, 'Annuel', 85);
INSERT INTO Promotion VALUES (10, 'Promo Nouvelle Année', 250, 35.00, 4, 'Annuel', 90);



-- Insertion dans la table Date_Achats
INSERT INTO Date_Achats VALUES (1, TO_DATE('2024-11-10','YYYY-MM-DD'), 10, 11, 2024, 'Non', 'Automne');
INSERT INTO Date_Achats VALUES (2, TO_DATE ('2024-12-25', 'YYYY-MM-DD'), 25, 12, 2024, 'Oui', 'Hiver');
INSERT INTO Date_Achats VALUES (3, TO_DATE ('2024-01-01', 'YYYY-MM-DD') ,1, 1, 2024, 'Oui', 'Hiver');
INSERT INTO Date_Achats VALUES (4, TO_DATE ('2024-07-15', 'YYYY-MM-DD') ,15, 7, 2024, 'Non', 'Ete');
INSERT INTO Date_Achats VALUES (5, TO_DATE ('2024-03-20', 'YYYY-MM-DD'),20, 3, 2024, 'Non', 'Printemps');
INSERT INTO Date_Achats VALUES (6, TO_DATE ('2024-09-05', 'YYYY-MM-DD'),5, 9, 2024, 'Non', 'Automne');
INSERT INTO Date_Achats VALUES (7, TO_DATE ('2024-12-24', 'YYYY-MM-DD'),24, 12, 2024, 'Oui', 'Hiver');
INSERT INTO Date_Achats VALUES (8, TO_DATE ('2024-08-10', 'YYYY-MM-DD'),10, 8, 2024, 'Non', 'Ete');
INSERT INTO Date_Achats VALUES (9, TO_DATE ('2024-05-01', 'YYYY-MM-DD'),1, 5, 2024, 'Non', 'Printemps');
INSERT INTO Date_Achats VALUES (10, TO_DATE ('2024-11-01', 'YYYY-MM-DD'),1, 11, 2024, 'Non', 'Automne');



-- Insertion dans la table Session
INSERT INTO Session_Achats VALUES (1, 180, TO_DATE('2024-11-10 14:00','YYYY-MM-DD HH24:MI'), 'Session Longue', 100, 4, 600, 50, 2000, 0);
INSERT INTO Session_Achats VALUES (2, 45, TO_DATE( '2024-11-10 18:00', 'YYYY-MM-DD HH24:MI'), 'Session Courte', 20, 0, 150, 12, 0, 0);
INSERT INTO Session_Achats VALUES (3, 90, TO_DATE( '2024-11-10 19:00', 'YYYY-MM-DD HH24:MI'), 'Session Moyenne', 50, 2, 150, 12, 1500, 0);
INSERT INTO Session_Achats VALUES (4, 60, TO_DATE( '2024-11-11 12:00','YYYY-MM-DD HH24:MI'), 'Session Courte',30, 2, 150, 30, 0, 0);
INSERT INTO Session_Achats VALUES (5, 240, TO_DATE( '2024-11-12 14:00','YYYY-MM-DD HH24:MI'), 'Session Très Longue',150, 20, 500, 12, 3000, 0);
INSERT INTO Session_Achats VALUES (6, 30, TO_DATE( '2024-11-12 20:00', 'YYYY-MM-DD HH24:MI'), 'Session Très Courte', 15, 1, 50, 0, 100, 0);
INSERT INTO Session_Achats VALUES (7, 150, TO_DATE( '2024-11-13 16:00','YYYY-MM-DD HH24:MI'),  'Session Longue', 60, 2, 200, 12, 1000, 0);
INSERT INTO Session_Achats VALUES (8, 75, TO_DATE( '2024-11-13 10:00', 'YYYY-MM-DD HH24:MI'),'Session Moyenne', 30, 1, 150, 12, 0, 0);
INSERT INTO Session_Achats VALUES (9, 20, TO_DATE( '2024-11-13 21:00', 'YYYY-MM-DD HH24:MI'),'Session Flash', 5, 0, 20, 8, 0,0);
INSERT INTO Session_Achats VALUES (10, 120, TO_DATE( '2024-11-14 09:00', 'YYYY-MM-DD HH24:MI'), 'Session Longue', 50, 5, 250, 0, 600,0);



-- Insertion dans la table Temps
INSERT INTO Temps VALUES (1, TO_DATE('2024-11-10 14:00', 'YYYY-MM-DD HH24:MI'), 'PM');
INSERT INTO Temps VALUES (2, TO_DATE( '2024-11-10 18:00', 'YYYY-MM-DD HH24:MI'), 'PM');
INSERT INTO Temps VALUES (3, TO_DATE( '2024-11-11 12:00', 'YYYY-MM-DD HH24:MI'), 'PM');
INSERT INTO Temps VALUES (4, TO_DATE( '2024-11-12 14:00', 'YYYY-MM-DD HH24:MI'), 'PM');
INSERT INTO Temps VALUES (5, TO_DATE( '2024-11-12 20:00', 'YYYY-MM-DD HH24:MI'), 'PM');
INSERT INTO Temps VALUES (6, TO_DATE( '2024-11-13 16:00', 'YYYY-MM-DD HH24:MI'), 'PM');
INSERT INTO Temps VALUES (7, TO_DATE( '2024-11-13 10:00', 'YYYY-MM-DD HH24:MI'), 'AM');
INSERT INTO Temps VALUES (8, TO_DATE( '2024-11-13 21:00', 'YYYY-MM-DD HH24:MI'), 'PM');
INSERT INTO Temps VALUES (9, TO_DATE( '2024-11-14 09:00', 'YYYY-MM-DD HH24:MI'), 'AM');
INSERT INTO Temps VALUES (10, TO_DATE( '2024-11-14 11:00', 'YYYY-MM-DD HH24:MI'), 'AM');


-- Insertion dans la table TypeProduit
INSERT INTO TypeProduit VALUES (1, 'Devise Virtuelle');
INSERT INTO TypeProduit VALUES (2, 'Cosmétique');
INSERT INTO TypeProduit VALUES (3, 'Bonus');
INSERT INTO TypeProduit VALUES (4, 'Offre Pack');
INSERT INTO TypeProduit VALUES (5, 'Devise Complémentaire');
INSERT INTO TypeProduit VALUES (6, 'Item de Collection');
INSERT INTO TypeProduit VALUES (7, 'Pack Débutant');
INSERT INTO TypeProduit VALUES (8, 'Boîte à Récompenses');
INSERT INTO TypeProduit VALUES (9, 'Pack Booster');
INSERT INTO TypeProduit VALUES (10, 'Skin Spécial');


-- Insertion dans la table Achats

INSERT INTO Achats VALUES (1, 1, 1, 1, 1, 1, 1, 1, 19.99, 2, 'Booster');
INSERT INTO Achats VALUES (2, 2, 2, 2, 2, 2, 2, 2, 4.99, 1, 'Devise Virtuelle');
INSERT INTO Achats VALUES (3, 3, 3, 3, 3, 3, 3, 3, 29.99, 3, 'Cosmétique');
INSERT INTO Achats VALUES (4, 4, 4, 4, 4, 4, 4, 4, 7.99, 1, 'Skin Rare');
INSERT INTO Achats VALUES (5, 5, 5, 5, 5, 5, 5, 5, 2.99, 2, 'Pack Débutant');
INSERT INTO Achats VALUES (6, 6, 6, 6, 6, 6, 6, 6, 5.99, 1, 'Power Booster');
INSERT INTO Achats VALUES (7, 7, 7, 7, 7, 7, 7, 7, 12.99, 1, 'Skin Épique');
INSERT INTO Achats VALUES (8, 8, 8, 8, 8, 8, 8, 8, 19.99, 2, 'Mega Boîte');
INSERT INTO Achats VALUES (9, 9, 9, 9, 9, 9, 9, 9, 4.99, 1, 'Mini Pack de Gemmes');
INSERT INTO Achats VALUES (10, 10, 10, 10, 10, 10, 10, 10, 29.99, 3, 'Pack d’Or');

-- INSERT INTO Achats VALUES (1, 1, 1, 1, 1, 1, 1, 1, 29.97, 3, 'Achat Pack Gemmes pendant Tournoi');
--INSERT INTO Achats VALUES (2, 1, 2, 2, 1, 1, 2, 2, 14.99, 1, 'Achat Skin Légendaire pendant Black Friday');
--INSERT INTO Achats VALUES (3, 2, 2, 2, 2, 2, 3, 2, 9.99, 2, 'Achat Booster XP pendant vacances');
--INSERT INTO Achats VALUES (1, 3, 1, 1, 1, 1, 1, 1, 19.98, 2, 'Achat Pack Gemmes par joueur actif lors du Tournoi');
--INSERT INTO Achats VALUES (3, 3, 2, NULL, 1, 1, 3, 1, 4.99, 1, 'Achat Booster sans promotion');



----------  DATA MART 2 -------------------------

INSERT INTO Brawler VALUES (1, 'Shelly', 'Commune', 'Combattant', DATE '2017-06-15', 7400, 'Rapide', NULL, 3000, 'Long', 'Normal', 5760, 'Long');
INSERT INTO Brawler VALUES (2, 'Colt', 'Rare', 'Tireur', DATE '2017-06-15', 5600, 'Normal', NULL, 4320, 'Long', 'Rapide', 7680, 'Tres long');
INSERT INTO Brawler VALUES (3, 'El Primo', 'Super Rare', 'Tank', DATE '2017-08-06', 12000, 'Rapide', 'Charge ulti des degats recus', 3040, 'Court', 'Tres rapide', 1920, 'Long');
INSERT INTO Brawler VALUES (4, 'Barley', 'Rare', 'Lanceur', DATE '2017-06-15', 4800, 'Normal', 'Degats par seconde', 1600, 'Long', 'Lente', 1600, 'Tres long');
INSERT INTO Brawler VALUES (5, 'Crow', 'Légendaire', 'Assassin', DATE '2017-12-21', 4800, 'Tres rapide', 'Empoisonnement', 1920, 'Long', 'Rapide', 3000, 'Long');
INSERT INTO Brawler VALUES (6, 'Spike', 'Légendaire', 'Lanceur', DATE '2017-06-15', 5600, 'Normal', 'Attaque en épine', 1080, 'Long', 'Lente', 800, 'Long');
INSERT INTO Brawler VALUES (7, 'Leon', 'Légendaire', 'Assassin', DATE '2018-11-21', 6800, 'Tres rapide', 'Invisibilité pendant ulti', 3840, 'Tres long', 'Normal', 0, 'Duree de 6 secondes');
INSERT INTO Brawler VALUES (8, 'Sandy', 'Legendaire', 'Contrôleur', DATE '2019-09-18', 7600, 'Rapide', 'Invisibilite groupale pendant ulti', 1800, 'Normal', 'Normal', 0, 'Long');
INSERT INTO Brawler VALUES (9, 'Amber', 'Legendaire', 'Combattant', DATE '2020-10-23', 6400, 'Normal', NULL, 4200, 'Long', 'Tres rapide', 3840, 'Long');
INSERT INTO Brawler VALUES (10, 'Belle', 'Epique', 'Sniper', DATE '2021-04-07', 5200, 'Normal', 'Projectile rebondissant avec moitie degats', 2080, 'Tres long', 'Rapide', 1000, 'Tres long');
INSERT INTO Brawler VALUES (11, 'Willow', 'Mythique', 'Controleur', DATE '2023-03-28', 5600, 'Normal', 'Empoisonnement et control de brawler ennemi pendant ulti', 800, 'Long', 'Lent', 0, 'Long et duree de 4 secondes');
INSERT INTO Brawler VALUES (12, 'Larry & Lawrie', 'Mythique', 'Controleur', DATE '2023-03-28', 6000, 'Normal', 'Attaque deux fois et invoque un robot pour son ulti', 1600, 'Long', 'Lent', 1400, '6000 de vie pour le robot');
INSERT INTO Brawler VALUES (13, 'Kenji', 'Legendaire', 'Assassin', DATE '2024-10-06', 9000, 'Rapide', 'Attaque de deux façons différentes', 2500, 'Court', 'Lent', 2500, 'Tres long, attaque en croix');


INSERT INTO Session_Perf VALUES (1, 45, TO_DATE('2024-11-10 14:00','YYYY-MM-DD HH24:MI'), 'Ladder', 30, 1,  300, 16, 0,0);
INSERT INTO Session_Perf VALUES (2, 30, TO_DATE( '2024-11-10 18:00', 'YYYY-MM-DD HH24:MI'),'Ladder', 15, 0, 50, 8,0,0);
INSERT INTO Session_Perf VALUES (3, 60, TO_DATE( '2024-11-12 14:00','YYYY-MM-DD HH24:MI'),'Rank',  20, 3, 0, 0, 2000, 100);
INSERT INTO Session_Perf VALUES (4, 20, TO_DATE( '2024-11-13 10:00', 'YYYY-MM-DD HH24:MI'),'Rank',  5, 0, 0,0, 200, 300);
INSERT INTO Session_Perf VALUES (5, 50, TO_DATE( '2024-11-13 16:00','YYYY-MM-DD HH24:MI'),'Rank', 22, 1, 0, 0, 1200,0);
INSERT INTO Session_Perf VALUES (6, 35, TO_DATE( '2022-07-03 17:05','YYYY-MM-DD HH24:MI'),'Rank et Ladder', 12, 0, 8, 60, 200, 54);
INSERT INTO Session_Perf VALUES (7, 55, TO_DATE( '2024-11-13 16:50','YYYY-MM-DD HH24:MI'),'Ladder',  40, 2, 300,0,500, 0);
INSERT INTO Session_Perf VALUES (8, 25, TO_DATE( '2024-11-10 19:10', 'YYYY-MM-DD HH24:MI'),'Rank et Ladder',  15, 0, 50, 0, 180, 8);
INSERT INTO Session_Perf VALUES (9, 40, TO_DATE( '2024-03-08 19:00', 'YYYY-MM-DD HH24:MI'),'Rank', 16, 0, 0, 0, 250,220);
INSERT INTO Session_Perf VALUES (10, 70 ,TO_DATE( '2024-11-13 21:00', 'YYYY-MM-DD HH24:MI'), 'Rank et Ladder', 60, 4, 160, 8, 1200, 1000);


INSERT INTO Date_Perf VALUES (1, DATE '2021-01-01', 1, 01, 2021, 'Non', 'Hiver');
INSERT INTO Date_Perf VALUES (2, DATE '2022-06-02', 2, 06, 2022, 'Oui', 'Ete');
INSERT INTO Date_Perf VALUES (3, DATE '2022-07-03', 3, 07, 2022, 'Oui', 'Ete');
INSERT INTO Date_Perf VALUES (4, DATE '2022-11-04', 4, 11, 2022, 'Non', 'Automne');
INSERT INTO Date_Perf VALUES (5, DATE '2023-04-05', 5, 04, 2023, 'Non', 'Printemps');
INSERT INTO Date_Perf VALUES (6, DATE '2023-05-06', 6, 05, 2023, 'Non', 'Printemps');
INSERT INTO Date_Perf VALUES (7, DATE '2023-06-07', 7, 06, 2023, 'Oui', 'Ete');
INSERT INTO Date_Perf VALUES (8, DATE '2024-03-08', 8, 03, 2024, 'Non', 'Hiver');
INSERT INTO Date_Perf VALUES (9, DATE '2024-08-09', 9, 08, 2024, 'Oui', 'Ete');
INSERT INTO Date_Perf VALUES (10, DATE '2024-11-13', 13, 11, 2024, 'Non', 'Automne');
INSERT INTO Date_Perf VALUES (11, DATE '2024-11-10', 10, 11, 2024, 'Non', 'Automne');




INSERT INTO ModeJeu VALUES (1, 'Showdown', 'Survivre', 'Skull Creek', 0.85);
INSERT INTO ModeJeu VALUES (2, 'Brawl Ball', 'Marquer des buts', 'Super Stadium', 0.70);
INSERT INTO ModeJeu VALUES (3, 'Heist', 'Protéger le coffre', 'Safe Zone', 0.60);
INSERT INTO ModeJeu VALUES (4, 'Gem Grab', 'Collecter des gemmes', 'Crystal Arcade', 0.75);
INSERT INTO ModeJeu VALUES (5, 'Bounty', 'Éliminer les ennemis', 'Snake Prairie', 0.65);
INSERT INTO ModeJeu VALUES (6, 'Hot Zone', 'Contrôler la zone', 'Split', 0.50);
INSERT INTO ModeJeu VALUES (7, 'Knockout', 'Éliminer tous les adversaires', 'Goldarm Gulch', 0.65);
INSERT INTO ModeJeu VALUES (8, 'Duo Showdown', 'Survivre en duo', 'Double Trouble', 0.80);
INSERT INTO ModeJeu VALUES (9, 'Ranked', 'Compétitif', 'Random Map', 0.90);


INSERT INTO NiveauJoueur VALUES (1, 'Joueur Débutant', 1);
INSERT INTO NiveauJoueur VALUES (2, 'Joueur Intermédiaire', 2);
INSERT INTO NiveauJoueur VALUES (3, 'Joueur Avancé', 3);
INSERT INTO NiveauJoueur VALUES (4, 'Joueur Expert', 4);
INSERT INTO NiveauJoueur VALUES (5, 'Joueur Maître', 5);


-- PerfPersonnage : performances des brawlers par session, joueur, mode et date
INSERT INTO PerfPersonnage VALUES (1, 4, 6, 4, 3, 0.1, 20, 200000, 0.22, 0.0, 0); --ok shelly session 6
INSERT INTO PerfPersonnage VALUES (2, 2, 9, 9, 8, 0.6, 6, 240000, 0.37, 0.0, 0); --ok colt session 9
INSERT INTO PerfPersonnage VALUES (3, 2, 9, 9, 8, 0.5, 10, 450000, 0.63, 0.0, 0); --ok primo session 9
INSERT INTO PerfPersonnage VALUES (4, 5, 1, 2, 11, 1.0, 20, 1000000, 0.67, 0.0, 0); -- ok barley session 1
INSERT INTO PerfPersonnage VALUES (5, 5, 1, 3, 11, 0.6, 5, 150000, 0.17, 0.0, 0); -- ok crow session 1
INSERT INTO PerfPersonnage VALUES (6, 5, 1, 6, 11, 0.75, 5, 25000, 0.17, 0.0, 0); -- ok spike session 1
INSERT INTO PerfPersonnage VALUES (7, 3, 6, 2, 7, 0.85, 0.40, 60000, 0.45, 0.01); -- session 6
INSERT INTO PerfPersonnage VALUES (8, 1, 8, 3, 8, 0.40, 0.10, 15000, 0.10, 0.12); -- session 6

INSERT INTO PerfPersonnage VALUES (7, 1, 10, 2, 10, 0.5, 2, 50000, 0.09, 0.0, 0); -- ok leon session 10 brawl ball
INSERT INTO PerfPersonnage VALUES (10, 1, 10, 5, 10, 0.5, 2, 70000, 1.0, 0.0, 0); -- ok belle session 10 bounty
INSERT INTO PerfPersonnage VALUES (1, 1, 10, 7, 10, 0.0, 2, 40000, 1.0, 0.0, 0); -- ok shelly session 10 knockout
INSERT INTO PerfPersonnage VALUES (2, 1, 10, 8, 10, 0.5, 2, 65000, 1.0, 0.0, 0); -- ok colt session 10 duo showdown
INSERT INTO PerfPersonnage VALUES (4, 1, 10, 4, 10, 1.0, 2, 50000, 0.16, 0.0, 0); -- ok barley session 10 gem grab
INSERT INTO PerfPersonnage VALUES (13, 1, 10, 2, 10, 0.9, 20, 1100000, 0.6, 0.0,0); -- ok kenji session 10 brawl ball
INSERT INTO PerfPersonnage VALUES (13, 1, 10, 4, 10, 1.0, 10, 550000, 0.6, 0.0,0); -- ok kenji session 10 gem grab
INSERT INTO PerfPersonnage VALUES (13, 1, 10, 9, 10, 1.0, 6, 250000, 1.0, 0.0,0); -- session 10 rank pas banni
INSERT INTO PerfPersonnage VALUES (13, 1, 10, 9, 10, NULL,NULL , NULL, NULL, 0.7,1); -- ok kenji session 10 banni
INSERT INTO PerfPersonnage VALUES (9, 1, 10, 9, 10, 0.14,14 , 100000, 0.28, 0.0,0); -- ok amber session 10 quand kenji banni



INSERT INTO PerfPersonnage VALUES (13, 5, 10, 2, 1, 0.85, 0.80, 80000, 0.22, 0.05); -- session 8
INSERT INTO PerfPersonnage VALUES (13, 5, 10, 2, 1, 0.85, 0.80, 80000, 0.22, 0.05); -- session 8


INSERT INTO PerfPersonnage VALUES (12, 1, 7, 2, 10, 1.0, 30, 2400000, 0.75, 1.0, 0); --ok Larry session 7
INSERT INTO PerfPersonnage VALUES (12, 1, 7, 2, 10, 1.0, 1, 60000, 1.0, 0.0, 0); --ok Larry session 7 rank
INSERT INTO PerfPersonnage VALUES (12 1, 7, 9, 10, NULL, NULL, NULL, NULL, 0.9, 1); --ok Larry session 7 banni

