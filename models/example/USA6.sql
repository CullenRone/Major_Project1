--6.Truy van cac san pham co muc gia giam nhieu nhat(giam tren 50 do)
SELECT c.id, c.category_name, p.title, p.list_price, p.price, p.stars, (p.list_price - p.price) as Discount
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.list_price > p.price and p.is_best_seller = true and (p.list_price - p.price > 50)
ORDER BY Discount DESC
--giai thich: co 13145 san pham co Discount lon hon 50 do, nhung trong do chi co 115 san pham la thuoc mat hang ban chay. Tu day ta co the thay duoc tuy giam gia nhieu nhung van co rat nhieu
--mat hang khong thuoc mat hang ban chay, tu do ta nen co nhung khuyen mai tot hon cho cac san pham do de kich cau khach hang mua va trai nghiem san pham