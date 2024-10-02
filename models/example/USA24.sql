--24.Truy van ty le san pham giam gia trong tung the loai
SELECT c.category_name, COUNT(p.asin) AS Total_products, 
       SUM(CASE WHEN p.list_price > p.price THEN 1 ELSE 0 END) AS Discounted_products,
       (SUM(CASE WHEN p.list_price > p.price THEN 1 ELSE 0 END) * 100 / COUNT(p.asin)) AS Discount_percentage
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
GROUP BY c.category_name

--giai thich: ta co the dua tren ty le duoc giam gia cua cac the loai nham dua ra nhung chien dich giam gia them hay khuyen mai cho tung the loai cu the hon

