select
    l_orderkey      as order_id,
    l_partkey       as part_id,
    l_quantity      as quantity,
    l_extendedprice as extended_price
from {{ source('tpch', 'lineitem') }}