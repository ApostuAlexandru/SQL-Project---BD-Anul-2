--select sysdate from dual;

----- Crearea Tabelelor cu EMPLOYEES -----

CREATE TABLE EMPLOYEES (
    employee_id int NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    salary int NOT NULL,
    PRIMARY KEY(employee_id)
);

ALTER TABLE EMPLOYEES ADD hire_date date NOT NULL;

CREATE TABLE DEVELOPER (
    employee_id int NOT NULL UNIQUE,
    developer_id int NOT NULL,
    position varchar(255) NOT NULL,
    seniority int NOT NULL,
    PRIMARY KEY (developer_id),
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id)
);

ALTER TABLE DEVELOPER DROP COLUMN seniority;

CREATE TABLE ARTIST (
    employee_id int NOT NULL UNIQUE,
    artist_id int NOT NULL,
    rating int NOT NULL,
    PRIMARY KEY (artist_id),
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id)
);


CREATE TABLE TESTER (
    employee_id int NOT NULL UNIQUE,
    tester_id int NOT NULL,
    experience int NOT NULL,
    error_rate int NOT NULL,
    PRIMARY KEY (tester_id),
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id)
);


CREATE TABLE ANALYST (
    employee_id int NOT NULL UNIQUE,
    analyst_id int NOT NULL,
    net_growth int NOT NULL,
    success_chance int NOT NULL,
    PRIMARY KEY (analyst_id),
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id)
);


-----  Crearea Tabelelor cu CLIENTI -----

CREATE TABLE CLIENTS (
    client_id int NOT NULL,
    phone varchar(20) NOT NULL,
    email varchar(255),
    PRIMARY KEY(client_id)
);

ALTER TABLE CLIENTS MODIFY email varchar(255) NULL;

CREATE TABLE ORGANISATION (
    client_id int NOT NULL UNIQUE,
    organisation_id int NOT NULL,
    name varchar(255) NOT NULL,
    CUI int NOT NULL UNIQUE,
    net_worth int,
    PRIMARY KEY (organisation_id),
    FOREIGN KEY (client_id) REFERENCES CLIENTS(client_id)
);

ALTER TABLE ORGANISATION MODIFY net_worth int NULL;

CREATE TABLE LIBRARY (
    library_id int NOT NULL,
    library_title varchar(255) NOT NULL,
    PRIMARY KEY (library_id)
);

CREATE TABLE PERSON (
    client_id int NOT NULL UNIQUE,
    library_id int NOT NULL UNIQUE,
    person_id int NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    age int NOT NULL,
    fidelity int NOT NULL,
    username varchar(255) NOT NULL,
    PRIMARY KEY (person_id),
    FOREIGN KEY (client_id) REFERENCES CLIENTS(client_id),
    FOREIGN KEY (library_id) REFERENCES LIBRARY(library_id)
);

-----  Crearea Tabelelor cu PRODUSE -----

CREATE TABLE PRODUCT (
    product_id int NOT NULL,
    name varchar(255) NOT NULL,
    price int NOT NULL,
    platform varchar(255) NOT NULL,
    PRIMARY KEY(product_id)
);

CREATE TABLE PUBLISHER (
    publisher_id int NOT NULL,
    name varchar(255) NOT NULL,
    commission int NOT NULL,
    bank_account varchar(255) NOT NULL,
    PRIMARY KEY(publisher_id)
);

CREATE TABLE GAMES (
    product_id int NOT NULL UNIQUE,
    publisher_id int NOT NULL UNIQUE,
    game_id int NOT NULL,
    genre varchar(255) NOT NULL,
    release_date date NOT NULL,
    age_rating char NOT NULL,
    VR varchar(3) NOT NULL,
    PRIMARY KEY (game_id),
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id),
    FOREIGN KEY (publisher_id) REFERENCES PUBLISHER(publisher_id)
);

ALTER TABLE GAMES DROP CONSTRAINT SYS_C007483;
ALTER TABLE GAMES MODIFY VR varchar(3) NULL;

CREATE TABLE SOFTWARE (
    product_id int NOT NULL UNIQUE,
    software_id int NOT NULL,
    version varchar(20) NOT NULL,
    PRIMARY KEY (software_id),
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
);

-- Software Derived Tables
CREATE TABLE STREAMING_SOFTWARE (
    software_id int NOT NULL UNIQUE,
    stream_soft_id int NOT NULL,
    stream_platform varchar(255) NOT NULL,
    PRIMARY KEY (stream_soft_id),
    FOREIGN KEY (software_id) REFERENCES SOFTWARE(software_id)
);


CREATE TABLE DEV_UTILITIES (
    software_id int NOT NULL UNIQUE,
    dev_utils_id int NOT NULL,
    license_type varchar(255) NOT NULL,
    PRIMARY KEY (dev_utils_id),
    FOREIGN KEY (software_id) REFERENCES SOFTWARE(software_id)
);

--- PAYMENT ---

CREATE TABLE PAYMENT (
    payment_id int NOT NULL,
    payment_type varchar(255) NOT NULL,
    receipt_id int NOT NULL,
    receipt_date date NOT NULL,
    mentions varchar(255) NULL,
    PRIMARY KEY (payment_id)
);

ALTER TABLE PAYMENT MODIFY mentions varchar(255) NULL;

--- ORDER ---

CREATE TABLE ORDERS (
    order_id int NOT NULL ,
    product_id int NOT NULL UNIQUE,
    payment_id int NOT NULL UNIQUE,
    client_id int NOT NULL UNIQUE,
    order_date date NOT NULL,
    user_ip varchar(20) NOT NULL,
    discount int,
    PRIMARY KEY (order_id),
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id),
    FOREIGN KEY (payment_id) REFERENCES PAYMENT(payment_id),
    FOREIGN KEY (client_id) REFERENCES CLIENTS(client_id)
);

ALTER TABLE ORDERS DROP COLUMN product_id;
ALTER TABLE ORDERS DROP CONSTRAINT SYS_C007453;

------  Crearea Tabelelor cu PROJECT -----
 
CREATE TABLE PROJECT (
    project_id int NOT NULL ,
    developer_id int NOT NULL UNIQUE,
    tester_id int NOT NULL UNIQUE,
    name varchar(255) NOT NULL,
    completion int NOT NULL,
    PRIMARY KEY (project_id),
    FOREIGN KEY (developer_id) REFERENCES DEVELOPER(developer_id),
    FOREIGN KEY (tester_id) REFERENCES TESTER(tester_id)
);

ALTER TABLE PROJECT DROP COLUMN developer_id;
ALTER TABLE PROJECT DROP COLUMN tester_id;

CREATE TABLE UNFINISHED_GAMES (
    unfinished_game_id int NOT NULL,
    project_id int NOT NULL UNIQUE,
    estimated_release_date date,
    early_access varchar(3) NOT NULL,
    PRIMARY KEY (unfinished_game_id),
    FOREIGN KEY (project_id) REFERENCES PROJECT(project_id)
);

ALTER TABLE UNFINISHED_GAMES MODIFY estimated_release_date date NULL;

CREATE TABLE UNFINISHED_SOFT (
    unfinished_soft_id int NOT NULL ,
    project_id int NOT NULL UNIQUE,
    analyst_id int NOT NULL UNIQUE,
    stage varchar(255) NOT NULL,
    PRIMARY KEY (unfinished_soft_id),
    FOREIGN KEY (project_id) REFERENCES PROJECT(project_id),
    FOREIGN KEY (analyst_id) REFERENCES ANALYST(analyst_id)
);


--- Crearea Tabelelor Asociative ---

CREATE TABLE GAMES_LIBRARY (
    game_id int NOT NULL,
    library_id int NOT NULL,
    FOREIGN KEY (game_id) REFERENCES GAMES(game_id),
    FOREIGN KEY (library_id) REFERENCES LIBRARY(library_id)
);

CREATE TABLE PRODUCT_ORDER (
    product_id int NOT NULL,
    order_id int NOT NULL,
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id),
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id)
);

CREATE TABLE PROJECT_TESTER (
    project_id int NOT NULL,
    tester_id int NOT NULL,
    FOREIGN KEY (project_id) REFERENCES PROJECT(project_id),
    FOREIGN KEY (tester_id) REFERENCES TESTER(tester_id)
);

CREATE TABLE PROJECT_DEVELOPER (
    project_id int NOT NULL,
    developer_id int NOT NULL,
    FOREIGN KEY (project_id) REFERENCES PROJECT(project_id),
    FOREIGN KEY (developer_id) REFERENCES DEVELOPER(developer_id)
);

CREATE TABLE PROJECT_ARTIST (
    unfinished_game_id int NOT NULL,
    artist_id int NOT NULL,
    FOREIGN KEY (unfinished_game_id) REFERENCES UNFINISHED_GAMES(unfinished_game_id),
    FOREIGN KEY (artist_id) REFERENCES ARTIST(artist_id)
);