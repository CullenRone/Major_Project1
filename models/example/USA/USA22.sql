--22.Truy van san pham co muc gia lon hon 100 do ma khong co danh gia nao ca
SELECT p.title, p.price, c.category_name
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.reviews = 0 and p.price > 100
ORDER BY p.price DESC

--giai thich: cac san pham co gia cao nhung khong co luot review nao thi co kha nang kho ban, nen dua ra xem xet ve cac giam gia va khuyen mai de thu hut danh gia nhieu hon tu khach hang