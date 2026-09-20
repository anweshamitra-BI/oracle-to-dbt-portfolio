select
    o.order_id,
    o.order_date,
    o.order_status,
    o.order_total,
    c.customer_name,
    c.account_balance
from {{ ref('stg_orders') }} o
left join {{ ref('stg_customers') }} c
    on o.customer_id = c.customer_id