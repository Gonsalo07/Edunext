SET search_path TO public;

BEGIN;

CREATE TABLE users (
    id UUID PRIMARY KEY,
    dni VARCHAR(15) UNIQUE NOT NULL,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    carrera VARCHAR(100),
    ciclo INT,
    estado VARCHAR(30) DEFAULT 'ACTIVO',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_users_email ON users(email);

COMMIT;