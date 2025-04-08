-- Doctors
INSERT INTO doctors (first_name, last_name, specialty, email, phone, password) 
VALUES ('Juan', 'Pérez', 'Cardiología', 'juan.perez@example.com', '555-0100', '12345');

INSERT INTO doctors (first_name, last_name, specialty, email, phone, password) 
VALUES ('María', 'García', 'Dermatología', 'maria.garcia@example.com', '555-0101', '12345');

-- Patients
INSERT INTO patients (first_name, last_name, date_of_birth, email, phone, password) 
VALUES ('Carlos', 'Sánchez', TO_DATE('1980-05-15', 'YYYY-MM-DD'), 'carlos.sanchez@example.com', '555-0200', '12345');

INSERT INTO patients (first_name, last_name, date_of_birth, email, phone, password) 
VALUES ('Ana', 'López', TO_DATE('1990-09-30', 'YYYY-MM-DD'), 'ana.lopez@example.com', '555-0201', '12345');

-- Appointments
INSERT INTO appointments (doctor_id, patient_id, appointment_date, status, notes, start_time, end_time) 
VALUES (1, 1, TO_DATE('2025-04-10', 'YYYY-MM-DD'), 'Programada', 'Revisión rutinaria', 
        TO_TIMESTAMP('2025-04-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),
        TO_TIMESTAMP('2025-04-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO appointments (doctor_id, patient_id, appointment_date, status, notes, start_time, end_time) 
VALUES (2, 2, TO_DATE('2025-04-11', 'YYYY-MM-DD'), 'Programada', 'Consulta dermatológica inicial',
        TO_TIMESTAMP('2025-04-11 11:30:00', 'YYYY-MM-DD HH24:MI:SS'),
        TO_TIMESTAMP('2025-04-11 12:00:00', 'YYYY-MM-DD HH24:MI:SS'));