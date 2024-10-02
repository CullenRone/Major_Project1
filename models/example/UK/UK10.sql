--10.Truy van cac san pham co so sao cao, gia re
SELECT title, stars, price, category_name
FROM `amazonproducts2023_2.amazon_sale_2`
WHERE stars >=4.5 AND price < 50
ORDER BY stars DESC

--giai thich: co tong cong 392691 san pham phu hop voi dieu kien tren, nhung chi co 2921 san pham trong so do duoc cho la thuoc mat hang ban chay. Tu do ta nen day manh viec quang ba cho cac san pham
--con lai, danh vao yeu to gia ca de thu hut nhieu luot khach mua hang hon

-- SELECT COUNT(*) as total
-- FROM `amazonproducts2023_2.amazon_sale_2`
-- WHERE stars >=4.5 and price < 50 and is_best_seller = true