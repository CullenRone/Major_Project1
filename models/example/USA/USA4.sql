--4.Truy van cac san pham co it luot danh gia nhung van thuoc loai ban chay
SELECT p.title, p.reviews, p.stars, p.is_best_seller, c.category_name
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.is_best_seller = true and p.reviews < 10
ORDER BY p.stars DESC
--giai thich: cac san pham du co it danh gia nhung van duoc 5 sao va duoc cho la thuoc loai san pham ban chay cho thay rang can phat huy hon ve tiem nang phat trien cua cac san pham do, nhu viec tang voucher de khuyen khich khach 
--hang viet danh gia cu the de tang do tin cay cua san pham, tu do thu hut nhieu luot mua va danh gia hon trong tuong lai