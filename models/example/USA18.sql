--18.Truy van cac san pham tuy khong co gia niem yet san nhung van duoc cho la thuoc mat hang ban chay
SELECT p.title, p.stars, p.is_best_seller, c.category_name
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.is_best_seller = true and p.list_price = 0
ORDER BY p.stars DESC

--giai thich: doi voi cac mat hang tren thi can cap nhat thong tin gia ca cu the hon, vi day la nhung mat hang co tiem nang phat trien thoi gian dai trong hien tai va tuong lai