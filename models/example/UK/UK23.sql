--23.Truy vấn ty le san pham co 4.5 sao tro len trong tung the loai
SELECT category_name, COUNT(CASE WHEN stars >= 4.5 THEN 1 END) * 100.0 / COUNT(asin) AS percentage_of_good_rated_products
FROM `amazonproducts2023_2.amazon_sale_2`
GROUP BY category_name

--giai thich: co the tap trung phat trien va lay cac san pham duoc danh gia tot thuoc the loai do de lam diem nhan thu hut them khach hang
--cung nhu la thay doi chien luoc kinh doanh doi voi cac the loai co phan tram thap hon