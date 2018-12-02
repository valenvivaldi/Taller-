CREATE  SCHEMA IF NOT EXISTS proyecto;
set search_path = proyecto;


CREATE  TABLE PricePerKm ( patent varchar(50),
 PricePerKm_amount double precision,
 name varchar(50) ,
 Constraint PKPricePerKm  primary key (patent,name)
 
 
 
);

CREATE  TABLE Multivalue_telephone ( telephone varchar(50),
 dni varchar(50) ,
 Constraint pk_multiv_telephone  primary key (telephone,dni)
 
 
 
);

CREATE  TABLE FeeTarifa ( name varchar(50) ,
Constraint pk_fee_FeeTarifa  primary key (name)



);

CREATE  TABLE CarAuto ( Model varchar(50),
 patent varchar(50),
 dni varchar(50),
 Brand varchar(50),
 kilometers integer ,
 Constraint pkPk_car_CarAuto  primary key (patent)
 
 
 
);

CREATE  TABLE Client ( name_surname varchar(50),
 Rental_code integer,
 Rental_km integer,
 Rental_amout integer,
 dni varchar(50),
 patent varchar(50),
 Rental_date varchar(50) ,
 Constraint pk_person_Client  primary key (dni)
 
 
 
);

CREATE  TABLE Partner ( name_surname varchar(50),
 dni varchar(50),
 numberOfCars integer ,
 Constraint pk_person_Partner  primary key (dni)
 
 
 
);

ALTER TABLE ONLY PricePerKm
    ADD CONSTRAINT FK_to_FeeTarifa_pk_fee_FeeTarifa FOREIGN KEY (name) REFERENCES FeeTarifa(name)MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY PricePerKm
    ADD CONSTRAINT FK_to_CarAuto_pkPk_car_CarAuto FOREIGN KEY (patent) REFERENCES CarAuto(patent)MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY Multivalue_telephone
    ADD CONSTRAINT FK_to_Client_pk_person_Client FOREIGN KEY (dni) REFERENCES Client(dni)MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE;






ALTER TABLE ONLY CarAuto
    ADD CONSTRAINT FK_to_Partner_pk_person_Partner FOREIGN KEY (dni) REFERENCES Partner(dni)MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY Client
    ADD CONSTRAINT FK_to_CarAuto_pkPk_car_CarAuto FOREIGN KEY (patent) REFERENCES CarAuto(patent)MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE;








