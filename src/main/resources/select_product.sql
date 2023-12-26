select product_name
from mine.orders as o
         inner join mine.customers as c on o.customer_id = c.id
where c.name like :name;