--7.Truy van cac san pham co gia niem yet thap hon gia ban
SELECT p.title, p.list_price, p.price, c.category_name
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c on p.category_id = c.id
WHERE p.list_price < p.price and p.list_price > 0
ORDER BY p.price DESC

-- SELECT COUNT(*)
-- FROM `google_drive_1.amazon_products` p
-- WHERE p.price > p.list_price

--giai thich: co the da bi loi trong qua trinh thu thap du lieu khong cau truc, hoac la gia san pham thuc te khong co san khi dang trong qua trinh thu thap du lieu