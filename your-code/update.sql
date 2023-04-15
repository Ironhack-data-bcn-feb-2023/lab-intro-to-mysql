UPDATE salesperson
    SET store_state = "Los Angeles"
	WHERE staff_id = 00005;
    
UPDATE cars
    SET vin = 'DAM41UDN3CHU2WVF6'
	WHERE vin = 'DAM41UDN3CHU2WVF8';
    
UPDATE customers
	SET email = "ppicasso@gmail.com"
	WHERE name = 'Pablo Picasso';

UPDATE customers
	SET email = "lincoln@us.gov"
	WHERE name = 'Abraham Lincoln';
    
UPDATE customers
	SET email = "hello@napoleon.me"
	WHERE name = 'Napoléon Bonaparte';