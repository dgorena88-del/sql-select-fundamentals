¿Por qué es mala práctica usar SELECT *

Rendimiento: Consumo innecesario de recursosSobrecarga de red: Transfiere datos de columnas que tu aplicación no necesita, aumentando el uso de ancho de banda.Desperdicio de memoria: El servidor de la base de datos y tu aplicación deben cargar en memoria información inútil.
Bloqueo de optimizaciones: Impide que el motor de la base de datos utilice "índices de cobertura" (Covering Indexes), obligándolo a leer el disco duro en lugar de la memoria caché.
Mantenibilidad: Código frágil y propenso a errores Cambios en la estructura: Si un desarrollador agrega, elimina o reordena columnas en la base de datos, tu aplicación puede romperse si espera un orden o número específico de campos.
Conflictos de nombres: Al realizar un JOIN entre dos tablas que tienen columnas con el mismo nombre (ej. id), SELECT * duplicará los campos, causando confusión o errores al mapear los datos en tu código.

¿Por qué son importantes los alias para un stakeholder no técnico? 

Por qué esto confunde al área de finanzas:
total_amount: ¿Es antes o después de impuestos? ¿Es en pesos, dólares o euros? ¿Es el total facturado o el total cobrado?1500000: Al no tener formato ni un nombre claro, finanzas tiene que adivinar si el sistema guardó el número con centavos implícitos (¿son $15,000.00 o $1,500,000?).Usando Alias (La transformación):

Ahora, aplicas alias estratégicos en tu consulta SQL para hablar el mismo idioma que el equipo de finanzas:

El impacto de la transformaciónAl transformar total_amount en "Total Facturado (USD - Neto)", cualquier persona de finanzas interpreta el dato de forma inmediata y sin margen de error:Saben la moneda exacta: Saben que son dólares (USD).Saben la regla de negocio: Entienden que es el monto Neto (sin impuestos).Saben el origen: Confirmaron que es lo Facturado, diferenciándolo de lo que ya se cobró en el banco.El alias convierte un dato crudo de sistemas en información financiera lista para una reunión de directorio.
