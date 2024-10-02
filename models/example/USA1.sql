--1.Truy van san pham co luot danh gia cao nhat 
SELECT asin, category_id, img_url, product_url, reviews, stars, title
FROM `enhanced-tuner-435407-k0.google_drive_1.amazon_products`
WHERE stars = 5.0
ORDER BY reviews DESC
--giai thich: san pham co luot reviews cao nhat la 183726 voi so sao la 4.6 (co 536717 sp stars > 4.5), neu so sanh voi san pham co sao la 5.0 va co 15315 luot reviews (94840) thi chung ta can tap trung cho nhung san pham
--co so luot reviews nhieu hon de co the nam bat va hieu duoc nhu cau cua khach hang doi voi tung loai san pham, tu do giup doanh nghiep biet duoc do uu tien cho tung san pham