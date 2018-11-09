/***1 **/ 
SELECT * FROM commande;
/***2 **/ 
SELECT * FROM client WHERE ADRESSEC = 'tunis' AND  MOD(codc,1250)=0 ; 

/** 3 **/ 
SELECT * FROM commande WHERE codc =1 ;

/** 4 **/ 
SELECT * FROM produit WHERE (qtes BETWEEN 500 AND 700 ) AND (seuil>0 AND seuil IS NOT NULL ) ;

/** 5 **/ 
SELECT * FROM client WHERE nomc LIKE '%ed%'; 

/** 6  **/ 
SELECT * FROM produit WHERE lib LIKE '__p%'; 
/** 7  **/ 
SELECT * FROM facture WHERE  EXTRACT(YEAR FROM datf)=1999;
/** 8  **/ 
SELECT codc FROM Commande WHERE codc IS NOT NULL;
/** 9 **/
SELECT codc FROM facture WHERE  (
    EXTRACT(DAY FROM datf),
    EXTRACT(MONTH FROM datf),
    EXTRACT(YEAR FROM datf) ) > '20/03/1998'; 

/** 10 **/
SELECT * FROM produit ORDER BY lib ASC; 

/** 11 **/
SELECT * FROM produit ORDER BY codp  ASC, pu ASC, qtes DESC; 

/** 12 **/
