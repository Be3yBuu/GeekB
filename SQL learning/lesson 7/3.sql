SELECT flights.id, c1.`name` as `from`, c2.`name` as `to` FROM shop.flights
left join cities as c1
on flights.`from` = c1.label
left join cities as c2
on flights.`to` = c2.label;