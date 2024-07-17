-- General Overview
select count(*) as total_games, avg(global_sales) as avg_sales, sum(global_sales) as sum_sales from `salesanalysis-428410.videogamesales.sales_casted_view`;

-- Year range in dataset
select distinct year from `salesanalysis-428410.videogamesales.sales_casted_view` order by 1 asc ;

--Distinct Publishers

-- Distinct Platforms

-- Distinct Genres




select count(*) from `salesanalysis-428410.videogamesales.sales_casted_view` where  year between '2010' and '2020' and global_sales>= (select avg(global_sales) from`salesanalysis-428410.videogamesales.sales_casted_view`);

