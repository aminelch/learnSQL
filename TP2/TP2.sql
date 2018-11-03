/*** CREATION DE TABLE ETUDIANT ***/ 

CREATE TABLE etudiant(
numEtud varchar(10)PRIMARY KEY,
nom varchar(15) NOT NULL,
prenom varchar(15) NOT NULL,
sexe varchar(1) check(sexe in ('m','f')),
statut varchar(1)check(statut in ('n','r','d')),
etat char(1)); 
/*** CREATION DE TABLE MATIERE ***/ 
create table matiere(
codeMat varchar(10),
constraint fk_codeMat primary KEY(codeMat),
libelleMat varchar(50) not null,
coeffMat number);

/*** CREATION DE TABLE EVALUER ***/ 

create table Evaluer(
numEtud varchar(10),
codeMat varchar(10),
Date_eval date default sysdate,
Note number(2) default 0 check(Note between 0 and 20),
primary key(numEtud,codeMat,Date_eval),
foreign key (numEtud) references Etudiant(numEtud) ,
foreign key (codeMat) references Matiere(codeMat) on delete cascade);

/***** INSERTION DE DONNEESS TABLE ETUDIANT ***/ 
insert into etudiant(numEtud,nom,prenom,sexe,statut,etat) values ('1234','ayadi','omar','f','r','c'); 
insert into etudiant(numEtud,nom,prenom,sexe,statut,etat) values ('4643','loukil','soumaya','f','n','c'); 

/***** INSERTION DE DONNEESS TABLE MATIERE ***/
insert into matiere(codeMat,libelleMat,coeffMat) values ('BDniv2','base de donn?es','2'); 
insert into matiere(codeMat,libelleMat,coeffMat) values ('RESniv3','reseau informatique','1');
insert into matiere(codeMat,libelleMat,coeffMat) values ('RESNniv3','reseau neurones','3'); 
 
/***** INSERTION DE DONNEESS TABLE EVALUER***/
insert into evaluer(numEtud,codeMat,date_eval,note) values ('1234','RESniv3',to_date('2018/03/06','yyyy/mm/dd'),'16'); 
insert into evaluer(numEtud,codeMat,date_eval,note) values ('1234','RESNniv3',to_date('2017/01/31','yyyy/mm/dd'),'7');

/***** AJOUT DE CONTRAINTE **/ 
ALTER TABLE etudiant ADD CONSTRAINT etat_etudiant CHECK etat IN ('c','d','r') ); 

/**AJOUT DE L'ATTRIBUT NOT NULL DE CHAMP COEFFMAT **/
ALTER TABLE matiere MODIFY  coeffMat number not null ; 

/* MODIFICATION DE SEX DE L'ETUDIANT AYANT LE NOM **/ 
UPDATE etudiant SET sexe='m' WHERE nom='omar' AND prenom='ayadi' ; 

/** AFFICHAGE DE CONTENU DE TABLE ETUDIANT **/
SELECT * FROM etudiant ; 

/** RENOMMAGE DE TABLE EVALUER **/ 
ALTER TABLE evaluer  RENAME TO  evaluationMa ; 

/** NOMBRE TOTAL DES ETUDIANTS */ 
SELECT COUNT(*) FROM etudiant;  /**RESULTAT => 2 **/ 
/** MAX ET MIN DES NOTES **/ 
SELECT MIN (note) , MAX(note) FROM evaluationMa; 

/** ON AFFICHE TOUT SEULEMENT SI LE NOTE EST NULL **/ 
SELECT * FROM evaluationMa WHERE note IS NULL ;

/** ON AFFICHE TOUT DE LA TABLE MATIERE SEUELEMENT SI LE CHAMP CONTIENT LE MOT RESEAU  **/ 
SELECT codeMat FROM matiere WHERE codeMat LIKE '%reseau%' ; 

SELECT * FROM matiere WHERE coeffMat  >= 2;

DELETE FROM matiere WHERE libelleMat ='base de donnees'; 

DROP TABLE etudiant; 


