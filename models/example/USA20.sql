--20.Truy van cac san pham co so sao thap nhung gia lai cao

SELECT p.title, p.price, p.stars, c.category_name
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.stars < 3 and p.price > 50
ORDER BY p.price DESC

--giai thich: nguyen nhan co nhung san pham nay co the la do gia ca qua cao so voi mat bang chung nhung chat luong cua san pham thi lai khong duoc tot
--can dieu chinh gia ban hoac cai thien them chat luong san pham, viec tang cac khuyen mai di kem voi san pham la mot chien ngan han va khong dem lai hieu qua toi uu nhat