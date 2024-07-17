with regions as(
  select 'NorthAmerica' as region
  union all
  select 'Japan' as region
  union all
  select 'EU' as region
  union all
  select 'Other' as region
  union all
  select 'Global' as region
),
columned as (
  select ranked, Name, Platform, year, genre, Publisher from salesanalysis-428410.videogamesales.focus_data_view
),
crossed as (
  select * from columned cross join regions
),
focus as (
  select * from salesanalysis-428410.videogamesales.focus_data_view
)

SELECT c.ranked, c.Name, c.Platform, c.year, c.genre, c.Publisher, c.region,

CASE 
WHEN c.region = 'NorthAmerica' THEN f.NA_Sales
WHEN c.region = 'EU' THEN f.eu_sales
WHEN c.region = 'Japan' THEN f.jp_sales
WHEN c.region = 'Global' THEN f.global_sales
ELSE f.other_sales
END AS sales

FROM crossed c
LEFT JOIN focus f
  ON c.ranked = f.ranked;