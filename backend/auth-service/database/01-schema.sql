SET search_path TO public;

BEGIN;

CREATE TABLE users_auth (
    id UUID PRIMARY KEY,
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(30) NOT NULL CHECK (role IN ('ADMIN', 'ALUMNO')),
    enabled BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_users_auth_email ON users_auth(email);

COMMIT;