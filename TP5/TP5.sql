-- ============================================================
-- Script pour la création de la base
-- Nom de la base : VenteC
-- Nom de SGBD : ORACLE version 10g
-- Date de création : 16/09/2014 11:15
-- ============================================================
-- Table : Prodit
-- ============================================================
create table Produit
(
CodP NUMBER(4) not null,
Lib VARCHAR2(20),
PU NUMBER(8,3),
QteS NUMBER(6),
Seuil NUMBER(4),
constraint cp_CodP primary key (CodP)
);
-- ============================================================
-- Table : Client
-- ============================================================
create table Client
(
CodC NUMBER(4) not null,
NomC VARCHAR2(20),
CreditC NUMBER(8,3),
AdresseC VARCHAR2(15),
constraint cp_CodC primary key (CodC)
);
-- ============================================================
-- Table : Commande
-- Avec une clé étrangère CodC
-- ============================================================
create table Commande
(
NumC NUMBER(4) not null,
CodC NUMBER(4) not null,
MontC NUMBER(7,3),
DATC DATE,
constraint cp_NumC primary key (NumC)
);
-- ============================================================
-- Table : Facture
-- Avec une clé étrangère CodC
-- ============================================================
create table Facture
(
NumF NUMBER(4) not null,
CodC NUMBER(4) not null,
MontF NUMBER(8,3),
DATF DATE,
constraint cp_NumF primary key (NumF)
);
-- ============================================================
-- Table : PC
-- ============================================================
create table PC
(
CodP NUMBER(4) not null,
NumC NUMBER(4) not null,
QteC NUMBER(4),
constraint cp_PC primary key (CodP, NumC)
);
delete from produit;
insert into produit values(2,'ecran',400,15,5);
insert into produit values(5,'clavier',25,40,10);
insert into produit values(3,'CD-ROM',150,20,3);
insert into produit values(9,'Souris',5,100,20);
insert into produit values(10,'Imprimante',500,50,8);

delete from client;
insert into client values (1250,'Mohamed', 50,'Tunis');
insert into client values (1360,'Ali',400,'Sousse');
insert into client values (1580,'Adel', 250,'Adel');
insert into client values (1210,'Fatma', 20,'Sfax');
insert into client values (1000,'Slim', 120,'Kef');
insert into client values (1200,'Sami', 50,'Monastir');
insert into client values (1400,'Mohamed', 200,'zaghouan');

delete from commande;
insert into commande values (10,1250,0,to_date('14-07-1999','dd-mm-yyyy'));
insert into commande values (220,1210,0,to_date('10-11-2000','dd-mm-yyyy'));
insert into commande values (40,1200,0,to_date('15-08-2001','dd-mm-yyyy'));
insert into commande values (100,1400,0,to_date('20-10-2003','dd-mm-yyyy'));
insert into commande values (300,1250,0,to_date('20-11-2001','dd-mm-yyyy'));
insert into commande values (50,1400,0,to_date('12-09-2002','dd-mm-yyyy'));

delete from facture;
insert into facture values (10,1250,NULL,to_date('16-07-1999','dd-mm-yyyy'));
insert into facture values (220,1210,NULL,to_date('12-11-2000','dd-mm-yyyy'));
insert into facture values (40,1200,NULL,to_date('17-08-2001','dd-mm-yyyy'));
insert into facture values (300,1250,NULL,to_date('22-11-2001','dd-mm-yyyy'));
insert into facture values (50,1400,NULL,to_date('14-09-2002','dd-mm-yyyy'));

delete from PC;
insert into PC values (2,10,200);
insert into PC values (5,10,100);
insert into PC values (9,10,300);
insert into PC values (2,220,100);
insert into PC values (9,40,500);
insert into PC values (10,40,100);
insert into PC values (3,40,300);
insert into PC values (10,100,100);
insert into PC values (5,300,70);
insert into PC values (10,300,100);
insert into PC values (3,50,40);
