--20.Truy van cac san pham co so sao thap nhung gia lai cao

SELECT title, price, stars, category_name
FROM `amazonproducts2023_2.amazon_sale_2`
WHERE stars < 3 and price > 50
ORDER BY price DESC

--giai thich: nguyen nhan co nhung san pham nay co the la do gia ca qua cao so voi mat bang chung nhung chat luong cua san pham thi lai khong duoc tot
--can dieu chinh gia ban hoac cai thien them chat luong san pham, viec tang cac khuyen mai di kem voi san pham la mot chien ngan han va khong dem lai hieu qua toi uu nhat