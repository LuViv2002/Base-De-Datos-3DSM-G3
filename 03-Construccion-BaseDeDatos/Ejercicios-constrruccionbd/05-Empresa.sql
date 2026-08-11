-- ------------------------------------------
-- EJERCICIO 5: Empresa / Depent
-- ------------------------------------------
CREATE DATABASE BD_Ejercicio5;
GO
USE BD_Ejercicio5;
GO
CREATE TABLE DEPARTMENT (
    Number INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Manager_FK VARCHAR(20) UNIQUE,
    Startdate DATE,
    SSn_FK VARCHAR(20)
);

CREATE TABLE EMPLOYE (
    Ssn VARCHAR(20) PRIMARY KEY,
    Firstname VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    Address VARCHAR(150),
    Bdate DATE,
    Salary DECIMAL(10,2),
    sex CHAR(1),
    jef_fk VARCHAR(20),
    Number_Dep INT,
    Name_Dep_FK VARCHAR(100),
    CONSTRAINT fk_employe_super 
        FOREIGN KEY (jef_fk) REFERENCES EMPLOYE(Ssn),
    CONSTRAINT fk_employe_dept 
        FOREIGN KEY (Number_Dep) REFERENCES DEPARTMENT(Number)
);

ALTER TABLE DEPARTMENT 
    ADD CONSTRAINT fk_dept_manager 
    FOREIGN KEY (Manager_FK) REFERENCES EMPLOYE(Ssn);

CREATE TABLE LOCATIONS (
    Numlocation INT PRIMARY KEY,
    NumberDep_FK_PK INT,
    NameDep_FK_PK VARCHAR(100),
    Localhost VARCHAR(100),
    CONSTRAINT fk_loc_dept 
        FOREIGN KEY (NumberDep_FK_PK) REFERENCES DEPARTMENT(Number)
);

CREATE TABLE PROYECTS (
    Number INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    NumberDep_FK INT,
    CONSTRAINT fk_proy_dept 
        FOREIGN KEY (NumberDep_FK) REFERENCES DEPARTMENT(Number)
);

CREATE TABLE Works_on (
    SSN_FK VARCHAR(20),
    Number_Pros_FK_PK INT,
    Hours DECIMAL(5,2),
    PRIMARY KEY (SSN_FK, Number_Pros_FK_PK),
    CONSTRAINT fk_wo_emp 
        FOREIGN KEY (SSN_FK) REFERENCES EMPLOYE(Ssn),
    CONSTRAINT fk_wo_proy 
        FOREIGN KEY (Number_Pros_FK_PK) REFERENCES PROYECTS(Number)
);

CREATE TABLE DEPENDENT (
    SSN_FK VARCHAR(20),
    Name VARCHAR(50),
    Sex CHAR(1),
    Relationship VARCHAR(50),
    Bdate DATE,
    PRIMARY KEY (SSN_FK, Name),
    CONSTRAINT fk_dep_emp 
        FOREIGN KEY (SSN_FK) REFERENCES EMPLOYE(Ssn) 
        ON DELETE CASCADE
);
