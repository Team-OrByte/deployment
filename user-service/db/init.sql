-- Table: users_profile
CREATE TABLE users_profile (
    user_id VARCHAR(50) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20) UNIQUE,
    user_address TEXT NOT NULL,
    profile_picture TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    compatibility BOOLEAN DEFAULT TRUE
);

-- Table: user_preferences 
CREATE TABLE user_preferences (
    user_id VARCHAR(50) PRIMARY KEY REFERENCES users_profile(user_id),
    preferred_language VARCHAR(10) DEFAULT 'en',
    notifications_enabled BOOLEAN DEFAULT TRUE
);

-- Insert default admin user profile
INSERT INTO users_profile (
    user_id,
    full_name,
    email,
    phone_number,
    user_address,
    created_at,
    updated_at
) VALUES (
    'admin-001',
    'System Administrator',
    'admin@gmail.com',
    '+1-555-0100',
    'System Administrator Address',
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP
) ON CONFLICT (email) DO NOTHING;

-- Insert default admin user preferences
INSERT INTO user_preferences (
    user_id,
    preferred_language,
    notifications_enabled
) VALUES (
    'admin-001',
    'en',
    TRUE
) ON CONFLICT (user_id) DO NOTHING;
