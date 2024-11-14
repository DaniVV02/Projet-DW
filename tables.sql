-- Table des faits Achats
CREATE TABLE Achats (
    IdProduit NUMBER,
    IdJoueurs NUMBER,
    IdEvenement NUMBER,
    IdPromotion NUMBER,
    IdDate NUMBER,
    IdSession NUMBER,
    Montant_achat NUMBER(10, 2), -- Montant total de l'achat
    Nombre_achats NUMBER,
    Type_achat VARCHAR2(50),
    CONSTRAINT fk_achats_joueurs FOREIGN KEY (IdJoueurs) REFERENCES Joueurs(IdJoueurs),
    CONSTRAINT fk_achats_evenement FOREIGN KEY (IdEvenement) REFERENCES Evenement(IdEvenement),
    CONSTRAINT fk_achats_produit FOREIGN KEY (IdProduit) REFERENCES Produit(IdProduit),
    CONSTRAINT fk_achats_date FOREIGN KEY (IdDate) REFERENCES Date_Dim(IdDate),
    CONSTRAINT fk_achats_promotion FOREIGN KEY (IdPromotion) REFERENCES Promotion(IdPromotion)
);


-- Dimension Joueurs
CREATE TABLE Joueurs (
    IdJoueurs NUMBER PRIMARY KEY,
    Age NUMBER,
    Region VARCHAR2(50),
    Date_Inscription DATE,
    Type_Joueur VARCHAR2(50)
);

-- Dimension Évènement
CREATE TABLE Evenement (
    IdEvenement NUMBER PRIMARY KEY,
    Type_evenement VARCHAR2(50),
    Duree NUMBER, -- Durée en minutes ou en heures
    Description VARCHAR2(255),
    Recompense_possible VARCHAR2(255)
);

-- Dimension Produit
CREATE TABLE Produit (
    IdProduit NUMBER PRIMARY KEY,
    Nom_Produit VARCHAR2(100),
    Prix_unitaire NUMBER(10, 2), -- Prix unitaire avec 2 décimales
    Categorie VARCHAR2(50),
    Popularite NUMBER,
    Type_produit VARCHAR2(50)
);

-- Dimension Date
CREATE TABLE Date_Dim (
    IdDate NUMBER PRIMARY KEY,
    Date DATE,
    Jour NUMBER,
    Mois NUMBER,
    Annee NUMBER,
    Periode_vacances VARCHAR2(50),
    Saison VARCHAR2(50)
);

-- Dimension Offre/Promotion
CREATE TABLE Promotion (
    IdPromotion NUMBER PRIMARY KEY,
    TypeOffre VARCHAR2(50),
    Cout_Promotion NUMBER(10, 2),
    Remise_Promotion NUMBER(5, 2), -- Remise en pourcentage
    Duree NUMBER, -- Durée en jours
    Frequence VARCHAR2(50),
    Popularite NUMBER
);

--------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE PerfPersonnage (
    IdBrawler NUMBER,
    IdJoueur NUMBER,
    IdSession NUMBER,
    IdMode NUMBER,
    IdDate NUMBER,
    Taux_Victoire NUMBER,
    Frequence_Utilisation NUMBER,
    Degats_Totaux NUMBER,
    Pick_Rate NUMBER,
    Taux_mvp NUMBER,
    Resultat_match VARCHAR2(50),
    Win_streak NUMBER,
    Taux_ban NUMBER,
    CONSTRAINT fk_perf_brawler FOREIGN KEY (IdBrawler) REFERENCES Brawler(IdBrawler),
    CONSTRAINT fk_perf_joueur FOREIGN KEY (IdJoueur) REFERENCES Joueur(IdJoueur),
    CONSTRAINT fk_perf_session FOREIGN KEY (IdSession) REFERENCES Session(IdSession),
    CONSTRAINT fk_perf_mode FOREIGN KEY (IdMode) REFERENCES ModeJeu(IdMode),
    CONSTRAINT fk_perf_date FOREIGN KEY (IdDate) REFERENCES Date(IdDate)
);
--Dimension Brawler
CREATE TABLE Brawler (
    IdBrawler NUMBER PRIMARY KEY,
    Nom VARCHAR2(50),
    Rarete VARCHAR2(50),
    Role VARCHAR2(50),
    Date_Sortie DATE,
    Points_de_vie NUMBER,
    Vitesse NUMBER,
    Trait VARCHAR2(50),
    Attaque_Par_Sec NUMBER,
    Rang_attaque NUMBER,
    Vitesse_recharge NUMBER,
    Degats_ulti NUMBER,
    Rang_ulti NUMBER
);
--Dimension Session
CREATE TABLE Session (
    IdSession NUMBER PRIMARY KEY,
    Duree_Session NUMBER,
    Modes_Jeu_Joues VARCHAR2(50),
    Trophées_gagnés_total NUMBER,
    Trophées_perdus_total NUMBER,
    Brawlers_joués VARCHAR2(50),
    Points_gagnés_rank_total NUMBER,
    Points_perdus_rank_total NUMBER,
    Rang_gagnés NUMBER
);
--Dimension Date
CREATE TABLE Date (
    IdDate NUMBER PRIMARY KEY,
    Date DATE,
    Jour NUMBER,
    Mois NUMBER,
    Annee NUMBER,
    Periode_vacances VARCHAR2(50),
    Saison VARCHAR2(50)
);
--Dimension ModeJeu
CREATE TABLE ModeJeu (
    IdMode NUMBER PRIMARY KEY,
    Nom_mode VARCHAR2(50),
    Objectif VARCHAR2(50),
    Nom_map VARCHAR2(50),
    Popularite NUMBER
);
--Dimension Joueur
CREATE TABLE Joueur (
    IdJoueur NUMBER PRIMARY KEY,
    TypeJoueur VARCHAR2(50),
    Trophées NUMBER,
    Rang_actuel NUMBER,
    Rang_max NUMBER,
    Date_inscription DATE,
    Classement_local NUMBER,
    Classement_mondial NUMBER
);

