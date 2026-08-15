-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: Gorena Dario
-- Fecha: 15/08/2026
-- ══════════════════════════════════════════

-----Consulta 1 — Exploración general: VAMOS A SELECCIONAR TODAS LAS COLUMNAS DE LA TABLA "SALES"--

SELECT * FROM sales;

--- TIENE SENTIDO PARA CHEQUEAR QUE LOS DATOS SE INGRESARON BIEN Y LOS DATOS BIEN TIPEADO--
--- TAMBINE TIENE SENTIDO SI NECESITAS UN PANORAMA GENERAL DE TODOS LAS VENTAS---
--- CUANDO NO? Y CUANDO NECESITAMOS HACER UNA CONSULTA PUNTUAL COMO POR EJEMPLO; "PRECIO UNITARIO DE LOS PRODUCTOS"

--Consulta 2 - Selección específica:El equipo de finanzas solo necesita identificar al cliente, el producto y el monto--

SELECT customer_id, product_id, total_amount FROM sales;

---Consulta 3 — Nombres amigables con alias: El equipo de finanzas no entiende los nombres técnicos en inglés--
--CAMBIAR: order_date, product_name y quantity renombrándolas con AS como fecha_pedido, nombre_producto y cantidad_unidades respectivamente.--

SELECT order_date AS fecha_pedido, product_name AS nombre_producto, quantity AS cantidad_unidades
FROM sales;
