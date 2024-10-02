--19.Top 100 san pham co so luot danh gia cao nhung khong thuoc mat hang ban chay
SELECT p.title, p.stars, p.reviews, c.category_name
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.is_best_seller = false and p.stars >= 4.5
ORDER BY p.reviews DESC

--giai thich: doi voi cac san pham co luot danh gia nhieu va tot nhung lai khong thuoc mat hang ban chay thi can phai kiem tra ky nguyen nhan do dau,
--dua tren cac nguyen nhan tim hieu duoc thi can co chien luoc tiep thi tot hon cho cac san pham nay