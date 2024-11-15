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
INSERT INTO Date_Achats VALUES (1, DATE '2024-11-10', 10, 11, 2024, 'Non', 'Automne');
INSERT INTO Date_Achats VALUES (2, DATE '2024-12-25', 25, 12, 2024, 'Oui', 'Hiver');
INSERT INTO Date_Achats VALUES (3, DATE '2024-01-01', 1, 1, 2024, 'Oui', 'Hiver');
INSERT INTO Date_Achats VALUES (4, DATE '2024-07-15', 15, 7, 2024, 'Non', 'Été');
INSERT INTO Date_Achats VALUES (5, DATE '2024-03-20', 20, 3, 2024, 'Non', 'Printemps');
INSERT INTO Date_Achats VALUES (6, DATE '2024-09-05', 5, 9, 2024, 'Non', 'Automne');
INSERT INTO Date_Achats VALUES (7, DATE '2024-12-24', 24, 12, 2024, 'Oui', 'Hiver');
INSERT INTO Date_Achats VALUES (8, DATE '2024-08-10', 10, 8, 2024, 'Non', 'Été');
INSERT INTO Date_Achats VALUES (9, DATE '2024-05-01', 1, 5, 2024, 'Non', 'Printemps');
INSERT INTO Date_Achats VALUES (10, DATE '2024-11-01', 1, 11, 2024, 'Non', 'Automne');



-- Insertion dans la table Session
INSERT INTO Session VALUES (1, 180, DATE '2024-11-10 14:00', DATE '2024-11-10 17:00', 'Session Longue', 10, 3);
INSERT INTO Session VALUES (2, 45, DATE '2024-11-10 18:00', DATE '2024-11-10 18:45', 'Session Courte', 2, 0);
INSERT INTO Session VALUES (3, 90, DATE '2024-11-10 19:00', DATE '2024-11-10 20:30', 'Session Moyenne', 5, 2);
INSERT INTO Session VALUES (4, 60, DATE '2024-11-11 12:00', DATE '2024-11-11 13:00', 'Session Courte', 3, 1);
INSERT INTO Session VALUES (5, 240, DATE '2024-11-12 14:00', DATE '2024-11-12 18:00', 'Session Très Longue', 15, 6);
INSERT INTO Session VALUES (6, 30, DATE '2024-11-12 20:00', DATE '2024-11-12 20:30', 'Session Très Courte', 1, 0);
INSERT INTO Session VALUES (7, 150, DATE '2024-11-13 16:00', DATE '2024-11-13 18:30', 'Session Longue', 8, 3);
INSERT INTO Session VALUES (8, 75, DATE '2024-11-13 10:00', DATE '2024-11-13 11:15', 'Session Moyenne', 4, 1);
INSERT INTO Session VALUES (9, 20, DATE '2024-11-13 21:00', DATE '2024-11-13 21:20', 'Session Flash', 1, 0);
INSERT INTO Session VALUES (10, 120, DATE '2024-11-14 09:00', DATE '2024-11-14 11:00', 'Session Longue', 7, 5);



-- Insertion dans la table Temps
INSERT INTO Temps VALUES (1, DATE '2024-11-10 14:00', 'PM');
INSERT INTO Temps VALUES (2, DATE '2024-11-10 18:00', 'PM');
INSERT INTO Temps VALUES (3, DATE '2024-11-11 12:00', 'PM');
INSERT INTO Temps VALUES (4, DATE '2024-11-12 14:00', 'PM');
INSERT INTO Temps VALUES (5, DATE '2024-11-12 20:00', 'PM');
INSERT INTO Temps VALUES (6, DATE '2024-11-13 16:00', 'PM');
INSERT INTO Temps VALUES (7, DATE '2024-11-13 10:00', 'AM');
INSERT INTO Temps VALUES (8, DATE '2024-11-13 21:00', 'PM');
INSERT INTO Temps VALUES (9, DATE '2024-11-14 09:00', 'AM');
INSERT INTO Temps VALUES (10, DATE '2024-11-14 11:00', 'AM');


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

-- PerfPersonnage : performances des brawlers par session, joueur, mode et date
INSERT INTO PerfPersonnage VALUES (1, 3, 1, 1, 1, 0.65, 0.20, 30000, 0.22, 0.05);
INSERT INTO PerfPersonnage VALUES (2, 2, 2, 2, 2, 0.45, 0.12, 20000, 0.15, 0.10);
INSERT INTO PerfPersonnage VALUES (3, 1, 3, 3, 3, 0.80, 0.35, 50000, 0.40, 0.02);
INSERT INTO PerfPersonnage VALUES (4, 4, 4, 4, 4, 0.30, 0.05, 10000, 0.05, 0.15);
INSERT INTO PerfPersonnage VALUES (5, 5, 5, 5, 5, 0.75, 0.28, 40000, 0.30, 0.03);
INSERT INTO PerfPersonnage VALUES (6, 2, 6, 1, 6, 0.55, 0.18, 25000, 0.20, 0.08);
INSERT INTO PerfPersonnage VALUES (7, 3, 7, 2, 7, 0.85, 0.40, 60000, 0.45, 0.01);
INSERT INTO PerfPersonnage VALUES (8, 1, 8, 3, 8, 0.40, 0.10, 15000, 0.10, 0.12);
INSERT INTO PerfPersonnage VALUES (9, 4, 9, 4, 9, 0.25, 0.03, 8000, 0.03, 0.20);
INSERT INTO PerfPersonnage VALUES (10, 5, 10, 5, 10, 0.90, 0.50, 70000, 0.50, 0.01);

INSERT INTO Brawler VALUES (1, 'Shelly', 'Commune', 'Combattant', DATE '2017-06-15', 3600, 720, 'Vitesse de tir rapide', 5.0, 10, 3.0, 1200, 8);
INSERT INTO Brawler VALUES (2, 'Colt', 'Rare', 'Tireur', DATE '2017-06-15', 2800, 820, 'Vitesse de déplacement rapide', 7.0, 15, 4.5, 1000, 12);
INSERT INTO Brawler VALUES (3, 'El Primo', 'Super Rare', 'Tank', DATE '2017-08-06', 5000, 650, 'Poings puissants', 8.0, 5, 2.0, 2000, 10);
INSERT INTO Brawler VALUES (4, 'Barley', 'Rare', 'Lanceur', DATE '2017-06-15', 2400, 600, 'Attaque à distance', 4.0, 20, 5.0, 1500, 9);
INSERT INTO Brawler VALUES (5, 'Crow', 'Légendaire', 'Assassin', DATE '2017-12-21', 3200, 900, 'Empoisonnement', 6.5, 8, 3.8, 1300, 11);
INSERT INTO Brawler VALUES (6, 'Spike', 'Légendaire', 'Lanceur', DATE '2017-06-15', 3400, 700, 'Attaque en épine', 5.5, 12, 3.5, 1400, 10);
INSERT INTO Brawler VALUES (7, 'Leon', 'Légendaire', 'Assassin', DATE '2018-11-21', 3700, 850, 'Invisibilité', 7.5, 9, 4.0, 1600, 13);
INSERT INTO Brawler VALUES (8, 'Sandy', 'Légendaire', 'Contrôleur', DATE '2019-09-18', 3800, 730, 'Sommeil', 5.0, 10, 3.3, 1100, 7);
INSERT INTO Brawler VALUES (9, 'Amber', 'Mythique', 'Combattant', DATE '2020-10-23', 4100, 800, 'Lance-flammes', 6.0, 6, 4.8, 1500, 12);
INSERT INTO Brawler VALUES (10, 'Belle', 'Chromatique', 'Sniper', DATE '2021-04-07', 3300, 760, 'Projectile rebondissant', 6.8, 14, 3.9, 1350, 11);


INSERT INTO Session_Perf VALUES (1, 45, 'Showdown', 'Shelly', 20, 5, 30, 10, 1);
INSERT INTO Session_Perf VALUES (2, 30, 'Brawl Ball', 'Colt', 15, 10, 20, 5, 0);
INSERT INTO Session_Perf VALUES (3, 60, 'Heist', 'El Primo', 25, 5, 40, 15, 2);
INSERT INTO Session_Perf VALUES (4, 20, 'Gem Grab', 'Barley', 10, 5, 15, 7, 0);
INSERT INTO Session_Perf VALUES (5, 50, 'Bounty', 'Crow', 30, 10, 35, 12, 1);
INSERT INTO Session_Perf VALUES (6, 35, 'Siege', 'Spike', 20, 10, 25, 10, 0);
INSERT INTO Session_Perf VALUES (7, 55, 'Hot Zone', 'Leon', 40, 5, 45, 20, 2);
INSERT INTO Session_Perf VALUES (8, 25, 'Knockout', 'Sandy', 15, 10, 18, 8, 1);
INSERT INTO Session_Perf VALUES (9, 40, 'Duo Showdown', 'Amber', 20, 15, 30, 12, 1);
INSERT INTO Session_Perf VALUES (10, 70, 'Power League', 'Belle', 50, 20, 60, 25, 3);


INSERT INTO Date_Perf VALUES (1, DATE '2024-11-01', 1, 11, 2024, 'Non', 'Automne');
INSERT INTO Date_Perf VALUES (2, DATE '2024-11-02', 2, 11, 2024, 'Non', 'Automne');
INSERT INTO Date_Perf VALUES (3, DATE '2024-11-03', 3, 11, 2024, 'Non', 'Automne');
INSERT INTO Date_Perf VALUES (4, DATE '2024-11-04', 4, 11, 2024, 'Non', 'Automne');
INSERT INTO Date_Perf VALUES (5, DATE '2024-11-05', 5, 11, 2024, 'Non', 'Automne');
INSERT INTO Date_Perf VALUES (6, DATE '2024-11-06', 6, 11, 2024, 'Non', 'Automne');
INSERT INTO Date_Perf VALUES (7, DATE '2024-11-07', 7, 11, 2024, 'Non', 'Automne');
INSERT INTO Date_Perf VALUES (8, DATE '2024-11-08', 8, 11, 2024, 'Non', 'Automne');
INSERT INTO Date_Perf VALUES (9, DATE '2024-11-09', 9, 11, 2024, 'Non', 'Automne');
INSERT INTO Date_Perf VALUES (10, DATE '2024-11-10', 10, 11, 2024, 'Non', 'Automne');



INSERT INTO ModeJeu VALUES (1, 'Showdown', 'Survivre', 'Skull Creek', 0.85);
INSERT INTO ModeJeu VALUES (2, 'Brawl Ball', 'Marquer des buts', 'Super Stadium', 0.70);
INSERT INTO ModeJeu VALUES (3, 'Heist', 'Protéger le coffre', 'Safe Zone', 0.60);
INSERT INTO ModeJeu VALUES (4, 'Gem Grab', 'Collecter des gemmes', 'Crystal Arcade', 0.75);
INSERT INTO ModeJeu VALUES (5, 'Bounty', 'Éliminer les ennemis', 'Snake Prairie', 0.65);
INSERT INTO ModeJeu VALUES (6, 'Siege', 'Capturer les boulons', 'Factory Rush', 0.55);
INSERT INTO ModeJeu VALUES (7, 'Hot Zone', 'Contrôler la zone', 'Split', 0.50);
INSERT INTO ModeJeu VALUES (8, 'Knockout', 'Éliminer tous les adversaires', 'Goldarm Gulch', 0.65);
INSERT INTO ModeJeu VALUES (9, 'Duo Showdown', 'Survivre en duo', 'Double Trouble', 0.80);
INSERT INTO ModeJeu VALUES (10, 'Power League', 'Compétitif', 'Random Map', 0.90);


INSERT INTO NiveauJoueur VALUES (1, 'Joueur Débutant', 1);
INSERT INTO NiveauJoueur VALUES (2, 'Joueur Intermédiaire', 2);
INSERT INTO NiveauJoueur VALUES (3, 'Joueur Avancé', 3);
INSERT INTO NiveauJoueur VALUES (4, 'Joueur Expert', 4);
INSERT INTO NiveauJoueur VALUES (5, 'Joueur Maître', 5);
