select * from `salesanalysis-428410.videogamesales.sales_casted_view` 
where  year between '2010' and '2020' and global_sales>= (select avg(global_sales) 
from`salesanalysis-428410.videogamesales.sales_casted_view`);
