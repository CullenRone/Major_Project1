--14.Truy van san pham co gia cao nhat cua tung the loai
SELECT p.title, p.price, p.category_name
FROM `amazonproducts2023_2.amazon_sale_2` p
WHERE p.price = (SELECT MAX(price) FROM `amazonproducts2023_2.amazon_sale_2` WHERE category_name = p.category_name)
ORDER BY p.price DESC
--giai thich: doi voi nhung san pham co gia cao nhu the thi can co nhung khuyen mai thuong xuyen de co the thu hut nhieu tang lop khach hang hon

