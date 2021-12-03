create table if not exists singers (id_singer serial primary key,
									singer_name varchar(50) not null);

create table if not exists album (id_album serial primary key,
								  id_singer integer references singers(id_singer),
								  name_album varchar(50) not null,
								  year_creat integer not null);
								  
create table if not exists tune (id_tune serial primary key,
								 id_album integer references album (id_album),
								 name_tune varchar(50) not null,
								 lenght_tune integer not null)