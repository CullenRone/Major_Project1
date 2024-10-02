--8.Truy van ty le cac san pham khong thuoc mat hang ban chay nhung co so sao cao
SELECT COUNT(*)  / (SELECT COUNT(*) FROM `amazonproducts2023_2.amazon_sale_2`) * 100 AS Percentage
FROM `amazonproducts2023_2.amazon_sale_2`
WHERE is_best_seller = false and stars > 4.5

--giai thich: phan tram cho ra la xap xi 15.63%, cho thay can co nhung chien luoc quang cao phu hop hon de tang so luong ban ra nhung mat hang nay