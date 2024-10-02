--13.Truy van cac san pham co gia thap hon muc trung binh cua tung the loai
SELECT p.title, p.price, c.category_name
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.price < (SELECT AVG(p2.price) FROM `google_drive_1.amazon_products` p2 WHERE p2.category_id = p.category_id)
ORDER BY p.price DESC

--giai thich: dung de tim ra cac san pham co muc gia canh tranh trong moi the loai

-- SELECT c.category_name, c.id, AVG(p2.price) FROM `google_drive_1.amazon_products` p2
-- JOIN `google_drive_1.amazon_categories` C ON p2.category_id = c.id
-- WHERE c.category_name = "Data Storage"
-- GROUP BY c.category_name, c.id