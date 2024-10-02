--5.Truy van san pham thuoc loai ban chay co gia thap hon gia trung binh cac san pham
SELECT category_name, title, price, stars, is_best_seller
FROM `amazonproducts2023_2.amazon_sale_2`
WHERE is_best_seller = true and price < (SELECT AVG(price) FROM `amazonproducts2023_2.amazon_sale_2`)
ORDER BY stars DESC

--giai thich: tim kiem san pham co gia thap hon muc trung binh cua tong san pham de tu do tim ra nhung san pham mang tinh "gia re nhung chat luong". 
--Can co them cac khuyen mai de danh manh vao tam ly mua hang gia re cua khach hang

--SELECT AVG(price) FROM `amazonproducts2023_2.amazon_sale_2`