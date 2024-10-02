--21.Truy van san pham co gia cao nhat nhung so sao thap nhat trong tung the loai
SELECT p.title, p.price, p.stars, c.category_name
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.price = (SELECT MAX(price) FROM `google_drive_1.amazon_products` WHERE category_id = p.category_id)
ORDER BY p.price DESC

--giai thich: nen dieu chinh gia hoac can cai thien them ve chat luong san pham