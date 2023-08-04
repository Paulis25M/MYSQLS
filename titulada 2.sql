USE CADPH;
CREATE TABLE Titulada(
id INT (20) UNIQUE PRIMARY KEY,
nombre_apellido VARCHAR (50) UNIQUE NOT NULL,
correo VARCHAR(50) UNIQUE NOT NULL,
edad INT UNSIGNED NOT NULL,
direccion VARCHAR(20) NOT NULL,
ciudad VARCHAR(20) NOT NULL,
estado ENUM('Activo', 'Inactivo') DEFAULT 'Inactivo',
formacion ENUM('Tecnico', 'Tecnologo') DEFAULT 'Tecnólogo',
creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 );
 
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formacion)
VALUES 
(2, 'María Gómez', 'maria@example.com', 28, 'Carrera 456', 'Bogotá', 'Activo', 'Técnico'),
(3, 'Luis García', 'luis@example.com', 30, 'Avenida 789', 'Bogotá', 'Activo', 'Técnico'),
(4, 'Annali Rodríguez', 'annali@example.com', 26, 'Calle 012', 'Bogotá', 'Activo', 'Técnico'),
(5, 'Andrés Sánchez', 'andres@example.com', 29, 'Carrera 345', 'Bogotá', 'Activo', 'Técnico'),
(6, 'Marcela Torres', 'marcela@example.com', 27, 'Avenida 678', 'Bogotá', 'Activo', 'Técnico'),
(7, 'Diego Gómez', 'diego@example.com', 31, 'Calle 901', 'Bogotá', 'Activo', 'Técnico'),
(8, 'Laura Ramírez', 'laura@example.com', 28, 'Carrera 234', 'Bogotá', 'Activo', 'Técnico'),
(9, 'Sergio López', 'sergio@example.com', 30, 'Avenida 567', 'Bogotá', 'Activo', 'Técnico'),
(10, 'Carolina Pérez', 'carolina@example.com', 26, 'Calle 890', 'Bogotá', 'Activo', 'Técnico'),
(11, 'Roberto Torres', 'roberto@example.com', 29, 'Carrera 123', 'Bogotá', 'Activo', 'Técnico'),
(12, 'Maríaf Gómez', 'mariaffg@example.com', 27, 'Avenida 456', 'Bogotá', 'Activo', 'Técnico'),
(13, 'Luisa García', 'luisa@example.com', 31, 'Calle 789', 'Bogotá', 'Activo', 'Técnico'),
(14, 'Javier Rodríguez', 'javier@example.com', 28, 'Carrera 012', 'Bogotá', 'Activo', 'Técnico'),
(15, 'Ana Sánchez', 'ana@example.com', 30, 'Avenida 345', 'Bogotá', 'Activo', 'Técnico'),
(16, 'Pedro Torres', 'pedro@example.com', 26, 'Calle 678', 'Bogotá', 'Activo', 'Técnico'),
(17, 'Sofía Gómez', 'sofia@example.com', 29, 'Carrera 901', 'Bogotá', 'Activo', 'Técnico'),
(18, 'Juan Ramírez', 'juan@example.com', 27, 'Avenida 234', 'Bogotá', 'Activo', 'Técnico'),
(19, 'Juan Pérez', 'juanr@example.com', 25, 'Calle 123', 'Bogotá', 'Activo', 'Técnico'),
(20, 'Maríae Gómez', 'marioe@example.com', 30, 'Carrera 456', 'Bogotá', 'Inactivo', 'Tecnólogo');

UPDATE Titulada SET nombre_apellido = "lo vamos a actualizar" WHERE id = 4;






