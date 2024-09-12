{{ config(materialized='table') }}

select 
    o.order_key,
    o.order_status,
    o.order_total,
    o.order_date,
    o.order_month,
    l.order_unique_items,
    l.order_total_quantity,
    c.customer_key,
    c.customer_name,
    n.customer_nation
    
from {{ ref('tgt_order') }} as o
    
    inner join {{ ref('order_lineitem') }} l 
        on l.order_key = o.order_key 

    inner join {{ ref('tgt_customer') }} c 
        on c.customer_key = o.order_key

    inner join {{ ref('tgt_nation') }} as n 
        on n.nation_key = c.nation_key


