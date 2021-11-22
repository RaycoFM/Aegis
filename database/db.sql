-- Heores
-- UPDATE test.card SET ascension = 'Not Acquired-0' WHERE id > 0 && ascension = 'Not Acquired';

CREATE TABLE heroes(
    id INT(11) NOT NULL,
    id_user INT(11),
    CONSTRAINT fk_users FOREIGN KEY (id_user) REFERENCES users(id),
    heroname varchar(200) NOT NULL,
    artefacto varchar(200) NOT NULL,
    ascension varchar(200) NOT NULL,
    star varchar(200) NOT NULL,
    class varchar(200) NOT NULL,
    faction varchar(200) NOT NULL,
    engravings varchar(200) NOT NULL,
    fi varchar(200) NOT NULL,
    si varchar(200) NOT NULL,
    head varchar(200) NOT NULL,
    body varchar(200) NOT NULL,
    boots varchar(200) NOT NULL,
    weapon varchar(200) NOT NULL,
    roll varchar(200) NOT NULL,
    attribute varchar(200) NOT NULL
    
    
);

ALTER TABLE heroes
 ADD PRIMARY KEY (id);
 
ALTER TABLE heroes
 MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1;
 
DESCRIBE heroes;

-- Users TABLE

CREATE TABLE users(
    id INT(11) NOT NULL,
    username varchar(16) NOT NULL,
    password varchar(60) NOT NULL,
    fullname varchar(100) NOT NULL    
);

ALTER TABLE users
 ADD PRIMARY KEY (id);
 
ALTER TABLE users
 MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;
 
DESCRIBE users;

-- Links table

CREATE TABLE links(
    id INT(11) NOT NULL,
    title varchar(150) NOT NULL,
    url varchar(255) NOT NULL,
    description TEXT,
    user_id INT(11),
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);


ALTER TABLE links
 ADD PRIMARY KEY (id);
 
ALTER TABLE links
 MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;


-- TABLA productos

 CREATE TABLE productos(
    id INT(11) NOT NULL,
    nombre varchar(100) NOT NULL,
    referencia varchar(100),
    precio_costo varchar(100),
    precio_venta varchar(100),
    codigo varchar(100),
    imagen varchar(250)
);

ALTER TABLE productos
 ADD PRIMARY KEY (id);
 
ALTER TABLE productos
 MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1;