-- General Overview
select count(*) as total_games, avg(global_sales) as avg_sales, sum(global_sales) as sum_sales from `salesanalysis-428410.videogamesales.sales_casted_view`;

-- Year range in dataset
select distinct year from `salesanalysis-428410.videogamesales.sales_casted_view` order by 1 asc ;

--Distinct Publishers
select distinct publisher from `salesanalysis-428410.videogamesales.sales_casted_view`;

-- Distinct Platforms
select distinct Platform from `salesanalysis-428410.videogamesales.sales_casted_view`;

-- Distinct Genres
select distinct Genre from `salesanalysis-428410.videogamesales.sales_casted_view`;


