-- Prueba singular: si devuelve filas, la prueba FALLA.
-- Ninguna venta del Oro puede ser menor o igual a cero.
select * from {{ ref('gold_ventas_por_pais') }} where ventas <= 0
