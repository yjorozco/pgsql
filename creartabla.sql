create table cuentas(
    numero_cuenta serial primary key,
    nombre varchar(50) not null,
    monto numeric
)

insert into cuentas (nombre, monto) values ('John', 8000); 
insert into cuentas (nombre, monto) values ('Mary', 1000); 

select * from cuentas;
