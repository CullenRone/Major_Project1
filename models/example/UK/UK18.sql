--18.Truy van cac san pham tuy khong co gia san nhung van duoc cho la thuoc mat hang ban chay
SELECT title, stars, is_best_seller, category_name
FROM `amazonproducts2023_2.amazon_sale_2`
WHERE is_best_seller = true and price = 0
ORDER BY stars DESC

--giai thich: doi voi cac mat hang tren thi can cap nhat thong tin gia ca cu the hon, vi day la nhung mat hang co tiem nang phat trien thoi gian dai trong hien tai va tuong lai

-- SELECT COUNT(asin)
-- FROM `amazonproducts2023_2.amazon_sale_2`
-- WHERE price = 0