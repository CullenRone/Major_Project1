--15.Truy van san pham thuoc the loai co so sao trung binh cao 
SELECT category_name, AVG(stars) AS Avg_rating_stars
FROM `amazonproducts2023_2.amazon_sale_2` 
GROUP BY category_name
ORDER BY Avg_rating_stars DESC

--giai thich: can tap trung day manh nhung san pham thuoc the loai nay, vi chung da duoc khach hang danh gia cao ve chat luong cung nhu la trai nghiem

-- SELECT COUNT(asin), category_name
-- FROM `amazonproducts2023_2.amazon_sale_2` 
-- GROUP BY category_name