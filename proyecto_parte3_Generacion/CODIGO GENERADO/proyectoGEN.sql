DROP SCHEMA IF EXISTS proyecto CASCADE ;
CREATE  SCHEMA  proyecto;
set search_path = proyecto;


CREATE  TABLE Escala_tarifaria ( Escala_tarifaria_valor double precision,
 Patente varchar(50),
 codigo varchar(50) ,
 Constraint PKEscala_tarifaria  primary key (Patente,codigo)
 
 
 
);

CREATE  TABLE Multivalue_aaaaaaaaa ( Dni varchar(50),
 aaaaaaaaa varchar(50) ,
 Constraint pk_multiv_aaaaaaaaa  primary key (Dni,aaaaaaaaa)
 
 
 
);

CREATE  TABLE Cliente ( Dni varchar(50) ,
Constraint pk_persona_Cliente  primary key (Dni)



);

CREATE  TABLE Socio ( CantidadAutos integer,
 Dni varchar(50) ,
 Constraint pk_persona_Socio  primary key (Dni)
 
 
 
);

CREATE  TABLE Alquiler ( provee_Patente varchar(50),
 codigo varchar(50),
 monto double precision,
 Contrata_Dni varchar(50),
 fecha date,
 kmRecorridos varchar(50) ,
 Constraint pk_alquiler_Alquiler  primary key (codigo)
 
 
 
);

CREATE  TABLE Auto ( km integer,
 Modelo varchar(50),
 Marca varchar(50),
 Patente varchar(50),
 Dueño_Dni varchar(50) ,
 Constraint pk_auto_Auto  primary key (Patente)
 
 
 
);

CREATE  TABLE Tarifa ( codigo varchar(50),
 descripcion varchar(50) ,
 Constraint pk_tarifa_Tarifa  primary key (codigo)
 
 
 
);

CREATE  TABLE Persona ( Dni varchar(50),
 NmbreYap varchar(50) ,
 Constraint pk_persona_Persona  primary key (Dni)
 
 
 
);

ALTER TABLE ONLY Escala_tarifaria
    ADD CONSTRAINT FK_Escala_tarifaria_Auto FOREIGN KEY (Patente) REFERENCES Auto(Patente)MATCH SIMPLE;

ALTER TABLE ONLY Escala_tarifaria
    ADD CONSTRAINT FK_Escala_tarifaria_Tarifa FOREIGN KEY (codigo) REFERENCES Tarifa(codigo)MATCH SIMPLE;



ALTER TABLE ONLY Multivalue_aaaaaaaaa
    ADD CONSTRAINT FK_to_Persona_pk_persona_Persona FOREIGN KEY (Dni) REFERENCES Persona(Dni)MATCH SIMPLE;



ALTER TABLE ONLY Cliente
    ADD CONSTRAINT fk_herenciaCliente_Persona FOREIGN KEY (Dni) REFERENCES Persona(Dni)MATCH SIMPLE;



ALTER TABLE ONLY Socio
    ADD CONSTRAINT fk_herenciaSocio_Persona FOREIGN KEY (Dni) REFERENCES Persona(Dni)MATCH SIMPLE;



ALTER TABLE ONLY Alquiler
    ADD CONSTRAINT FK_to_Cliente_pk_persona_Cliente FOREIGN KEY (Contrata_Dni) REFERENCES Cliente(Dni)MATCH SIMPLE;

ALTER TABLE ONLY Alquiler
    ADD CONSTRAINT FK_to_Auto_pk_auto_Auto FOREIGN KEY (provee_Patente) REFERENCES Auto(Patente)MATCH SIMPLE;



ALTER TABLE ONLY Auto
    ADD CONSTRAINT FK_to_Socio_pk_persona_Socio FOREIGN KEY (Dueño_Dni) REFERENCES Socio(Dni)MATCH SIMPLE;











