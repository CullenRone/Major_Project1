--13.Truy van cac san pham co gia thap hon muc trung binh cua tung the loai
SELECT p.title, p.price, p.category_name
FROM `amazonproducts2023_2.amazon_sale_2` p
WHERE p.price < (SELECT AVG(p2.price) FROM `amazonproducts2023_2.amazon_sale_2` p2 WHERE p2.category_name = p.category_name)
ORDER BY p.price DESC

--giai thich: dung de tim ra cac san pham co muc gia canh tranh trong moi the loai

-- SELECT category_name, AVG(price) 
-- FROM `amazonproducts2023_2.amazon_sale_2`
-- WHERE category_name = "Laptops"
-- GROUP BY category_name