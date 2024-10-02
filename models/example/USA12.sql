--12.Truy van ti le san pham ban chay so voi tong so san pham trong moi the loai
SELECT c.id, c.category_name, p.stars, COUNT(CASE WHEN p.is_best_seller = true THEN true END) * 100 / COUNT (p.asin) AS Best_seller_percentage
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
GROUP BY c.category_name, c.id, p.stars
ORDER BY Best_seller_percentage DESC

--giai thich: so sanh muc do ti le san pham ban chay trong tung the loai, tu do giup ta biet duoc nen tap trung khai thac the loai nao cho phu hop