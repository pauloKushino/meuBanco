-- Inserir dados na tabela curso
INSERT INTO curso (nomeCurso, duracao, descricao, carga_horaria)
VALUES 
('Matemática Básica', '6 meses', 'Curso introdutório de matemática', 120),
('Física Avançada', '1 ano', 'Curso avançado de física teórica', 240),
('Química Orgânica', '8 meses', 'Curso sobre compostos orgânicos', 160);

-- Inserir dados na tabela sexualidade
INSERT INTO sexualidade (descricao)
VALUES 
('Masculino'),
('Feminino'),
('Não Binário');

-- Inserir dados na tabela professor
INSERT INTO professor (nome, idade, especialidade, email, curso_id)
VALUES 
('Carlos Silva', 45, 'Matemática', 'carlos.silva@escola.com', 1),
('Ana Souza', 38, 'Física', 'ana.souza@escola.com', 2),
('João Pereira', 50, 'Química', 'joao.pereira@escola.com', 3);

-- Inserir dados na tabela aluno
INSERT INTO aluno (nome, idade, matricula, email, data_nascimento, curso_id, sexualidade_id)
VALUES 
('Maria Oliveira', 20, 'MAT2025001', 'maria.oliveira@escola.com', '2005-03-15', 1, 2),
('Pedro Santos', 22, 'FIS2025002', 'pedro.santos@escola.com', '2003-07-20', 2, 1),
('Joana Costa', 19, 'QUI2025003', 'joana.costa@escola.com', '2006-01-10', 3, 2);

-- Inserir dados na tabela chamada
INSERT INTO chamada (data, curso_id, professor_id)
VALUES 
('2025-08-10', 1, 1),
('2025-08-11', 2, 2),
('2025-08-12', 3, 3);

-- Inserir dados na tabela chamada_aluno
INSERT INTO chamada_aluno (chamada_id, aluno_id, presenca)
VALUES 
(1, 1, 'Presente'),
(1, 2, 'Faltou'),
(2, 2, 'Presente'),
(3, 3, 'Presente');