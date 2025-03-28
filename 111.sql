-- Create database currency;
Use currency;
-- Create table currency (
-- currency_code int,
-- currency_name varchar (255)
-- );
-- Create table Exhange_Transaction (
--     currency_code int,
--     buying_rate int,
--     selling_price int,
-- 	amount_bougnt int,
--     amount_sold int,
--     transactoin_date int,
--     transactoin_time int
--     );
ALTER TABLE exhange_transaction
MODIFY COLUMN transactoin_date date;
ALTER TABLE exhange_transaction
MODIFY COLUMN transactoin_time time;
ALTER TABLE exhange_transaction
MODIFY COLUMN buying_rate float;
ALTER TABLE exhange_transaction
MODIFY COLUMN selling_price float;

INSERT INTO currency (currency_code, currency_name)
VALUES (826, "funt_sterlinhiv"),
(971, "afhani"),
(975, "bolharsʹkyy_lev"),
(704, "dong"),
(232, "nakfa"),
(400, "yordansʹkyy_dinar"),
(932, "dolar_zimbabve");

insert into exhange_transaction (currency_code, buying_rate, selling_price, amount_bougnt, amount_sold, transactoin_date, transactoin_time)
values (826, 53.07, 53.84, 100, 20, "2025.02.12", "13:00" ),
(971, 2.00, 3.00, 100, 20, "2024.10.30", "13:00" ),
(975, 22.848, 22.898, 100, 20, "2026.12.05", "13:00" ),
(704, 10.00, 12.00, 100, 20, "2022.11.08", "13:00" ),
(232, 15.07, 15.84, 100, 20, "2012.02.01", "13:00" ),
(400, 23.10, 24.84, 100, 20, "2025.06.09", "13:00" ),
(932, 14.10, 15.84, 100, 20, "2025.09.19", "13:00" );

SELECT * FROM exhange_transaction;


