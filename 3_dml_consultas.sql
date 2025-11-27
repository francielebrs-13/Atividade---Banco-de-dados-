SELECT
    nome,
    especie,
    idade,
    data_resgate
FROM
    Animal
WHERE
    status_animal = 'Pronto para Adoção' 
ORDER BY
    data_resgate ASC; 
    
SELECT
    V.nome AS Voluntario,
    A.nome AS Animal,
    V.area_atuacao,
    C.data_inicio_cuidado
FROM
    Voluntario V
JOIN
    Cuidado C ON V.id_voluntario = C.id_voluntario -- Liga Voluntário ao Cuidado
JOIN
    Animal A ON C.id_animal = A.id_animal -- Liga Cuidado ao Animal
ORDER BY
    V.nome;
    
SELECT
    CA.nome AS Nome_Candidato,
    A.nome AS Nome_Animal,
    PA.status_processo
FROM
    Candidato CA
JOIN
    Processo_Adocao PA ON CA.id_candidato = PA.id_candidato
JOIN
    Animal A ON PA.id_animal = A.id_animal
WHERE
    PA.status_processo = 'Aprovado' AND A.id_animal = 2; 