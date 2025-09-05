CREATE TABLE users(
    id SERIAL PRIMARY KEY
    ide_number text not null,
    firstname text not null,
    lastname text not null,
    mobile_number text not null,dir
    address text null,
    email text not null unique,
    password text not null,
    status boolean default true,
    creat_at timestamptz default now(),
    updated_at timestamptz default now(),
    deleted_at timestamptz default now()
);

CREATE TABLE users(id SERIAL PRIMARY KEY, ide_number text not null, firstname text not null, lastname text not null, mobile_number text not null, address text null, email text not null unique, password text not null, status boolean default true, creat_at timestamptz default now(), updated_at timestamptz default now(), deleted_at timestamptz default now() );




-- queri par ainsertar datos 

insert into users(ide_number,firstname,lastname,mobile_number,email,password) values('87067555','joan','ayala','3122429021','joan@mail.com','1234');

--select * from users;
/*
insert into users(ide_number,
firstname,
lastname,
mobile_number,
email,password
) values(
'87067555',
'jovani',
'ayala',
'3122429021',
'jofdfdaan@mail.com',
'1dsfd234'
);
*/
--si seleccionas y das ejecutar se ejecuta aun comentariado 

select 
u.firstname as nombres,
u.lastname as apellidos,
u.firstname ||' '|| u.lastname as fullname,  --selecciona los datos, u es apra el alias as para cambiar nomenclatura
u.email,
case when u.status = true then 'Activo' else ' inactivo' end 
from 
	users u ;