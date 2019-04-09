SELECT pt.ConsoleCode, count(ht.ASIN) Entries, round(avg(ht.NewPrice),0) Price, 
	round(avg(ht.NumOfReviews),2) Reviews,round(avg(ht.VideoGameRank),0) Ranking
FROM historytable ht, producttable pt
WHERE ht.ASIN = pt.ASIN and pt.productcode like "GA%"
GROUP BY pt.ConsoleCode;