SET search_path TO public;

BEGIN;

CREATE TABLE courses (
    id UUID PRIMARY KEY,
    codigo VARCHAR(20) UNIQUE NOT NULL,
    nombre VARCHAR(150) NOT NULL,
    creditos INT NOT NULL,
    cupos_totales INT NOT NULL,
    cupos_disponibles INT NOT NULL,
    ciclo INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE schedules (
    id UUID PRIMARY KEY,
    course_id UUID NOT NULL,
    dia VARCHAR(15) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL
);

CREATE INDEX idx_courses_codigo ON courses(codigo);
CREATE INDEX idx_schedules_course ON schedules(course_id);

COMMIT;