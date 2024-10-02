--5.Truy van san pham thuoc loai ban chay co gia thap hon gia trung binh cac san pham
SELECT c.id, c.category_name, p.title, p.price, p.stars, p.is_best_seller
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.is_best_seller = true and p.price < (SELECT AVG(price) FROM `google_drive_1.amazon_products`)
ORDER BY p.stars DESC
--giai thich: tim kiem san pham co gia thap hon muc trung binh cua tong san pham de tu do tim ra nhung san pham mang tinh "gia re nhung chat luong". 
--Can co them cac khuyen mai de danh manh vao tam ly mua hang gia re cua khach hang

--SELECT AVG(price) FROM `google_drive_1.amazon_products`