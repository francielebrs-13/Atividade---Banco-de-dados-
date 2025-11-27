-- 1. UPDATE: Atualiza a área de atuação do Voluntário Luciano (Entidade Principal).
UPDATE Voluntario
SET area_atuacao = 'Adoção e Eventos'
WHERE nome = 'DR.LUCIANO';

-- 2. UPDATE: Atualiza o status de um animal (Entidade Principal).
UPDATE Animal
SET status_animal = 'Pronto para Adoção'
WHERE nome = 'Rex';

-- 3. UPDATE: Registra a data de fim do cuidado que estava NULL (Tabela de Ligação).
UPDATE Cuidado
SET data_fim_cuidado = '2025-12-01'
WHERE id_animal = 2 AND data_fim_cuidado IS NULL;

-- 1. DELETE: Remove um processo de adoção que falhou (Tabela de Ligação).
DELETE FROM Processo_Adocao
WHERE status_processo = 'Em Análise';

-- 2. DELETE: Remove um candidato que não tem processos ativos (Entidade Principal).
DELETE FROM Candidato
WHERE nome = 'FRAN';

-- 3. DELETE: Remove um registro de cuidado já finalizado (Tabela de Ligação).
DELETE FROM Cuidado
WHERE data_fim_cuidado IS NOT NULL AND id_animal = 1;