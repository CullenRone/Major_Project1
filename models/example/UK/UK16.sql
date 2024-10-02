--16.Truy van tong so luot danh gia cua moi the loai san pham
SELECT category_name, SUM(reviews) AS Total_reviews
FROM `amazonproducts2023_2.amazon_sale_2` 
GROUP BY category_name

--giai thich: can tap trung xay dung nhung chien luoc quang ba va khuyen mai cho nhung the loai chu chot nhu nay dua tren viec co luot danh gia cao
--vi da co su quan tam nhat dinh tu cac khach hang