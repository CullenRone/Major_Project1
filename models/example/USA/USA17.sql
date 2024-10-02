--17.Truy van san pham co nhieu danh gia nhat trong tung the loai
SELECT p.title, p.reviews, c.category_name
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.reviews = (SELECT MAX(reviews) FROM `google_drive_1.amazon_products` WHERE category_id = P.category_id)
ORDER BY P.reviews DESC

--giai thich: ta co the dua tren cac san pham co nhieu danh gia nay de quang ba, cung co them hinh anh giup tang doanh thu, vi co ban cac mat hang nay da duoc su tin dung va quan tam cua khach hang