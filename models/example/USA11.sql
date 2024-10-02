--11.Truy van cac san pham khong giam gia nhung co nhieu sao tot
SELECT p.title, p.stars, p.reviews, p.price, c.category_name
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c ON p.category_id = c.id
WHERE p.stars >=4.5 AND p.price = p.list_price
ORDER BY p.reviews DESC

--giai thich: ta co the su dung mat hang nay va cac review truoc cua khach hang cua tung loai san pham de co the nang tam thuong hieu, gay dung su tin tuong ve chat luong cung nhu la dich vu trong mat nguoi dung
--cac mat hang co price = 0 co the gap van de khi lay tu nguon du lieu, hoac la san pham khong con o trong kho va can duoc bo sung de dap ung nhu cau mua hang cua khach hang

-- SELECT COUNT(*) AS TOTAL
-- FROM `google_drive_1.amazon_products`
-- WHERE stars >=4.5 AND price = list_price AND is_best_seller = true