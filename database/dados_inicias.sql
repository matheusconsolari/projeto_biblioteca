USE biblioteca_3ano;

DELETE FROM emprestimo;
DELETE FROM aluno;
DELETE FROM livro;
DELETE FROM bibliotecario;

ALTER TABLE emprestimo AUTO_INCREMENT = 1;
ALTER TABLE aluno AUTO_INCREMENT = 1;
ALTER TABLE livro AUTO_INCREMENT = 1;
ALTER TABLE bibliotecario AUTO_INCREMENT = 1;

#Inserts na tabela ALUNO
INSERT INTO aluno (nome, serie, turma, telefone) VALUES
('Matheus Consolari', '3º Ano', 'A', '(11) 98765-4321'),
('Heloa Lacerda', '3º Ano', 'A', '(11) 97654-3210'),
('Maria Clara Malagutti', '3º Ano', 'B', '(11) 96543-2109'),
('Vitoria dos Santos', '3º Ano', 'B', '(11) 95432-1098'),
('Juliana Paes', '3º Ano', 'C', '(11) 94321-0987');

#Inserts na tabela LIVRO
INSERT INTO livro (titulo, autor, categoria, status) VALUES
('Banco de Dados Relacional', 'Carlos Alberto', 'Tecnologia', 'Disponível'),
('Dom Casmurro', 'Machado de Assis', 'Literatura Brasileira', 'Emprestado'),
('O Cortiço', 'Aluísio Azevedo', 'Literatura Brasileira', 'Disponível'),
('A Hora da Estrela', 'Clarice Lispector', 'Romance', 'Disponível'),
('Estruturas de Dados em Java', 'Ana Maria Silva', 'Tecnologia', 'Emprestado');

#Inserts na tabela PROFESSOR
INSERT INTO professor (nome, telefone, email) VALUES
('José Jr', '(11) 91111-2222', 'jose.professor@escola.com'),
('Laura Souguellis', '(11) 92222-3333', 'laura.professora@escola.com'),
('Isadora Pompeo', '(11) 93333-4444', 'isadora.prof@escola.com'),
('Fernandinho', '(11) 94444-5555', 'fernandinho.prof@escola.com'),
('Juliano Son', '(11) 95555-6666', 'juliano.prof@escola.com');

#Inserts na tabela BIBLIOTECARIO
INSERT INTO bibliotecario (nome, email) VALUES
('Albert Einstein', 'albert.biblio@escola.com'),
('Rosimara', 'rosimara.biblio@escola.com'),
('Ana Maria Braga', 'anambraga.biblio@escola.com'),
('Roberto Carlos', 'roberto.biblio@escola.com'),
('Mauricio de Souza', 'msouza.biblio@escola.com');

#Inserts na tabela EMPRESTIMO
INSERT INTO emprestimo (id_aluno, id_livro, id_bibliotecario, data_emprestimo, data_prevista_devolucao, data_devolucao, status) VALUES
(1, 2, 1, '2026-03-01', '2026-03-15', NULL, 'Emprestado'),
(2, 5, 2, '2026-03-02', '2026-03-16', NULL, 'Emprestado'),
(3, 1, 3, '2026-02-10', '2026-02-24', '2026-02-22', 'Devolvido'),
(4, 3, 4, '2026-02-15', '2026-03-01', '2026-02-28', 'Devolvido'),
(5, 4, 5, '2026-03-05', '2026-03-19', NULL, 'Emprestado');

#Inserts na tabela USUARIO
INSERT INTO usuario (nome, email, senha, perfil, status, id_aluno, id_professor, id_bibliotecario) VALUES
('Matheus Consolari', 'matheus.c@escola.com', 'senha123', 'Aluno', 'Ativo', 1, NULL, NULL),
('Heloa Lacerda', 'heloa.l@escola.com', 'senha456', 'Aluno', 'Ativo', 2, NULL, NULL),
('Maria Clara Malagutti', 'mariaclara.m@escola.com', 'senha789', 'Aluno', 'Ativo', 3, NULL, NULL),
('Laura Souguellis', 'laura.professora@escola.com', 'senhaabc', 'Professor', 'Ativo', NULL, 4, NULL),
('Rosimara', 'rosimara.biblio@escola.com', 'senhadef', 'Bibliotecario', 'Ativo', NULL, NULL, 5);

UPDATE bibliotecario
SET id_usuario = 2
WHERE id_bibliotecario = 1;


UPDATE aluno
SET id_usuario = 3
WHERE id_aluno = 1;