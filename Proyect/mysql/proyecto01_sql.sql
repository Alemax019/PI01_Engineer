use proyecto01;

SET @@global.sql_mode= '';
SET SQL_SAFE_UPDATES = 0;

## realizamos modificaciones a las tablas para que tengan mejor performans

alter table plataform drop level_0;
alter table plataform modify id varchar(30) not null;
alter table plataform modify show_id varchar(30);
alter table plataform modify country varchar(200);
alter table plataform modify release_year varchar(30);
alter table plataform modify rating varchar(30);
alter table plataform modify listed_in varchar(100);
alter table plataform modify score int(10);
alter table plataform modify duration_int int(10);
alter table plataform modify duration_type varchar(30);

## Realizamos limpieza para eliminar espacios al principio y final

update plataform set	id = trim(id),
						show_id = trim(show_id),
						country = trim(country),
                        release_year = trim(release_year),
                        rating = trim(rating),
                        listed_in = trim(listed_in),
                        score = trim(score),
                        duration_int = trim(duration_int),
                        duration_type = trim(duration_type);

## dejamos nuestra base de datos lista