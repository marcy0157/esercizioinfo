CREATE TABLE `articolo` (
  `codiceArticolo` int(11) NOT NULL,
  `titolo` varchar(100) NOT NULL,
  `sottoTitolo` varchar(500) NOT NULL,
  `testo` text NOT NULL,
  `dataStesura` date NOT NULL,
  `pubblicato` tinyint(1) DEFAULT 1,
  `genere` enum('natura','sport','tecnologia') DEFAULT NULL,
  `autore` int(11) NOT NULL
  Non sono stato io;
)
