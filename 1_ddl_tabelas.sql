BEGIN TRANSACTION;

CREATE TABLE Animal (
    id_animal INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especie TEXT,
    idade INTEGER,
    data_resgate TEXT NOT NULL,
    status_animal TEXT
);

CREATE TABLE Voluntario (
    id_voluntario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT,
    telefone TEXT,
    area_atuacao TEXT
);

CREATE TABLE Candidato (
    id_candidato INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT,
    telefone TEXT,
    endereco TEXT
);

CREATE TABLE Cuidado (
    id_cuidado INTEGER PRIMARY KEY AUTOINCREMENT,
    data_inicio_cuidado TEXT NOT NULL,
    data_fim_cuidado TEXT,
    id_animal INTEGER NOT NULL,
    id_voluntario INTEGER NOT NULL,
    FOREIGN KEY (id_animal) REFERENCES Animal(id_animal),
    FOREIGN KEY (id_voluntario) REFERENCES Voluntario(id_voluntario)
);

CREATE TABLE Processo_Adocao (
    id_processo INTEGER PRIMARY KEY AUTOINCREMENT,
    data_inscricao TEXT NOT NULL,
    status_processo TEXT, 
    data_aprovacao TEXT,
    id_animal INTEGER NOT NULL,
    id_candidato INTEGER NOT NULL,
    FOREIGN KEY (id_animal) REFERENCES Animal(id_animal),
    FOREIGN KEY (id_candidato) REFERENCES Candidato(id_candidato)
);

COMMIT;