select customer_id,
sum(number_of_orders) total_orders
from {{ ref('dim_customers') }}
group by 1
having not(total_orders>=0)