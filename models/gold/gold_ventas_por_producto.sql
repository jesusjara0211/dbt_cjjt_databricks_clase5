-- Ventas por producto (capa Oro)
select
    producto,
    sum(cantidad)                  as unidades,
    sum(monto)                     as ventas
from {{ source('curso', 'silver_pedidos') }}
group by producto
