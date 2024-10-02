--9.Truy van cac san pham co so sao thap nhung co nhieu luot danh gia
SELECT title, stars, reviews, category_name
FROM `amazonproducts2023_2.amazon_sale_2`
WHERE stars <= 3 AND reviews > 100
ORDER BY reviews DESC

--giai thich: o day ta can phai tien hanh xem xet li do nhan so sao thap la gi dua tren cac danh gia cua khach hang. Tu do co nhung bien phap phu hop nhu dieu chinh gia, cai thien chat luong hay hoan thien hon
--ve mat dich vu va cham soc khach hang