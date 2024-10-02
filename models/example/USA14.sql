--14.Truy van san pham co gia cao nhat cua tung the loai
SELECT p.title, p.price, c.category_name
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.price = (SELECT MAX(price) FROM `google_drive_1.amazon_products` WHERE category_id = p.category_id)
ORDER BY p.price DESC
--giai thich: doi voi nhung san pham co gia cao nhu the thi can co nhung khuyen mai thuong xuyen de co the thu hut nhieu tang lop khach hang hon