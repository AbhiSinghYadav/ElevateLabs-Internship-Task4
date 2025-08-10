--Q1.list all the products with the price greater than 1000
select * from products;
select * from products where list_price>1000;

--Q2.show all customers from california.
select * from customers where state='CA';

--Q3.Retrieve orders placed after 2018-01-01.
select * from orders where order_date > '2018-01-01';

--Q4.List products sorted by price (highest first).
select * from products order by list_price desc;

--Q5.Display customers ordered by last name.
select customer_id,first_name,last_name from customers order by last_name;

--Q6.Find the total revenue generated per store.
select stores.store_name,SUM(order_items.quantity * order_items.list_price * (1 - order_items.discount))
as Total_revenue from stores 
join orders
on orders.store_id=stores.store_id 
join order_items on orders.order_id=order_items.order_id group by stores.store_name;


--Q7.Count how many orders each staff member processed
select staffs.first_name,staffs.last_name,count(orders.order_id) as Order_processed from orders join staffs on orders.staff_id=staffs.staff_id 
group by staffs.first_name,staffs.last_name;

--Q8.Calculate the average product price per category.
select products.product_name,categories.category_name,Avg(products.list_price) as Average_product_price from products 
join categories on products.category_id=categories.category_id
group by products.product_name,categories.category_name;

--Q9.LEFT JOIN: List all stores and their staff members (include stores without staff).
select stores.store_name,CONCAT(staffs.first_name,' ',staffs.last_name) As staff_member from stores left join staffs on stores.store_id=staffs.store_id;

--Q10.Find products more expensive than the average price.
select product_name,list_price from products where list_price>(select Avg(list_price) from products);

--Q11.Show the store with the highest revenue.
select stores.store_name,SUM(order_items.quantity * order_items.list_price * (1 - order_items.discount))
as total_revenue from stores 
join orders
on orders.store_id=stores.store_id 
join order_items on orders.order_id=order_items.order_id 
group by stores.store_name
order by total_revenue desc limit 1;

--Q12.Create a view showing order_id, order_date, store_name, total order value.

create view order_summary as select o.order_id,o.order_date,s.store_name,
sum(oi.quantity * oi.list_price) as total_order_value from orders as o join stores as s 
on o.store_id=s.store_id 
join order_items as oi on oi.order_id=o.order_id 
group by o.order_id,o.order_date,s.store_name;

select * from order_summary;

--Q13.Create a view showing each product’s total sales quantity.
create view product_total_sales_quantity as select p.product_name,count(oi.quantity) from products as p
join order_items as oi on p.product_id=oi.product_id
group by p.product_id,p.product_name;

select * from product_total_sales_quantity;


--Q14.Show customers with no phone number (NULL values).
select * from customers where phone='NULL';

--Q15.Create an index on last_name in the customers table.
create index id_last_name on customers(last_name);
