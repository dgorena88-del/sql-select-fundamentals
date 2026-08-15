-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: DARIO GORENA
-- Fecha: 15/08/2026
-- ══════════════════════════════════════════
-- Consulta 1: Exploración general de la tabla sales
Rendimiento: Consumo innecesario de recursosSobrecarga de red: Transfiere datos de columnas que tu aplicación no necesita, aumentando el uso de ancho de banda.Desperdicio de memoria: El servidor de la base de datos y tu aplicación deben cargar en memoria información inútil.Bloqueo de optimizaciones: Impide que el motor de la base de datos utilice "índices de cobertura" (Covering Indexes), obligándolo a leer el disco duro en lugar de la memoria caché.

-- Consulta 2: Selección de columnas específicas para finanzas

 Mantenibilidad: Código frágil y propenso a errores Cambios en la estructura: Si un desarrollador agrega, elimina o reordena columnas en la base de datos, tu aplicación puede romperse si espera un orden o número específico de campos.Conflictos de nombres: Al realizar un JOIN entre dos tablas que tienen columnas con el mismo nombre (ej. id), SELECT * duplicará los campos, causando confusión o errores al mapear los datos en tu código.

-- Consulta 3: Selección con alias en español para stakeholders

Interesados



