--1.Truy van san pham co luot danh gia cao nhat 
SELECT asin, category_name, reviews, stars, title
FROM `amazonproducts2023_2.amazon_sale_2` 
WHERE stars = 5.0
ORDER BY reviews DESC

-- SELECT COUNT(asin) 
-- FROM `enhanced-tuner-435407-k0.amazonproducts2023_2.amazon_sale_2`
-- WHERE stars = 5.0


--giai thich: san pham co luot reviews cao nhat la 1356658 voi so sao la 4.6 (co 477942 sp stars >= 4.5), neu so sanh voi san pham co sao la 5.0 va co 436 luot reviews (110015) thi chung ta can tap trung cho nhung san pham
--co so luot reviews nhieu hon de co the nam bat va hieu duoc nhu cau cua khach hang doi voi tung loai san pham, tu do giup doanh nghiep biet duoc nhieu hon ve nhu cau cua khach hang dua tren cac san pham do