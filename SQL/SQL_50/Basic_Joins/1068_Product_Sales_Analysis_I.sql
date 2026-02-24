Select product_name, year, price
From Sales as s
Left Join Product as p
on p.product_id = s.product_id 