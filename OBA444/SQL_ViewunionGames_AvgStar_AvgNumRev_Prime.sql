Drop view beatingAverageStar;

create view beatingAverageStar as

select pt. ASIN, pt.Description ,pt.ConsoleCode, round(avg(ht.Stars),2) AvgStar
from historytable ht, producttable pt
where ht.ASIN = pt.ASIN and pt.ProductCode like 'GA%' and ht.Prime = 1
group by pt.Description, pt.ConsoleCode
having avg(ht.Stars) >= 3; 

Drop view beatingAverageNumReview;

create view beatingAverageNumReview as

select pt.ASIN, pt.Description ,pt.ConsoleCode
from historytable ht, producttable pt
where ht.ASIN = pt.ASIN and pt.ProductCode like 'GA%' and ht.Prime = 1
group by pt.Description, pt.ConsoleCode
having avg(ht.NumOfReviews) >= 50; 

SELECT bas.Description, bas.ConsoleCode, bas.AvgStar
FROM beatingaveragestar bas
	INNER JOIN beatingaveragenumreview banr
ON banr.ASIN = bas.ASIN
order by bas.AvgStar Desc;