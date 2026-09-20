select
    o_orderkey    as order_id,
    o_custkey     as customer_id,
    o_orderdate   as order_date,
    o_orderstatus as order_status,
    o_totalprice  as order_total
from {{ source('tpch', 'orders') }}