DROP DATABASE IF EXISTS tiendavirtual;

CREATE DATABASE tiendavirtual;

USE tiendavirtual;
CREATE TABLE categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE marca (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(100) NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);

CREATE TABLE producto(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_categoria INT NOT NULL,
    id_marca INT NOT NULL,
    nombre VARCHAR(50),
    descripcion VARCHAR(200),
    imagen TEXT,
    precio DECIMAL(8,2)NOT NULL,
    stock INT,
    FOREIGN KEY(id_categoria)REFERENCES categoria(id),
    FOREIGN KEY(id_marca)REFERENCES marca(id)
);

CREATE TABLE usuario (
    id INT(11) NOT NULL AUTO_INCREMENT,
    codigo VARCHAR(10) DEFAULT NULL,
    perfil VARCHAR(20) DEFAULT NULL,
    login VARCHAR(25) NOT NULL,
    PASSWORD VARCHAR(50) NOT NULL,
    estado TINYINT(1) DEFAULT NULL,
    nrointentos INT(2) DEFAULT NULL,
    numdocumento VARCHAR(15) DEFAULT NULL,
    nombres VARCHAR(100) DEFAULT NULL,
    apellidos VARCHAR(100) DEFAULT NULL,
    email VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) DEFAULT NULL,
    distrito VARCHAR(100) DEFAULT NULL,
    telefono VARCHAR(15) DEFAULT NULL,
    fecnacimiento DATE DEFAULT NULL,
    sexo CHAR(1) DEFAULT NULL,
    imagen TEXT,
    fecregistro DATE DEFAULT NULL,
    fecactualizacion DATE DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE pedido(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    estado CHAR,
    total DECIMAL(8,2)NOT NULL,
    FOREIGN KEY(id_usuario)REFERENCES usuario(id)
);

CREATE TABLE detalle_de_pedido(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    FOREIGN KEY(id_pedido)REFERENCES pedido(id),
    FOREIGN KEY(id_producto)REFERENCES producto(id)
);

CREATE TABLE banner(  
    id INT NOT NULL AUTO_INCREMENT,
    codigo VARCHAR(100),  
    titulo VARCHAR(250),
    imagen MEDIUMBLOB,
    estado BOOL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO categoria VALUES
(NULL,'CAMISAS'),
(NULL,'BLUSAS'),
(NULL,'PANTALONES');

INSERT INTO marca VALUES
(NULL,'JOHN HOLDEN',1),
(NULL,'PIERRE CARDIN',1),
(NULL,'CAMILA',2),
(NULL,'LEE',3),
(NULL,'LEVIS',3);

INSERT INTO producto VALUES
(NULL,1,1,'p1','producto 1','resources/img/img_productos/producto1.jpg',10.00,5),
(NULL,1,1,'p2','producto 2','resources/img/img_productos/producto2.jpg',20.00,5),
(NULL,1,1,'p3','producto 3','resources/img/img_productos/producto3.jpg',30.00,10),
(NULL,1,1,'p4','producto 4','resources/img/img_productos/producto4.jpg',50.00,10),
(NULL,1,1,'p5','producto 5','resources/img/img_productos/producto5.jpg',65.00,10),
(NULL,1,1,'p6','producto 6','resources/img/img_productos/producto6.jpg',70.00,10),
(NULL,1,1,'p7','producto 7','resources/img/img_productos/producto7.jpg',80.00,10),
(NULL,1,1,'p8','producto 8','resources/img/img_productos/producto8.jpg',45.00,10),
(NULL,1,1,'p9','producto 9','resources/img/img_productos/producto9.jpg',20.00,10),
(NULL,1,1,'p10','producto 10','resources/img/img_productos/producto10.jpg',150.00,10),
(NULL,1,1,'p11','producto 11','resources/img/img_productos/producto11.jpg',100.00,10),
(NULL,1,1,'p12','producto 12','resources/img/img_productos/producto12.jpg',120.00,10)
;

INSERT INTO `usuario` (`id`, `codigo`, `perfil`, `login`, `password`, `estado`, `nrointentos`, `numdocumento`, `nombres`, `apellidos`, `email`, `direccion`, `distrito`, `telefono`, `fecnacimiento`, `sexo`, `imagen`, `fecregistro`, `fecactualizacion`) 
VALUES(NULL,'USU001','ADMIN','admin','admin','1','3','23265985','Juan','Perez','jperez@gmail.com','Av. Lima #254','Lima','4578485','1992-06-25','M',NULL,'2017-09-05','2017-09-05');

INSERT INTO usuario VALUES (NULL, 'USU002', 'CLIENT', 'demo', '1234', '1', '3', NULL, 'Demo', NULL, 'demo@pruebas.com', NULL, NULL, NULL, NULL, 'M', NULL, NULL, NULL);

INSERT INTO usuario VALUES (NULL, NULL, NULL, 'demo', '1234', '1', '3', NULL, 'Demo', NULL, 'demo@pruebas.com', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL);

INSERT INTO pedido VALUES
(NULL,2,'P',150.00); -- para usuario demo (id: 2)

INSERT INTO detalle_de_pedido VALUES
(NULL,1,1,5), -- pedido 1, producto 1
(NULL,1,2,5); -- pedido 1, producto 2
