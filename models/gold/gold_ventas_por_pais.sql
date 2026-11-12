-- Ventas por país (capa Oro)
select
    pais,
    count(*)                       as pedidos,
    sum(monto)                     as ventas,
    round(avg(monto), 2)           as ticket_promedio
from {{ source('curso', 'silver_pedidos') }}
group by pais
