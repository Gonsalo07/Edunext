SET search_path TO public;

BEGIN;

CREATE TABLE enrollments (
    id UUID PRIMARY KEY,
    student_id UUID NOT NULL,
    course_id UUID NOT NULL,
    estado VARCHAR(30) NOT NULL CHECK (
        estado IN ('PENDIENTE', 'CONFIRMADA', 'RECHAZADA')
    ),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (student_id, course_id)
);

CREATE INDEX idx_enrollments_student ON enrollments(student_id);
CREATE INDEX idx_enrollments_course ON enrollments(course_id);

COMMIT;