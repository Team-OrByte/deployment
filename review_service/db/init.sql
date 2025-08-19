-- initdb_postgres_reviews.sql
-- Initialize the reviews table with UUID reviewId (TEXT) and insert 25 sample records

-- Drop table if exists
DROP TABLE IF EXISTS reviews;

-- Create table
CREATE TABLE reviews (
    "reviewId"   TEXT PRIMARY KEY,
    "message"    VARCHAR(191) NOT NULL,
    "rating"     DECIMAL(65,30) NOT NULL,
    "userId"     TEXT NOT NULL,
    "bikeId"     TEXT NOT NULL,
    "rideId"     VARCHAR(191) NOT NULL,
    "createdAt"  TIMESTAMP NOT NULL,
    "updatedAt"  TIMESTAMP NOT NULL
);

-- Insert 25 sample review records with proper bike IDs
INSERT INTO reviews ("reviewId", "message", "rating", "userId", "bikeId", "rideId", "createdAt", "updatedAt") VALUES
('review-001', 'Smooth ride, well maintained bike.', 4.5, 'user-001', 'bike-001', 'ride-001', NOW() - INTERVAL '25 days', NOW() - INTERVAL '25 days'),
('review-002', 'Bike chain was a bit loose.', 3.8, 'user-002', 'bike-002', 'ride-002', NOW() - INTERVAL '24 days', NOW() - INTERVAL '24 days'),
('review-003', 'Excellent experience!', 5.0, 'user-003', 'bike-003', 'ride-003', NOW() - INTERVAL '23 days', NOW() - INTERVAL '23 days'),
('review-004', 'Good bike, but seat was uncomfortable.', 3.5, 'user-004', 'bike-004', 'ride-004', NOW() - INTERVAL '22 days', NOW() - INTERVAL '22 days'),
('review-005', 'Gears shifted smoothly.', 4.7, 'user-005', 'bike-005', 'ride-005', NOW() - INTERVAL '21 days', NOW() - INTERVAL '21 days'),
('review-006', 'Brakes were responsive.', 4.2, 'user-006', 'bike-006', 'ride-006', NOW() - INTERVAL '20 days', NOW() - INTERVAL '20 days'),
('review-007', 'A bit of rust on the frame.', 3.2, 'user-007', 'bike-007', 'ride-007', NOW() - INTERVAL '19 days', NOW() - INTERVAL '19 days'),
('review-008', 'Very comfortable ride.', 4.9, 'user-008', 'bike-008', 'ride-008', NOW() - INTERVAL '18 days', NOW() - INTERVAL '18 days'),
('review-009', 'Tyres needed more air.', 3.6, 'user-009', 'bike-009', 'ride-009', NOW() - INTERVAL '17 days', NOW() - INTERVAL '17 days'),
('review-010', 'Loved the bike color and style.', 4.8, 'user-010', 'bike-010', 'ride-010', NOW() - INTERVAL '16 days', NOW() - INTERVAL '16 days'),
('review-011', 'Chain slipped during ride.', 2.9, 'user-011', 'bike-011', 'ride-011', NOW() - INTERVAL '15 days', NOW() - INTERVAL '15 days'),
('review-012', 'Fast and smooth.', 5.0, 'user-012', 'bike-012', 'ride-012', NOW() - INTERVAL '14 days', NOW() - INTERVAL '14 days'),
('review-013', 'Lights were not working.', 3.4, 'user-013', 'bike-013', 'ride-013', NOW() - INTERVAL '13 days', NOW() - INTERVAL '13 days'),
('review-014', 'Bike felt brand new.', 4.9, 'user-014', 'bike-014', 'ride-014', NOW() - INTERVAL '12 days', NOW() - INTERVAL '12 days'),
('review-015', 'Good for short rides.', 4.1, 'user-015', 'bike-015', 'ride-015', NOW() - INTERVAL '11 days', NOW() - INTERVAL '11 days'),
('review-016', 'Basket was handy for carrying stuff.', 4.3, 'user-016', 'bike-016', 'ride-016', NOW() - INTERVAL '10 days', NOW() - INTERVAL '10 days'),
('review-017', 'Brakes needed adjustment.', 3.7, 'user-017', 'bike-017', 'ride-017', NOW() - INTERVAL '9 days', NOW() - INTERVAL '9 days'),
('review-018', 'Smooth ride even on rough roads.', 4.6, 'user-018', 'bike-018', 'ride-018', NOW() - INTERVAL '8 days', NOW() - INTERVAL '8 days'),
('review-019', 'Good ride for the price.', 4.0, 'user-019', 'bike-019', 'ride-019', NOW() - INTERVAL '7 days', NOW() - INTERVAL '7 days'),
('review-020', 'Saddle was too hard.', 3.3, 'user-020', 'bike-020', 'ride-020', NOW() - INTERVAL '6 days', NOW() - INTERVAL '6 days'),
('review-021', 'Smooth gear shifting.', 4.5, 'user-021', 'bike-001', 'ride-021', NOW() - INTERVAL '5 days', NOW() - INTERVAL '5 days'),
('review-022', 'Frame felt a bit heavy.', 3.9, 'user-022', 'bike-002', 'ride-022', NOW() - INTERVAL '4 days', NOW() - INTERVAL '4 days'),
('review-023', 'Perfect bike for city rides.', 5.0, 'user-023', 'bike-003', 'ride-023', NOW() - INTERVAL '3 days', NOW() - INTERVAL '3 days'),
('review-024', 'Pedals were squeaky.', 3.6, 'user-024', 'bike-004', 'ride-024', NOW() - INTERVAL '2 days', NOW() - INTERVAL '2 days'),
('review-025', 'Very enjoyable experience.', 4.8, 'user-025', 'bike-005', 'ride-025', NOW() - INTERVAL '1 day', NOW() - INTERVAL '1 day');

-- Note: Requires pgcrypto extension for gen_random_uuid()
-- Enable with: CREATE EXTENSION IF NOT EXISTS pgcrypto;
