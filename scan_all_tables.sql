START TRANSACTION;
select * from customer;
select * from region;
select * from nation;
select * from part;
select * from partsupp;
select * from supplier;
select * from lineitem;
select * from orders;
COMMIT;
