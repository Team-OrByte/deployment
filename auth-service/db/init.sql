-- Create auth_accounts table
CREATE TABLE IF NOT EXISTS auth_accounts (
    id SERIAL PRIMARY KEY,
    user_id VARCHAR(64) NOT NULL UNIQUE, -- mirrors id from user-service
    email VARCHAR(300) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    last_login TIMESTAMP NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    is_locked BOOLEAN NOT NULL DEFAULT FALSE,
    failed_login_count INT NOT NULL DEFAULT 0,
    role VARCHAR(50) NOT NULL DEFAULT 'user'
);

CREATE INDEX IF NOT EXISTS idx_auth_accounts_user_id ON auth_accounts (user_id);

CREATE INDEX IF NOT EXISTS idx_auth_accounts_email ON auth_accounts (email);

-- Insert default admin user
-- Default password is 'admin123' (bcrypt hash)
-- IMPORTANT: Change this password after first login!
INSERT INTO auth_accounts (
    user_id, 
    email, 
    password_hash, 
    role, 
    created_at
) VALUES (
    'admin-001',
    'admin@gmail.com',
    '$2a$12$f4sZqGzKqpVfKy6ZTiQnvnFB+03g+Q10BLnrvVaNMBJTy/PI0MpaSA==', -- Admin@1234
    'admin',
    CURRENT_TIMESTAMP
) ON CONFLICT (email) DO NOTHING;