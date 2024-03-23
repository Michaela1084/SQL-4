CREATE OR REPLACE FUNCTION insert_cars()
RETURNS void AS $$
BEGIN
    
    INSERT INTO car(status, make, model, year, price)
    VALUES ('New', 'Toyota', 'Camry', 2022, 20000.00);

    
    INSERT INTO car (status, make, model, year, price)
    VALUES ('Used', 'Honda', 'Civic', 2018, 8000.00);
END;
$$ LANGUAGE plpgsql;

SELECT insert_cars();
select * from car;