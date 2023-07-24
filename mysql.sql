-- Table creation
create table directors(director_id varchar primary key,director_name varchar);
create table movies(movie_id int primary key,title varchar,release_year int,director_id varchar,foreign key(director_id) references directors(director_id));
create table genres(genre_id varchar primary key,genre_name varchar);
create table movie_genres(movie_id int,genre_id varchar,foreign key(movie_id) references movies(movie_id),foreign key(genre_id) references genres(genre_id));

--insert table values
insert into directors values("SSR10","S S Rajamouli"),("Suj11","Sujeeth"),("RKK12","Radha Krishna Kumar"),("OR13","Om Raut");
select * from directors;

insert into movies values(11,"Saaho",2019,"Suj11"),(13,"Adipurush",2023,"OR13"),(10,"Baahubali2",2017,"SSR10"),(12,"Radhe Shyam",2022,"RKK12");
select * from movies;

insert into genres values("g1","action-thriller"),("g2","comedy"),("g3","horror");
select * from genres;

insert into movie_genres values(01,"g1"),(02,"g2"),(03,"g3"),(03,"g2");
select * from movie_genres;

-- Task1
select m.title,d.director_name from movies m,directors d where m.director_id=d.director_id;

--Task2
select m.title,m.release_year,d.director_name from movies m left join directors d on m.director_id=d.director_id and d.director_name!="";

--Task3
select d.director_name,m.title from directors d left join movies m on d.director_id=m.director_id and m.title!="";

--Task4
select m.title,m.release_year,d.director_name from movies m join directors d on m.director_id=d.director_id and d.director_name!="";

--Task5
select m.title,g.genre_name from movies m join movie_genres mg on m.movie_id=mg.movie_id join genres g on mg.genre_id=g.genre_id;