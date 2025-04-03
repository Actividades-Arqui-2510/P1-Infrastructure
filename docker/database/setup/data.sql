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
INSERT INTO appointments (doctor_id, patient_id, appointment_date, appointment_time, status, notes) 
VALUES (1, 1, TO_DATE('2025-04-10', 'YYYY-MM-DD'), '10:00 AM', 'Programada', 'Revisión rutinaria');

INSERT INTO appointments (doctor_id, patient_id, appointment_date, appointment_time, status, notes) 
VALUES (2, 2, TO_DATE('2025-04-11', 'YYYY-MM-DD'), '11:30 AM', 'Programada', 'Consulta dermatológica inicial');
