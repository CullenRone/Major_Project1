--9.Truy van cac san pham co so sao thap nhung co nhieu luot danh gia
SELECT p.title, p.stars, p.reviews, c.category_name
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON P.category_id = C.id
WHERE P.stars <= 3 AND p.reviews > 100
ORDER BY p.reviews DESC

--giai thich: o day ta can phai tien hanh xem xet li do nhan so sao thap la gi dua tren cac danh gia cua khach hang. Tu do co nhung bien phap phu hop nhu dieu chinh gia, cai thien chat luong hay hoan thien hon
--ve mat dich vu va cham soc khach hang