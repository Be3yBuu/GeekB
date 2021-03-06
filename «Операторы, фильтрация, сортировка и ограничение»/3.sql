SELECT * FROM storehouses_products
order by case when value=0 then 1 else 0 end, value;