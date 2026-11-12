-- Ventas por día de proceso (capa Oro)
select
    fecha_proceso                  as fecha,
    count(*)                       as pedidos,
    sum(monto)                     as ventas
from {{ source('curso', 'silver_pedidos') }}
group by fecha_proceso
