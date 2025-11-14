--------------------------------------------------------
-- USERS
--------------------------------------------------------
INSERT INTO Users (user_id, full_name, email, phone, role) VALUES
(1, 'Mift Mekuria', 'mift@example.com', '0911223344', 'owner'),
(2, 'Samson Teshome', 'samson@example.com', '0911002200', 'customer'),
(3, 'Liya Alemu', 'liya@example.com', '0922334455', 'customer'),
(4, 'Aman Bekele', 'aman@example.com', '0933445566', 'owner');

--------------------------------------------------------
-- PROPERTIES
--------------------------------------------------------
INSERT INTO Properties (property_id, owner_id, title, description, location, price_per_night, status) VALUES
(101, 1, 'Bole Luxury Apartment', '2-bedroom fully furnished', 'Addis Ababa – Bole', 75.00, 'available'),
(102, 1, 'Gerji Modern Villa', 'Spacious villa with garden', 'Addis Ababa – Gerji', 120.00, 'available'),
(103, 4, '4 Kilo Condo', 'Affordable condo near university', 'Addis Ababa – 4 Kilo', 40.00, 'available');

--------------------------------------------------------
-- BOOKINGS
--------------------------------------------------------
INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_amount, status) VALUES
(201, 101, 2, DATE '2025-02-10', DATE '2025-02-12', 150.00, 'confirmed'),
(202, 102, 3, DATE '2025-03-01', DATE '2025-03-05', 480.00, 'pending'),
(203, 103, 2, DATE '2025-01-20', DATE '2025-01-21', 40.00, 'cancelled');

--------------------------------------------------------
-- PAYMENTS
--------------------------------------------------------
INSERT INTO Payments (payment_id, booking_id, amount, method, status) VALUES
(301, 201, 150.00, 'TeleBirr', 'paid'),
(302, 202, 480.00, 'Bank Transfer', 'unpaid'),
(303, 203, 40.00, 'Cash', 'refunded');

--------------------------------------------------------
-- REVIEWS
--------------------------------------------------------
INSERT INTO Reviews (review_id, user_id, property_id, rating, comment) VALUES
(401, 2, 101, 5, 'Very clean and comfortable apartment. Highly recommended!'),
(402, 3, 102, 4, 'Beautiful villa but slightly expensive.'),
(403, 2, 103, 3, 'Good value for money, but could improve cleanliness.');
