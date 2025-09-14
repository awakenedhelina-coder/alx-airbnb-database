-- Users
INSERT INTO users (first_name, last_name, email, password, phone)
VALUES
('Alice', 'Johnson', 'alice@example.com', 'password123', '123-456-7890'),
('Bob', 'Smith', 'bob@example.com', 'password123', '234-567-8901'),
('Carol', 'Davis', 'carol@example.com', 'password123', '345-678-9012');

-- Properties
INSERT INTO properties (owner_id, title, description, address, city, price_per_night)
VALUES
(1, 'Cozy Apartment', 'A nice cozy apartment in downtown.', '123 Main St', 'CityA', 80.00),
(2, 'Beach House', 'A beautiful beach house.', '456 Beach Rd', 'CityB', 150.00),
(3, 'Mountain Cabin', 'Cabin with mountain view.', '789 Mountain Ln', 'CityC', 120.00);

-- Bookings
INSERT INTO bookings (user_id, property_id, start_date, end_date, total_price, status)
VALUES
(2, 1, '2025-09-15', '2025-09-20', 400.00, 'confirmed'),
(3, 2, '2025-10-01', '2025-10-05', 600.00, 'pending');

-- Payments
INSERT INTO payments (booking_id, amount, payment_method)
VALUES
(1, 400.00, 'Credit Card'),
(2, 600.00, 'PayPal');
