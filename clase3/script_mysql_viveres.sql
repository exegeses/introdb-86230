-- Creación de la base de datos (opcional)
-- CREATE DATABASE IF NOT EXISTS super_compras;
-- USE super_compras;

-- Creación de la tabla 'viveres'
CREATE TABLE IF NOT EXISTS viveres (
    id smallint unsigned auto_increment PRIMARY KEY,
    producto VARCHAR(50) NOT NULL,
    alternativa VARCHAR(50),
    categoria VARCHAR(50) NOT NULL,
    cantidad tinyint unsigned NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);

-- Inserción de los datos de prueba
INSERT INTO viveres 
  (id, producto, alternativa, categoria, cantidad, precio) 
VALUES
(1, 'Milanesas de pollo', 'Pechuga de pollo', 'Carnes', 2, 4500.00),
(2, 'Carne picada especial', 'Hamburguesas congeladas', 'Carnes', 1, 6200.00),
(3, 'Fideosar Mñn (Tallarines)', 'Fideosarar Tirabuzón', 'Pastas', 3, 1200.00),
(4, 'Ravioles de verdura', 'Ñoquis de papa', 'Pastas', 2, 3100.00),
(5, 'Leche descremada', 'Leche entera', 'Lácteos', 4, 1400.00),
(6, 'Queso cremoso', 'Queso tybo', 'Lácteos', 1, 4800.00),
(7, 'Yogur firme de frutilla', 'Yogur bebibile', 'Lácteos', 2, 1800.00),
(8, 'Tomate redondo', 'Tomate perita', 'Verdura', 2, 2200.00),
(9, 'Lechuga capuchina', 'Acelga fresca', 'Verdura', 1, 1500.00),
(10, 'Cebolla blanca', 'Cebolla morada', 'Verdura', 2, 1300.00),
(11, 'Papa blanca', 'Batata', 'Verdura', 3, 1800.00),
(12, 'Manzana roja', 'Pera anjou', 'Frutas', 2, 2500.00),
(13, 'Pan lactal blanco', 'Pan negro con semillas', 'Panadería', 1, 2400.00),
(14, 'Galletitas de agua', 'Galletitas salvado', 'Almacén', 2, 950.00),
(15, 'Aceite de girasol', 'Aceite de maíz', 'Almacén', 1, 3800.00),
(16, 'Arroz largo fino', 'Arroz doble carolina', 'Almacén', 2, 1650.00),
(17, 'Puré de tomate', 'Tomates triturados', 'Almacén', 3, 1100.00),
(18, 'Papel higiénico (pack x4)', 'Servilletas de papel', 'Limpieza', 2, 3200.00),
(19, 'Detergente lavavajillas', 'Jabón líquido para ropa', 'Limpieza', 1, 2100.00),
(20, 'Huevos blancos (docena)', 'Huevos de campo', 'Almacén', 1, 3500.00);
