--22.Truy van san pham co muc gia lon hon 100 do ma khong co danh gia nao ca
SELECT title, price, category_name
FROM `amazonproducts2023_2.amazon_sale_2`
WHERE reviews = 0 and price > 100
ORDER BY price DESC

--giai thich: cac san pham co gia cao nhung khong co luot review nao thi co kha nang kho ban, nen dua ra xem xet ve cac giam gia va khuyen mai de thu hut danh gia nhieu hon tu khach hang