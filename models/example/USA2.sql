--2.Truy van cac san pham khong co danh gia nao
SELECT c.id, c.category_name, COUNT(p.asin) AS No_reviews_count, p.stars
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.reviews = 0
GROUP BY c.id, c.category_name, p.stars
ORDER BY stars DESC
--giai thich: ta co the thay cac san pham co luot reviews = 0 nhung hau nhu voi so sao la 5.0 (so 1130503 sp co reviews=0, 71949 reviews=0 va stars=5) thi day co the la nhung loai san pham chua danh duoc nhieu su quan tam cua
--khach hang, tuy duoc danh gia la 5 sao nhung chung ta cung can co nhung quang cao, khuyen mai de thu hut them su chu y va danh gia cua nhung khach hang moi