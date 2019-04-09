SELECT pc.ProductAttribute, pt.ConsoleCode, round(avg(ht.NewPrice),2) AvgPrice
FROM historytable ht, producttable pt, productcode pc
WHERE ht.ASIN = pt.ASIN and pc.ProductCode = pt.ProductCode and
(pc.ProductCode = 'AC_CON' or pc.ProductCode = 'AC_CSL+')
GROUP BY pc.ProductAttribute, pt.ConsoleCode
order by pc.ProductAttribute Desc, AvgPrice Asc