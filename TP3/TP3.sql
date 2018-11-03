//creation
create table Patient(IDpasient number(4),Nom varchar(15),Prenom varchar(15), DateN varchar(9));
CREATE table Salle (CodeSalle number(2), codeBloc number(2), NomSalle varchar(7));
CREATE table Bloc(CodeBolc number(2), NomBloc varchar(15));
CREATE table Praticien(CodePraticien varchar(6), Nom varchar(15),Prenom varchar(15),Specialite varchar(15), matrecule number(5));
create table Anesthesie(CodeAnesthesie varchar(3), CodePraticien varchar(6), DateAnesthesie varchar(9),TypeAnes varchar(10));
//insertion patient
INSERT INTO patient VALUES(356, 'Fekri', 'Ala eddin', '11oct2010');
INSERT INTO patient VALUES(1285, 'Faouel', 'Naourez', '18jan2002');
//insertion Salle
INSERT INTO Salle VALUES('65', 2, 'Salle2');
INSERT INTO Salle VALUES('45', 1, 'Salle1');
//insertion bloc
INSERT INTO Bloc VALUES( 1, 'orl');
INSERT INTO BLOC  VALUES( 2, 'MedecineGeneral');
INSERT INTO Bloc VALUES( 3, 'Gynécologie');
//insertion Praticien
INSERT INTO praticien VALUES( '45ORL4', 'Amdouni', 'Wafa', 'ORL',45879);
INSERT INTO praticien VALUES( '61Opth3', 'kallel', 'Donia', 'Ophtalmologie',2548);
//insertion Anesthesie
INSERT INTO anesthesie VALUES( '51G', '45ORL4', '18oct2018', 'Generale');
// creation table operation
CREATE TABLE Operation  
                        (CodeOperation varchar(10) PRIMARY key,
                         Dateop date,
                         DateDebut date,
                         Datefin date,
                         Anesthesieop varchar(3),
                         Praticienop varchar(8),
                         Patientop number(4),
                         salleop varchar(10));
 // insertion operation
 insert INTO operation (CODEOPERATION, praticienop, patientop, salleop, anesthesieop,dateop) VALUES('21','61Opht3',1285,'45','63l',TO_DATE(2013, 'RR'));
 insert INTO operation (CODEOPERATION, praticienop, patientop, salleop, anesthesieop) VALUES('45ORL4',125,'45','31G');














foreign key  (Anesthesieop) references Anesthesie (CODEANESTHESIE),
                           foreign key (Praticienop)  references Praticien (CODEPRATICIEN),
                          foreign key (Patientop )  references Patient (IDPASIENT),
                          foreign key (salleop)  references Salle (CODESALLE));