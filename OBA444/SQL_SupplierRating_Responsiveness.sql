SELECT sc.SupplierName, round(avg(ht.Stars),2) AvgStar, round(avg(ht.NumOfReviews),0) AvgReviews,
	round(avg(ht.NumOfAnsQuestions),0) AvgNumAnsQuest, round(avg(ht.VideoGameRank),0) AvgRank
FROM historytable ht, producttable pt, suppliercode sc
WHERE ht.ASIN = pt.ASIN and sc.SupplierCode = pt.SupplierCode and ht.VideoGameRank < 1000 and ht.VideoGameRank <>0
GROUP BY sc.SupplierName
ORDER BY SupplierName ASC;