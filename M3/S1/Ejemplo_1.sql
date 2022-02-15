CREATE DATABASE clientes_banco1;

use clientes_banco1;

CREATE TABLE clientes(
id_cliente 		BIGINT NOT NULL,
nombre	   		VARCHAR(100) NOT NULL,
edad     		INTEGER,
pais  			VARCHAR(50),
ingresos 		NUMERIC,
estrato  		INTEGER,
sexo  			char(1),
CONSTRAINT llave_primaria PRIMARY KEY(id_cliente),
CONSTRAINT edad_cliente CHECK (edad > 0),
CONSTRAINT ingresos_cliente CHECK (ingresos > 0),
CONSTRAINT estrato_cliente CHECK (estrato IN (1,2,3)),
CONSTRAINT sexo_cliente CHECK (sexo IN ('M','F'))
);


INSERT INTO clientes 
-- (id_cliente,nombre,edad,pais,ingresos,estrato,sexo) 
VALUES (1,"Paula",58,"Guinea-Bissau",20160,3,"M"),(2,"Florence",103,"Congo, the Democratic Republic of the",33333,3,"M"),(3,"Alana",87,"Nepal",43892,3,"M"),(4,"Kimberley",63,"Jordan",59466,3,"M"),(5,"Brenden",26,"Cocos (Keeling) Islands",16094,3,"M"),(6,"Allistair",94,"Madagascar",99103,1,"F"),(7,"Amber",70,"Korea, South",97738,2,"F"),(8,"Octavia",23,"Ireland",43815,1,"M"),(9,"Dolan",85,"Croatia",47218,3,"F"),(10,"Jerry",97,"Gabon",62668,1,"F"),(11,"Ingrid",38,"Korea, South",82915,2,"F"),(12,"Alexis",36,"Congo (Brazzaville)",11835,3,"F"),(13,"Deirdre",71,"Mali",49117,1,"F"),(14,"Armando",71,"Kuwait",81741,1,"M"),(15,"Adele",64,"Kyrgyzstan",70381,3,"F"),(16,"Kaseem",86,"United Arab Emirates",39051,3,"M"),(17,"Talon",34,"Côte D'Ivoire (Ivory Coast)",24143,2,"M"),(18,"Kane",34,"Latvia",47828,3,"M"),(19,"Adena",27,"Grenada",81242,3,"M"),(20,"Avram",19,"Guadeloupe",28982,3,"F"),(21,"Demetrius",35,"United States Minor Outlying Islands",94015,2,"M"),(22,"Stacy",100,"Cyprus",63960,3,"M"),(23,"Urielle",77,"Maldives",99068,1,"M"),(24,"May",61,"Eritrea",24590,3,"F"),(25,"Eve",99,"Oman",58359,2,"M"),(26,"Walter",55,"Holy See (Vatican City State)",83674,3,"F"),(27,"Chantale",44,"Madagascar",89178,1,"M"),(28,"Megan",39,"Malaysia",36863,2,"F"),(29,"Raja",40,"Nepal",77997,1,"F"),(30,"Karleigh",35,"Comoros",36953,1,"F"),(31,"Courtney",56,"Congo, the Democratic Republic of the",92709,2,"F"),(32,"Yasir",76,"Tajikistan",23880,1,"M"),(33,"Ishmael",64,"Bouvet Island",84391,2,"F"),(34,"Timothy",83,"Equatorial Guinea",74674,2,"M"),(35,"Savannah",71,"Austria",94624,2,"F"),(36,"Kiara",74,"Azerbaijan",20654,2,"F"),(37,"Hannah",100,"France",39898,2,"F"),(38,"Damon",57,"Guinea-Bissau",48685,3,"M"),(39,"Igor",94,"Dominica",27677,2,"F"),(40,"Hanae",52,"San Marino",45504,1,"M"),(41,"Teagan",66,"Saint Lucia",98801,3,"M"),(42,"Abbot",37,"Maldives",43034,1,"F"),(43,"Chandler",39,"Bolivia",80841,2,"F"),(44,"Shana",68,"Macao",51207,3,"F"),(45,"Candice",26,"Haiti",23917,1,"F"),(46,"Walter",92,"Mauritius",63859,3,"F"),(47,"Quon",55,"Russian Federation",30883,3,"M"),(48,"Naomi",81,"South Africa",81740,3,"F"),(49,"Lydia",39,"Kiribati",14683,3,"F"),(50,"Tanner",90,"Norway",56644,1,"M"),(51,"Carlos",48,"Kenya",17831,2,"F"),(52,"Isaac",44,"Kiribati",30477,1,"F"),(53,"Kane",66,"Dominican Republic",88514,3,"F"),(54,"Liberty",66,"Antigua and Barbuda",86991,3,"M"),(55,"Haviva",40,"Bolivia",66370,1,"M"),(56,"Devin",46,"Cuba",43675,3,"F"),(57,"Theodore",31,"Ukraine",81025,3,"M"),(58,"Bree",89,"Sri Lanka",95775,1,"F"),(59,"Kylynn",98,"Peru",99358,2,"F"),(60,"Hanna",87,"Switzerland",22784,3,"F"),(61,"Preston",46,"Suriname",66530,3,"M"),(62,"Brenna",62,"French Polynesia",49787,3,"F"),(63,"Cooper",46,"Lesotho",31222,3,"M"),(64,"Jack",44,"Austria",41414,1,"F"),(65,"Derek",59,"Mayotte",63191,3,"F"),(66,"Deanna",104,"Sweden",55829,3,"F"),(67,"Venus",67,"Cameroon",21798,1,"F"),(68,"Kiona",82,"Brazil",28446,2,"F"),(69,"Acton",71,"Slovakia",33635,3,"M"),(70,"Basil",102,"Dominican Republic",94631,2,"F"),(71,"Abraham",46,"Bouvet Island",83258,1,"M"),(72,"Hannah",46,"Dominica",99431,3,"F"),(73,"Cally",28,"Moldova",45076,3,"F"),(74,"Kamal",24,"Indonesia",26412,3,"M"),(75,"Quyn",84,"American Samoa",66175,3,"F"),(76,"Julian",90,"Virgin Islands, British",70592,2,"F"),(77,"Pascale",76,"Philippines",65168,2,"M"),(78,"Illiana",70,"Antigua and Barbuda",22842,2,"F"),(79,"Alma",46,"United States",50582,3,"M"),(80,"Griffin",39,"American Samoa",14988,2,"F"),(81,"Zenaida",77,"Côte D'Ivoire (Ivory Coast)",45206,3,"F"),(82,"Daria",100,"Virgin Islands, British",44617,2,"F"),(83,"Eugenia",90,"Indonesia",61792,1,"F"),(84,"Francesca",43,"Cook Islands",38118,2,"F"),(85,"Maia",41,"United States Minor Outlying Islands",30325,2,"F"),(86,"Todd",63,"Saint Kitts and Nevis",94146,3,"F"),(87,"Nathan",27,"Israel",57028,1,"F"),(88,"Hedy",33,"Faroe Islands",43541,2,"F"),(89,"Josephine",18,"Niger",38427,3,"F"),(90,"Nathan",51,"Niger",86561,2,"F"),(91,"Jayme",52,"Fiji",98937,3,"F"),(92,"Nathaniel",86,"India",88566,3,"M"),(93,"Serena",60,"Jersey",66719,2,"F"),(94,"Hamilton",58,"Papua New Guinea",17309,3,"F"),(95,"Stacey",92,"Latvia",19682,2,"F"),(96,"Sonia",34,"Madagascar",70523,2,"F"),(97,"Neil",105,"New Zealand",71149,3,"M"),(98,"Genevieve",103,"Sri Lanka",12565,2,"M"),(99,"Ignacia",52,"Bermuda",29378,1,"F"),(100,"Zahir",80,"Georgia",70779,3,"F");	


select * from clientes;



 
CREATE TABLE tarjetas(
id_tarjeta 		SERIAL,
tipo	   		VARCHAR(100) NOT NULL,
cliente     	BIGINT ,
monto  			VARCHAR(50),
CONSTRAINT llave_primaria_tarjeta PRIMARY KEY(id_tarjeta),
CONSTRAINT tipo_tarjeta CHECK (tipo IN ('Debito','Credito')),
CONSTRAINT monto_tarjeta CHECK (monto > 0 ),
CONSTRAINT FK_tarjeta FOREIGN KEY (cliente) REFERENCES clientes(id_cliente) 
);

INSERT INTO tarjetas 
-- (`id_tarjeta`,`tipo`,`cliente`,`monto`) 
VALUES (1,"Credito",1,126210),(2,"Credito",2,259351),(3,"Debito",3,15184),(4,"Debito",4,218341),(5,"Debito",5,479564),(6,"Credito",6,295025),(7,"Credito",7,8082),(8,"Credito",8,378095),(9,"Debito",9,205969),(10,"Debito",10,357108),(11,"Debito",11,238529),(12,"Debito",12,326639),(13,"Credito",13,492739),(14,"Credito",14,103478),(15,"Credito",15,463540),(16,"Credito",16,366697),(17,"Debito",17,85195),(18,"Credito",18,28491),(19,"Credito",19,374627),(20,"Credito",20,232921),(21,"Debito",21,277307),(22,"Credito",22,180954),(23,"Credito",23,334908),(24,"Debito",24,69549),(25,"Credito",25,436831),(26,"Debito",26,471949),(27,"Debito",27,13864),(28,"Credito",28,57101),(29,"Credito",29,458276),(30,"Debito",30,266078),(31,"Credito",31,388171),(32,"Credito",32,278278),(33,"Debito",33,338779),(34,"Debito",34,231489),(35,"Debito",35,469387),(36,"Credito",36,11266),(37,"Debito",37,357323),(38,"Credito",38,397933),(39,"Debito",39,394203),(40,"Credito",40,13926),(41,"Debito",41,210413),(42,"Credito",42,37776),(43,"Credito",43,367506),(44,"Debito",44,409556),(45,"Debito",45,164847),(46,"Debito",46,329496),(47,"Debito",47,15008),(48,"Credito",48,456101),(49,"Debito",49,353347),(50,"Credito",50,204170),(51,"Debito",51,356887),(52,"Debito",52,290666),(53,"Credito",53,262217),(54,"Credito",54,126125),(55,"Credito",55,292073),(56,"Credito",56,457489),(57,"Debito",57,382068),(58,"Debito",58,266303),(59,"Credito",59,249261),(60,"Credito",60,455333),(61,"Debito",61,286883),(62,"Debito",62,278641),(63,"Credito",63,113303),(64,"Debito",64,454965),(65,"Credito",65,461843),(66,"Debito",66,357533),(67,"Credito",67,122627),(68,"Debito",68,224812),(69,"Credito",69,73616),(70,"Debito",70,124906),(71,"Credito",71,119964),(72,"Debito",72,126600),(73,"Debito",73,448317),(74,"Credito",74,117513),(75,"Credito",75,311443),(76,"Credito",76,134480),(77,"Debito",77,33358),(78,"Debito",78,437503),(79,"Credito",79,242299),(80,"Debito",80,57104),(81,"Credito",81,114261),(82,"Credito",82,295442),(83,"Debito",83,229683),(84,"Credito",84,284534),(85,"Debito",85,312895),(86,"Debito",86,137146),(87,"Debito",87,103480),(88,"Debito",88,70459),(89,"Credito",89,289254),(90,"Debito",90,489069),(91,"Debito",91,469142),(92,"Debito",92,276383),(93,"Credito",93,170496),(94,"Debito",94,326244),(95,"Debito",95,336723),(96,"Debito",96,246300),(97,"Credito",97,81937),(98,"Debito",98,120466),(99,"Debito",99,474459),(100,"Credito",100,73254);


-- comprobar nuestros datos
 SELECT * FROM tarjetas;
 
 
show tables;

use clientes_banco1;


DELETE FROM clientes
WHERE id_cliente=1;

DELETE FROM clientes
WHERE pais in ('México','USA');

DELETE FROM clientes
WHERE pais in ('México','USA') AND (ingresos <10000);


UPDATE clientes
SET pais="Estados UNIDOS"
WHERE pais="USA";

UPDATE clientes
SET nombre="Wang"
WHERE id_cliente=1;

select * from clientes where id_cliente=1;


Select * from clientes;
select * from tarjetas;

-- Joins
-- left / right JOIN
Select * 
from clientes inner join tarjetas
on clientes.id_cliente=tarjetas.cliente;

Select nombre,sexo,monto,tipo 
from clientes inner join tarjetas
on clientes.id_cliente=tarjetas.cliente;

Select nombre,sexo,monto,tipo 
from clientes inner join tarjetas
on clientes.id_cliente=tarjetas.cliente
where monto>15000 and sexo = 'M';


Select nombre,sexo,monto,tipo 
from clientes inner join tarjetas
on clientes.id_cliente=tarjetas.cliente
where monto>15000 and sexo = 'M'
order by monto desc; 


Select sexo, round(avg(monto),2)
from clientes Inner join tarjetas
on clientes.id_cliente=tarjetas.cliente
where monto>15000
group by sexo
order by round(avg(monto),2) desc; 

-- -- left JOIN
Select * 
from clientes left join tarjetas
on clientes.id_cliente=tarjetas.cliente;

Select nombre,sexo,monto,tipo 
from clientes right join tarjetas
on clientes.id_cliente=tarjetas.cliente;

Select nombre,sexo,monto,tipo 
from clientes right join tarjetas
on clientes.id_cliente=tarjetas.cliente
where monto>15000 and sexo = 'M';


Select nombre,sexo,monto,tipo 
from clientes left join tarjetas
on clientes.id_cliente=tarjetas.cliente
where monto>15000 and sexo = 'M'
order by monto desc; 


Select sexo , round(avg(monto),2)
from clientes left join tarjetas
on clientes.id_cliente=tarjetas.cliente
where monto>15000 
group by sexo
order by round(avg(monto),2) desc; 
