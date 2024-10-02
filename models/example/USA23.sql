--23.Truy vấn ty le san pham co 4.5 sao tro len trong tung the loai
SELECT c.category_name, COUNT(CASE WHEN p.stars >= 4.5 THEN 1 END) * 100.0 / COUNT(p.asin) AS percentage_of_good_rated_products
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
GROUP BY c.category_name

--giai thich: co the tap trung phat trien va lay cac san pham duoc danh gia tot thuoc the loai do de lam diem nhan thu hut them khach hang
--cung nhu la thay doi chien luoc kinh doanh doi voi cac the loai co phan tram thap hon