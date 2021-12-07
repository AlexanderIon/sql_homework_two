create table if not exists Singers (
                                     id_singer serial primary key,
                                     name_singer varchar(50) not null unique);
create table if not exists Genars (
									id_genar serial primary key,
									name_genar varchar(50) not null unique );

create table if not exists Singer_and_Genar(
											id_sin_and_genar primary key (id_singer, id_genar),			
											id_singer integer references Singers (id_singer),
											id_genar integer references Genars (id_genar));									

create table if not exists Albums (
									id_album serial primary key not null,
									
									name_album varchar(80) not null ,
									year_create integer not null);

create table if not exists Album_and_Singer (
											 id_album_and_singer primary key (id_album,id_singer),	
											 id_album integer references Albums(id_album),
											 id_singer integer references Singers(id_singer));
											
create table if not exists Collection (
										id_collection serial primary key,
										name_collection varchar(50) not null,
										create_year integer not null);

create table if not exists Tune (
								 id_tune serial primary key,
								 id_album integer references Albums (id_album),
								 name_tune varchar(50) not null,
								 lenght_tune integer not null);
								
create table if not exists Tune_in_Collection (
											   id_tune_and_collect primary key (id_tune,id_collection),	
											   id_tune integer references Tune (id_tune),
											   id_collection integer references Collection (id_collection));
											  
								





