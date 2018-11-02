###Suppression de la clé primaire


	ALTER TABLE nom_table
	DROP PRIMARY KEY

###Suppression d'une clé étrangère
	ALTER TABLE nom_table
	DROP FOREIGN KEY symbole_contrainte

CONSTRAINT fk_client_numero FOREIGN KEY client REFERENCES
Client(numero);
	

