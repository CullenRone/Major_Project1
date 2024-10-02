--21.Truy van san pham co gia cao nhat nhung so sao thap nhat trong tung the loai
SELECT p.title, p.price, p.stars, p.category_name
FROM `amazonproducts2023_2.amazon_sale_2` p
WHERE p.price = (SELECT MAX(price) FROM `amazonproducts2023_2.amazon_sale_2` WHERE category_name = p.category_name) and p.stars <=3
ORDER BY p.price DESC

--giai thich: nen dieu chinh gia hoac can cai thien them ve chat luong san pham