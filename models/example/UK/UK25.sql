--25.Truy van ty le san pham ban chay trong tung the loai
SELECT category_name, COUNT(asin) AS Total_products, 
       SUM(CASE WHEN is_best_seller = true THEN 1 ELSE 0 END) AS Best_seller_count,
       (SUM(CASE WHEN is_best_seller = true THEN 1 ELSE 0 END) / COUNT(asin)) * 100 AS Best_seller_percentage
FROM `amazonproducts2023_2.amazon_sale_2`
GROUP BY category_name

--giai thich: ta co the dua tren ty le san pham ban chay cua cac the loai nham xac dinh tiem nang phat trien, tu do dau tu them vao de quang ba san pham ngay mot tot hon