USE biblioteca_3ano;

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

#Inserts na tabela BIBLIOTECARIO
INSERT INTO bibliotecario (nome, email) VALUES
('Albert Einstein', 'albert.biblio@escola.com'),
('Rosimara', 'rosimara.biblio@escola.com'),
('Ana Maria Braga', 'anambraga.biblio@escola.com'),
('Roberto Carlos', 'roberto.biblio@escola.com'),
('Mauricio de Souza', 'msouza.biblio@escola.com');  