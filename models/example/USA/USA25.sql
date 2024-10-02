--25.Truy van ty le san pham ban chay trong tung the loai
SELECT c.category_name, COUNT(p.asin) AS Total_products, 
       SUM(CASE WHEN p.is_best_seller = true THEN 1 ELSE 0 END) AS Best_seller_count,
       (SUM(CASE WHEN p.is_best_seller = true THEN 1 ELSE 0 END) / COUNT(p.asin)) * 100 AS Best_seller_percentage
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
GROUP BY c.category_name

--giai thich: ta co the dua tren ty le san pham ban chay cua cac the loai nham xac dinh tiem nang phat trien, tu do dau tu them vao de quang ba san pham ngay mot tot hon