--16.Truy van tong so luot danh gia cua moi the loai san pham
SELECT c.category_name, SUM(p.reviews) AS Total_reviews
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
GROUP BY c.category_name

--giai thich: can tap trung xay dung nhung chien luoc quang ba va khuyen mai cho nhung the loai chu chot nhu nay dua tren viec co luot danh gia cao
--vi da co su quan tam nhat dinh tu cac khach hang