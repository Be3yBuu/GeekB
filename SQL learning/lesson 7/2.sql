SELECT 
products.name,
catalogs.name
FROM 
shop.products
left join 
catalogs
on products.catalog_id = catalogs.id;