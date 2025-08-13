ALTER TABLE professor
ADD CONSTRAINT unique_email UNIQUE (email);

ALTER TABLE aluno
ADD CONSTRAINT unique_email UNIQUE (email);

ALTER TABLE aluno
ADD CONSTRAINT unique_matricula UNIQUE (matricula);

ALTER TABLE aluno
MODIFY idade INT DEFAULT 18;

ALTER TABLE chamada_aluno
MODIFY presenca ENUM('Presente', 'Faltou') DEFAULT 'Faltou';