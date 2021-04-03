-- Include your create table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the create table ddls for the tables with foreign key references
--    ONLY AFTER the parent tables has already been created.

-- This is only an example of how you add create table ddls to this file.
--   You may remove it.

-- Category
CREATE TABLE category
(
    cname    VARCHAR(50) NOT NULL,
    priority INTEGER     NOT NULL,

    PRIMARY KEY (cname)
);

-- Patient
CREATE TABLE patient
(
    hInsurNum        VARCHAR(30) NOT NULL,
    pname            VARCHAR(30) NOT NULL,
    streetAddress    VARCHAR(30) NOT NULL,
    city             VARCHAR(30) NOT NULL,
    postalCode       VARCHAR(30) NOT NULL,
    phone            VARCHAR(30) NOT NULL,
    gender           VARCHAR(5)  NOT NULL,
    birthDate        DATE        NOT NULL,
    registrationDate DATE        NOT NULL,
    category         VARCHAR(50) NOT NULL,

    PRIMARY KEY (hInsurNum),
    FOREIGN KEY (category) REFERENCES category (cname)
);

-- Vaccination Location
CREATE TABLE vaccLocation
(
    lname         VARCHAR(30) NOT NULL,
    streetAddress VARCHAR(30) NOT NULL,
    city          VARCHAR(30) NOT NULL,
    postalCode    VARCHAR(30) NOT NULL,

    PRIMARY KEY (lname)
);

-- Hospital
CREATE TABLE hospital
(
    lname VARCHAR(30) NOT NULL,

    PRIMARY KEY (lname),
    FOREIGN KEY (lname) REFERENCES vaccLocation
);

-- Nurse
CREATE TABLE nurse
(
    caNurLicNum VARCHAR(30) NOT NULL,
    nname       VARCHAR(30) NOT NULL,
    employer    VARCHAR(30) NOT NULL,

    PRIMARY KEY (caNurLicNum),
    FOREIGN KEY (employer) REFERENCES hospital (lname)
);


-- Deputation
CREATE TABLE deputation
(
    date        DATE        NOT NULL,
    caNurLicNum VARCHAR(30) NOT NULL,
    location    VARCHAR(30) NOT NULL,

    PRIMARY KEY (date, caNurLicNum, location),
    FOREIGN KEY (caNurLicNum) REFERENCES nurse (caNurLicNum),
    FOREIGN KEY (location) REFERENCES vaccLocation (lname)
);

-- Slot
CREATE TABLE slot
(
    location       VARCHAR(30) NOT NULL,
    roomNum        INTEGER     NOT NULL,
    vaccDate       DATE        NOT NULL,
    time           TIME        NOT NULL,
    hInsurNum      VARCHAR(30),
    assignmentDate DATE,

    PRIMARY KEY (location, roomNum, vaccDate, time),
    FOREIGN KEY (location) REFERENCES vaccLocation (lname)
);

-- Vaccine
CREATE TABLE vaccine
(
    vname         VARCHAR(30) NOT NULL,
    doses         INTEGER     NOT NULL,
    waitingPeriod INTEGER     NOT NULL,

    PRIMARY KEY (vname)
);

-- Batch
CREATE TABLE batch
(
    vaccine     VARCHAR(30) NOT NULL,
    batchNum    INTEGER     NOT NULL,
    expiryDate  DATE        NOT NULL,
    manufacDate DATE        NOT NULL,
    numVials    INTEGER     NOT NULL,
    location    VARCHAR(30) NOT NULL,

    PRIMARY KEY (vaccine, batchNum),
    FOREIGN KEY (vaccine) REFERENCES vaccine (vname),
    FOREIGN KEY (location) REFERENCES vaccLocation (lname)
);


-- Vial
CREATE TABLE vial
(
    vaccine     VARCHAR(30) NOT NULL,
    batchNum    INTEGER     NOT NULL,
    vialNum     INTEGER     NOT NULL,
    hInsurNum   VARCHAR(30) NOT NULL,
    caNurLicNum VARCHAR(30) NOT NULL,
    location    VARCHAR(30) NOT NULL,
    roomNum     INTEGER     NOT NULL,
    vaccDate    DATE        NOT NULL,
    time        TIME        NOT NULL,

    PRIMARY KEY (vaccine, batchNum, vialNum),
    FOREIGN KEY (vaccine, batchNum) REFERENCES batch (vaccine, batchNum),
    FOREIGN KEY (hInsurNum) REFERENCES patient (hInsurNum),
    FOREIGN KEY (caNurLicNum) REFERENCES nurse (caNurLicNum),
    FOREIGN KEY (location, roomNum, vaccDate, time) REFERENCES slot (location, roomNum, vaccDate, time)
);




END


