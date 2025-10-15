drop DATABASE IF EXISTS cursus_bdd;

create DATABASE cursus_bdd;

use cursus_bdd;

CREATE TABLE Etudiants (
 n�etudiant     varchar(50)     NOT NULL
  Nom 			varchar(50) 	NOT NULL,
  prenom		varchar(50)		NOT NULL,
  Tel 	        varchar(50) DEFAULT NULL

) ENGINE=MyISAM DEFAULT CHARSET=UTF8;

INSERT INTO cursus_table  
(Nom, Fonction, Telephone ) VALUES
('BERMOND', 'Max', '0631293030'),
('BOISIER', 'Clem', '0631293031'),
('SALVATORE', 'Damon', '0731293032'),
('Forbes' , 'editeur' , '0610203058'),
('Gilbert','lecteur', '0620171814');

use cursus_bdd;

CREATE TABLE Inscription (
 n�inscription    int     auto_increment,
 n�etudiant		  varchar(50) 	  NOT NULL,
 n�classe	      varchar(50)	  NOT NULL,
  primary key(n�inscription)
  foreign key(etudiants) references table etudiants.key
  
 
 ) ENGINE=MyISAM DEFAULT CHARSET=UTF8;

 use cursus_bdd;


 CREATE TABLE Classes (
 n�classe         varchar(50)     NOT NULL
 titre		      varchar(50) 	  NOT NULL,
 description	  varchar(50)	  NOT NULL,
 Anglais          varchar(50)     NOT NULL,
 Maths            varchar(50)     NOT NULL,
 fran�ais         varchar(50)     NOT NULL,
  
 ) ENGINE=MyISAM DEFAULT CHARSET=UTF8;


USE mysql;
DELETE FROM db WHERE User='Max';

GRANT ALL PRIVILEGES ON cursus_bdd. * TO 'editeur'@'localhost' IDENTIFIED BY 'Password1234';
GRANT all NOT PRIVILEGES ON cursus_bdd. * TO 'lecteur'@'localhost' IDENTIFIED BY'Password1234'; 


FLUSH PRIVILEGES;
