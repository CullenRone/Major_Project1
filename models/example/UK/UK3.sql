--3.Truy van san pham ban chay trong moi phan loai mat hang san pham
SELECT category_name, stars, title, COUNT(asin) as Best_seller_count
FROM `amazonproducts2023_2.amazon_sale_2`
WHERE is_best_seller = true
GROUP BY category_name, stars, title
ORDER BY Best_seller_count DESC

--giai thich: giup ta nhan biet duoc san pham ban chay cua tung the loai hang hoa co tren san thuong mai dien tu, tu do co the giup hieu ro hon nhu cau va xu huong cua khach hang o hien tai va tap trung quang cao cho san pham
--o tung the loai o tung thoi diem