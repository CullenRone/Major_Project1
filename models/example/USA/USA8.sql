--8.Truy van ty le cac san pham khong thuoc mat hang ban chay nhung co so sao cao
SELECT COUNT(*)  / (SELECT COUNT(*) FROM `google_drive_1.amazon_products`) * 100 AS Percentage
FROM `google_drive_1.amazon_products` p
WHERE p.is_best_seller = false and p.stars > 4.5

--giai thich: phan tram cho ra la xap xi 37.32%, cho thay can co nhung chien luoc quang cao phu hop de co the giam ti le nay xuong muc thap nhat