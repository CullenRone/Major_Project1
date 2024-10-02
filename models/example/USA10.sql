--10.Truy van cac san pham co so sao cao, gia re
SELECT p.title, p.stars, p.price, c.category_name
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.stars >=4.5 AND p.price < 50
ORDER BY stars DESC

--giai thich: co tong cong 609904 san pham phu hop voi dieu kien tren, nhung chi co 5140 san pham trong so do duoc cho la thuoc mat hang ban chay. Tu do ta nen day manh viec quang ba cho cac san pham
--con lai, danh vao yeu to gia ca de thu hut nhieu luot khach mua hang hon

-- SELECT COUNT(*) as total
-- FROM `google_drive_1.amazon_products`
-- WHERE stars >=4.5 and price < 50 and is_best_seller = true