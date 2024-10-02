--12.Truy van ti le san pham ban chay so voi tong so san pham trong moi the loai
SELECT category_name, stars, COUNT(CASE WHEN is_best_seller = true THEN true END) * 100 / COUNT (asin) AS Best_seller_percentage
FROM `amazonproducts2023_2.amazon_sale_2`
GROUP BY category_name, stars
ORDER BY Best_seller_percentage DESC

--giai thich: so sanh muc do ti le san pham ban chay trong tung the loai, tu do giup ta biet duoc nen tap trung khai thac the loai nao cho phu hop