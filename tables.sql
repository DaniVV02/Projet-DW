PROMPT "Suppression des relations existantes"
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Achats';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Joueurs';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Evenement';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Produit';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Date_Achats';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Promotion';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Temps';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE TypeProduit';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Session_Achats';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;    
/

------------------------------------------------------------------------------------------------

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE PerfPersonnage';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Brawler';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Session_Perf';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Date_Perf';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE ModeJeu';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE NiveauJoueur';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
------------------------------------------------------------------------------------------------

-- Table des faits Achats
CREATE TABLE Achats (
    IdProduit NUMBER,
    IdJoueurs NUMBER,
    IdEvenement NUMBER,
    IdPromotion NUMBER,
    IdDate NUMBER,
    IdSession NUMBER,
    IdTypeProduit NUMBER,
    IdTemps NUMBER,
    Montant_achat NUMBER(10, 2), -- Montant total de l'achat
    Nombre_achats NUMBER,
    Type_achat VARCHAR2(50),
    CONSTRAINT pk_achats PRIMARY KEY (IdProduit, IdJoueurs, IdEvenement, IdPromotion, IdDate, IdSession, IdTypeProduit),
    CONSTRAINT fk_achats_joueurs FOREIGN KEY (IdJoueurs) REFERENCES Joueurs(IdJoueurs),
    CONSTRAINT fk_achats_evenement FOREIGN KEY (IdEvenement) REFERENCES Evenement(IdEvenement),
    CONSTRAINT fk_achats_produit FOREIGN KEY (IdProduit) REFERENCES Produit(IdProduit),
    CONSTRAINT fk_achats_date FOREIGN KEY (IdDate) REFERENCES Date_Achats(IdDate),
    CONSTRAINT fk_achats_promotion FOREIGN KEY (IdPromotion) REFERENCES Promotion(IdPromotion),
    CONSTRAINT fk_achats_type_produit FOREIGN KEY (IdTypeProduit) REFERENCES TypeProduit(IdTypeProduit),
    CONSTRAINT fk_achats_temps FOREIGN KEY (IdTemps) REFERENCES Temps(IdTemps)
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
    Popularite NUMBER
);

-- Dimension Date
CREATE TABLE Date_Achats (
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
--Dimension Session
CREATE TABLE Session_Achats (
    IdSession NUMBER PRIMARY KEY,
    Duree NUMBER,
    Heure_debut DATE,
    Heure_fin DATE,
    Type_session VARCHAR2(50),
    Nombre_parties NUMBER,
    Achats_effectues NUMBER
);
--Dimensions Temps
CREATE TABLE Temps (
    IdTemps NUMBER PRIMARY KEY,
    Heure DATE,
    AM_PM_indicator VARCHAR2(50)
);
--Dimension TypeProduit
CREATE TABLE TypeProduit (
    IdTypeProduit NUMBER PRIMARY KEY,
    TypeProduit VARCHAR2(50)
);

--------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE PerfPersonnage (
    IdBrawler NUMBER,
    IdNiveauJoueur NUMBER,
    IdSession NUMBER,
    IdMode NUMBER,
    IdDate NUMBER,
    Taux_Victoire NUMBER,
    Frequence_Utilisation NUMBER,
    Degats_Totaux NUMBER,
    Pick_Rate NUMBER,
    Taux_ban NUMBER,
    CONSTRAINT pk_perf PRIMARY KEY (IdBrawler, IdJoueur, IdSession, IdMode, IdDate),
    CONSTRAINT fk_perf_brawler FOREIGN KEY (IdBrawler) REFERENCES Brawler(IdBrawler),
    CONSTRAINT fk_perf_joueur FOREIGN KEY (IdJoueur) REFERENCES Joueur(IdJoueur),
    CONSTRAINT fk_perf_session FOREIGN KEY (IdSession) REFERENCES Session(IdSession),
    CONSTRAINT fk_perf_mode FOREIGN KEY (IdMode) REFERENCES ModeJeu(IdMode),
    CONSTRAINT fk_perf_date FOREIGN KEY (IdDate) REFERENCES Date(IdDate),
    CONSTRAINT fk_perf_niveaujoueur FOREIGN KEY (IdNiveauJoueur) REFERENCES NiveauJoueur(IdNiveauJoueur)
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
CREATE TABLE Session_Perf (
    IdSession NUMBER PRIMARY KEY,
    Duree_Session NUMBER,
    Modes_Jeu_Joues VARCHAR2(50),
    Brawlers_joués VARCHAR2(50),
    Trophées_gagnés_total NUMBER,
    Trophées_perdus_total NUMBER,
    Points_gagnés_rank_total NUMBER,
    Points_perdus_rank_total NUMBER,
    Rang_gagnés NUMBER
);
--Dimension Date
CREATE TABLE Date_Perf (
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
--Dimension NiveauJoueur
CREATE TABLE NiveauJoueur(
    IdNiveauJoueur NUMBER PRIMARY KEY,
    TypeJoueur VARCHAR2(50),
    NiveauJoueur NUMBER,
);


