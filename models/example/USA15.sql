--15.Truy van san pham thuoc the loai co so sao trung binh cao 
SELECT c.category_name, AVG(p.stars) AS Avg_rating_stars
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
GROUP BY c.category_name
ORDER BY Avg_rating_stars DESC

--giai thich: can tap trung day manh nhung san pham thuoc the loai nay, vi chung da duoc khach hang danh gia cao ve chat luong cung nhu la trai nghiem