INSERT INTO Candidato(nome, email, telefone, endereco)
VALUES
('ANA DE LIMA', 'ana@email.com', '8399306-4335', 'Rua A'),
('CAIRON MOTA', 'cairon@email.com', '8399000-4335', 'Rua B'),
('FRAN', 'fran@email.com', '8399000-4335', 'Rua C');

INSERT INTO Voluntario(nome, email, telefone, area_atuacao)
VALUES
('DRA.FRANCIELE TESTE', 'franciele@ong.com', '99999-1111', 'Saúde Animal'),
('DR.CAIRON LUCENA', 'cairon@ong.com', '99999-2222', 'Resgate'),
('DR.LUCIANO', 'luciano@ong.com', '99999-3333', 'Adoção');

INSERT INTO Animal(nome, especie, idade, data_resgate, status_animal)
VALUES
('Rex', 'Cachorro', 5, '2025-11-01', 'Em Cuidado'),
('Cleyton', 'Gato', 4, '2025-11-05', 'Pronto para Adoção'),
('Thor', 'Cachorro', 6, '2025-11-10', 'Em Cuidado');

INSERT INTO Cuidado(data_inicio_cuidado, data_fim_cuidado, id_animal, id_voluntario)
VALUES
('2025-11-19', '2025-11-25', 1, 1), 
('2025-11-15', NULL, 2, 2),
('2025-12-23', '2025-12-25', 1, 1);

INSERT INTO Processo_Adocao(data_inscricao, status_processo, id_animal, id_candidato)
VALUES
('2025-11-20', 'Em Análise', 1, 1), 
('2025-11-21', 'Aprovado', 2, 2);