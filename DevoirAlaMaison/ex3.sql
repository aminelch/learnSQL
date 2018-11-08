CREATE TABLE `Patient` (
  `codeP` int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nomP` varchar(255) NOT NULL,
  `dateNaissance` date NOT NULL,
  `tel` int(8) NOT NULL,
  `adresse` varchar(255) NOT NULL
);

CREATE TABLE `Medecin` (
  `codeM` int(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nomM` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
);

CREATE TABLE `Consultation` (
  `codeP` int(5) NOT NULL,
  `codeM` int(3) NOT NULL,
  `dateConsultation` date NOT NULL,
  `tarif` float(3) unsigned NOT NULL,
  `traitement` varchar(255) NOT NULL,
  FOREIGN KEY (`codeP`) REFERENCES `Patient` (`codeP`)  ON DELETE CASCADE,
  FOREIGN KEY (`codeM`) REFERENCES `Medecin` (`codeM`) ON DELETE CASCADE
);

/** 2 **/ 
ALTER TABLE `Medecin`
CHANGE `type` `type` varchar(255) NOT NULL DEFAULT ('généraliste,spécialiste') AFTER `nomM`;

/** 3 **/ 
ALTER TABLE `Patient`
CHANGE `tel` `tel` int(8) NOT NULL;

/** 4 **/
INSERT INTO `Medecin` (`codeM`, `nomM`, `type`)
VALUES ('301', 'Taher Ben Mamoud', 'Pédiate');

/** 5 a**/ 
SELECT nomP,tel FROM Patient WHERE adresse NOT LIKE 'Nabeul%';
/** 5 b**/
SELECT nomM FROM Medecin WHERE type LIKE 'généraliste' AND nomM LIKE '%BEN%'; 
/** 5 c**/
SELECT tarif FROM Consultation ORDER BY DESC; 
/** 5 d**/
SELECT nomP FROM Patient WHERE  
