
# L'ordre SELECT
**Objectifs**
Apprendre la recherche,restriction et tri de données dans une base de données.
#### 1. Structure de base données

    create table Produit
    
    (
    
    CodP NUMBER(4) not null,
    
    Lib VARCHAR2(20),
    
    PU NUMBER(8,3),
    
    QteS NUMBER(6),
    
    Seuil NUMBER(4),
    
    constraint cp_CodP primary key (CodP)
    
    );
    
...
[voir le code complet](https://github.com/aminelch/learnSQL/blob/master/TP5/TP5.sql)

#### 2. Requêtes SQL

    /***1 **/
    
    SELECT * FROM commande;
    
    /***2 **/
    
    SELECT * FROM client WHERE ADRESSEC = 'tunis' AND MOD(codc,1250)=0 ;
    
    /** 3 **/
    
    SELECT * FROM commande WHERE codc =1 ;
 ....

[voir le code complet](https://github.com/aminelch/learnSQL/blob/master/TP5/queries.sql)