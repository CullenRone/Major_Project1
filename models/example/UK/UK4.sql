--4.Truy van cac san pham co it luot danh gia nhung van thuoc loai ban chay
SELECT title, reviews, stars, is_best_seller, category_name
FROM `amazonproducts2023_2.amazon_sale_2`
WHERE is_best_seller = true and reviews < 10
ORDER BY stars DESC

--giai thich: cac san pham du co it danh gia nhung van duoc 5 sao va duoc cho la thuoc loai san pham ban chay cho thay rang can phat huy hon ve tiem nang phat trien cua cac san pham do, nhu viec tang voucher de khuyen khich khach 
--hang viet danh gia cu the de tang do tin cay cua san pham, tu do thu hut nhieu luot mua va danh gia hon trong tuong la