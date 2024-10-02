--17.Truy van san pham co nhieu danh gia nhat trong tung the loai
SELECT p.title, p.reviews, p.category_name
FROM `amazonproducts2023_2.amazon_sale_2` p
WHERE p.reviews = (SELECT MAX(reviews) FROM `amazonproducts2023_2.amazon_sale_2` WHERE category_name = p.category_name)
ORDER BY p.reviews DESC

--giai thich: ta co the dua tren cac san pham co nhieu danh gia nay de quang ba, cung co them hinh anh giup tang doanh thu, vi co ban cac mat hang nay da duoc su tin dung va quan tam cua khach hang
