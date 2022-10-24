CREATE TABLE articolo
(
    IdArticolo        int auto_increment primary key,
    Titolo            varchar(10) not null ,
    Testo             varchar(1000) not null ,
    DataPubblicazione datetime not null ,
    Genere enum('Sport', 'Scienza', 'Politica','Informatica','Attualità','Altro') not null ,
    immagine1 varchar(50) null ,
    immagine2 varchar(50) null

);


CREATE TABLE pagina
(
    IdArticolo int auto_increment primary key,
    IdLink int,

    FOREIGN KEY (IdLink) REFERENCES link(IdLink)



);


CREATE TABLE link (
    IdLink int auto_increment primary key,
    link varchar(50) unique not null


);





CREATE TABLE ArticoloAutore
(
    IdArticolo int,
    IdAutore   int,
    primary key (IdArticolo, IdAutore),

    FOREIGN KEY (IdArticolo) REFERENCES articolo (IdArticolo),
    FOREIGN KEY (IdAutore) REFERENCES autore (IdAutore)


);


CREATE TABLE autore
(
    IdAutore     int auto_increment primary key,
    Nome         varchar(10) not null ,
    Cognome      varchar(10) not null ,
    LuogoNascita varchar(20) not null


);