#1.Get film ratings.
#2.Get release years.
#3.Get all films with ARMAGEDDON in the title.
#4.Get all films with APOLLO in the title
#5.Get all films which title ends with APOLLO.
#6.Get all films with word DATE in the title.
#7.Get 10 films with the longest title.
#8.Get 10 the longest films.
#9.How many films include Behind the Scenes content?
#10.List films ordered by release year and title in alphabetical order.

use sakila;

select rating from film;
select release_year from film;
select * from film where title regexp 'ARMAGEDDON';
select * from film where title regexp 'APOLLO';
select * from film where title like '%APOLLO';
select * from film where title regexp 'DATE'; 
select title, length(title) as title_size from film order by title_size limit 10;
select title, length from film limit 10;
select count(*) from film where special_features like 'Behind the Scenes'; 
select title, release_year from film order by 1, 2;
    