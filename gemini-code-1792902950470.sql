-- ========================================================
-- TAREA: OPERACIONES BÁSICAS DE SQL (SELECT, WHERE, UPDATE, DELETE)
-- AUTOR: [Tu Nombre]
-- ========================================================

-- 1. CREACIÓN DE LA TABLA DE PRUEBA
CREATE TABLE Productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    precio DECIMAL(10,2),
    stock INT
);

-- 2. INSERTAR DATOS INICIALES
INSERT INTO Productos (id, nombre, precio, stock) VALUES 
(1, 'Laptop', 850.00, 5),
(2, 'Mouse', 25.50, 30),
(3, 'Teclado', 45.00, 15),
(4, 'Monitor', 180.00, 8);


-- 3. CONSULTA BÁSICA (SELECT y WHERE)
-- Ver todos los registros cargados
SELECT * FROM Productos;

-- Filtrar registros usando WHERE (Productos con precio mayor a 40)
SELECT nombre, precio, stock 
FROM Productos 
WHERE precio > 40.00;


-- 4. ACTUALIZACIÓN DE DATOS (UPDATE con WHERE)
-- Actualizar el precio del Mouse (id = 2)
UPDATE Productos 
SET precio = 29.99 
WHERE id = 2;

-- Comprobar la actualización
SELECT * FROM Productos WHERE id = 2;


-- 5. ELIMINACIÓN DE DATOS (DELETE con WHERE)
-- Eliminar el producto Teclado (id = 3)
DELETE FROM Productos 
WHERE id = 3;

-- Comprobar la tabla final después de eliminar
SELECT * FROM Productos;