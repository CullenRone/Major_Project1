--19.Top 100 san pham co so luot danh gia cao nhung khong thuoc mat hang ban chay
SELECT title, stars, reviews, category_name
FROM `amazonproducts2023_2.amazon_sale_2`
WHERE is_best_seller = false and stars >= 4.5
ORDER BY reviews DESC

--giai thich: doi voi cac san pham co luot danh gia nhieu va tot nhung lai khong thuoc mat hang ban chay thi can phai kiem tra ky nguyen nhan do dau,
--dua tren cac nguyen nhan tim hieu duoc thi can co chien luoc tiep thi tot hon cho cac san pham nay