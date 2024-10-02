--3.Truy van san pham ban chay trong moi phan loai mat hang san pham
SELECT c.id, c.category_name, p.stars, p.title, COUNT(p.asin) as Best_seller_count
FROM `google_drive_1.amazon_products` p
JOIN `google_drive_1.amazon_categories` c on p.category_id = c.id
WHERE p.is_best_seller = true
GROUP BY c.id, c.category_name, p.stars, p.title
ORDER BY Best_seller_count DESC
--giai thich: giup ta nhan biet duoc san pham ban chay cua tung the loai hang hoa co tren san thuong mai dien tu, tu do co the giup hieu ro hon nhu cau va xu huong cua khach hang o hien tai va tap trung quang cao cho san pham
--o tung the loai o tung thoi diem
