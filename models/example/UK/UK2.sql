--2.Truy van cac san pham khong co danh gia nao
SELECT category_name, COUNT(asin) AS No_reviews_count, stars
FROM `amazonproducts2023_2.amazon_sale_2`
WHERE reviews = 0
GROUP BY category_name, stars
ORDER BY stars DESC

-- SELECT COUNT(asin)
-- FROM `amazonproducts2023_2.amazon_sale_2`
-- WHERE reviews = 0 
--giai thich: ta co the thay cac san pham co luot reviews = 0 nhung hau nhu voi so sao la 0 (so 1174420 sp co reviews=0, 0 reviews=0 va stars=5) thi day co the la nhung loai san pham chua danh duoc nhieu su quan tam cua
--khach hang, tuy duoc danh gia la 5 sao nhung chung ta cung can co nhung quang cao, khuyen mai de thu hut them su chu y va danh gia cua nhung khach hang moi