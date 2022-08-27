--Scripts de exercícios - dvdrental
--1 - Listar todos os atores;
--2 - Listar todos os atores com o primeiro nome igual a Christian;
--3 - Listar apenas o nome e sobrenome dos atores com a inicial D;
--4 - Listar os 10 primeiros atores;

select * from actor;
select * from actor where first_name='Christian';
select first_name, last_name from actor where last_name like 'D%';
select * from actor limit 10;

select * from address;
select * from address where district = 'California';
select address, district  from address where district like 'G%';
select * from address where district = 'California' limit 5;

select * from category;
select * from category where name = 'Documentary';
select category_id ,name  from category where name like '%y';
select * from category name limit 4;

select * from city;
select * from city where city = 'Xintai';
select city, country_id  from city where city like 'Bra%';
select * from city where city like 'Bra%' limit 2;

select * from country;
select * from country where country = 'Yugoslavia';
select country , country_id  from country where country like 'B%';
select * from country where country like 'B%' limit 5;

select * from customer;
select * from customer where first_name = 'Jared';
select first_name , email  from customer where first_name like 'De%';
select * from customer where first_name like 'De%' limit 4;

select * from film;
select * from film where title = 'Date Speed';
select title, description from film where title like 'T%';
select * from film where description  like '%D%' limit 9;
                      
					
select * from 
	film_actor fa
inner join
	actor a 
on                               
	fa.actor_id = a.actor_id 
inner join
	film f 
on 
	fa.film_id = f.film_id;

					
select * from 
	film_actor fa
inner join
	actor a 
on                               
	fa.actor_id = a.actor_id 
inner join
	film f 
on 
	fa.film_id = f.film_id
where 
	f.title = 'Dracula Crystal';

select 
	f.title , a.first_name  , a.last_name 
from 
	film_actor fa
inner join
	actor a 
on                               
	fa.actor_id = a.actor_id 
inner join
	film f 
on 
	fa.film_id = f.film_id
where 
	f.title like 'D%';


select 
	f.title , a.first_name  , a.last_name 
from 
	film_actor fa
inner join
	actor a 
on                               
	fa.actor_id = a.actor_id 
inner join
	film f 
on 
	fa.film_id = f.film_id
where 
	f.title like 'D%' 
limit 6;


select * from 
	film_category fc 
inner join
	film f
on                               
	fc.film_id  = f.film_id;


select 
	fc.category_id , f.title , f.description 
from 
	film_category fc 
inner join
	film f
on                               
	fc.film_id  = f.film_id
where 
	fc.category_id = '9';


select 
	fc.category_id , f.title , f.description 
from 
	film_category fc 
inner join
	film f
on                               
	fc.film_id  = f.film_id
where 
	fc.category_id = '9' and  f.title like 'B%';


select 
	fc.category_id , f.title , f.description 
from 
	film_category fc 
inner join
	film f
on                               
	fc.film_id  = f.film_id
where 
	fc.category_id = '8' and  f.title like 'B%' limit 3;

select 
	inventory_id  , f.title , f.description 
from 
	inventory i 
inner join
	film f
on                               
	i.film_id  = f.film_id;


select 
	inventory_id  , f.title , f.description 
from 
	inventory i 
inner join
	film f
on                               
	i.film_id  = f.film_id ;

select 
	i.inventory_id , f.title , f.description 
from 
	inventory i 
inner join
	film f
on                               
	i.film_id = f.film_id
where 
	i.inventory_id = 5; 

select 
	i.inventory_id, f.title , f.description
from 
	inventory i 
inner join 
	film f 
on 
	i.film_id  = f.film_id  
where 
	i.inventory_id = 9 and f.title like 'A%';

select 
	i.inventory_id, f.title , f.description
from 
	inventory i 
inner join 
	film f 
on 
	i.film_id  = f.film_id 
where 
	 f.title like 'A%' limit 13;

select * from 
	"language" l   
inner join 
	film f 
on 
	l.language_id = f.language_id;

select * from 
	"language" l   
inner join 
	film f 
on 
	l.language_id = f.language_id
where 
	f.title = 'Academy Dinosaur'; 

select * from 
	"language" l   
inner join 
	film f 
on 
	l.language_id = f.language_id
where 
	f.title like 'D%'; 

select
	name, title 
from 
	"language" l   
inner join 
	film f 
on 
	l.language_id = f.language_id
where 
	f.title like 'D%' limit 5; 

select * from 
    payment p
inner join
    customer c
on
    p.customer_id  = c.customer_id;

select * from 
    payment p
inner join
    customer c
on
    p.customer_id  = c.customer_id
where
    c.customer_id = 348;


select
    c.first_name, c.last_name
from
    payment p 
inner join
    customer c
on
    p.customer_id  = c.customer_id
where
    p.amount = 2.99;

select * from 
    payment p
inner join
    customer c
on
    p.customer_id  = c.customer_id
limit 11;

select * from 
	rental r 
inner join 
	customer c 
on 
	r.customer_id  = c.customer_id;

select * from 
	rental r 
inner join 
	customer c 
on 
	r.customer_id = c.customer_id	
where
	c.first_name  = 'Jared';

select 
	c.first_name , c.last_name 
from 
	rental r 
inner join 
	customer c 
on 
	r.customer_id = c.customer_id		
where
	c.first_name  like 'J%'; 

select 
	c.first_name , c.last_name 
from 
	rental r 
inner join 
	customer c 
on 
	r.customer_id = c.customer_id		
where
	c.first_name  like 'J%' limit 4;

select * from 
	staff s 
inner join 
	address a 
on 
	s.address_id  = a.address_id ;

select * from 
	staff s 
inner join 
	address a 
on 
	s.address_id  = a.address_id
where 
	s.first_name  = 'Mike'; 

select
	s.last_name
from 
	staff s 
inner join 
	address a 
on 
	s.address_id  = a.address_id
where 
	s.last_name   
like 
	'H%'

select * from 
	staff s 
inner join 
	address a 
on 
	s.address_id  = a.address_id 
limit 1;

select * from 
	store  s 
inner join 
	address a 
on 
	s.address_id  = a.address_id;

select 
	a.address 
from 
	store  s 
inner join 
	address a 
on 
	s.address_id  = a.address_id
where 
	a.address = '47 MySakila Drive';

select 
	a.address 
from 
	store  s 
inner join 
	address a 
on 
	s.address_id  = a.address_id
where 
	a.address like '28%';

select 
	a.address 
from 
	store  s 
inner join 
	address a 
on 
	s.address_id  = a.address_id
 limit 1;






	
	
	
	
	