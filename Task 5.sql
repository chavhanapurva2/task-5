select * from customer

select Distinct segment from customer

	--GROUP BY--

select customer_name from customer where segment = 'Corporate'

select segment, count(customer_id) from customer group by segment

select country, sum(postal_code) from customer group by country

    --HAVING--

select * from sales

select product_id, sum(sales) from sales group by product_id having sum(sales) > 1000

select customer_id , sum(sales) from sales
	group by customer_id
	having sum(sales) > 2200 
	order by customer_id DESC
    limit 50 

   --CASES--

select * from sales

   sum(sales)<1000 = good marks
   sum(sales)>1000 = best marks
   sum(sales)<500 = boundary marks

select customer_id,sum(sales),
  case
      when sum(sales)<1000 then 'good marks'
      when sum(sales)>1000 then 'best marks'
      else 'boundary marks'
  end as "Marks Status"
  from sales group by customer_id










