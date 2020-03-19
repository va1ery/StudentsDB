--
-- File generated with SQLiteStudio v3.2.1 on Thu Mar 19 14:10:01 2020
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Оценки
CREATE TABLE Оценки (
    [Код студента]    BIGINT,
    [Дата экзамена 1] DATE,
    [Код предмета 1]  BIGINT,
    Оценка1           TINYINT,
    [Дата экзамена 2] DATE,
    [Код предмета 2]  BIGINT,
    Оценка2           TINYINT,
    [Дата экзамена 3] DATE,
    [Код предмета 3]  BIGINT,
    Оценка3           TINYINT
);


-- Table: Предметы
CREATE TABLE Предметы (
    [Код предмета]          BIGINT       PRIMARY KEY
                                         UNIQUE
                                         NOT NULL,
    [Наименование предмета] VARCHAR (50),
    [Описание предмета]     TEXT
);


-- Table: Специальности
CREATE TABLE Специальности (
    [Код специальности]          BIGINT       PRIMARY KEY
                                              NOT NULL
                                              UNIQUE,
    [Наименование специальности] VARCHAR (50),
    [Описание специальности]     TEXT
);


-- Table: Студенты
CREATE TABLE Студенты (
    [Код студента]         BIGINT       PRIMARY KEY
                                        NOT NULL
                                        UNIQUE,
    ФИО                    VARCHAR (50),
    Пол                    VARCHAR (1),
    [Дата рождения]        DATE,
    Родители               VARCHAR (50),
    Адрес                  TEXT,
    Телефон                VARCHAR (15),
    [Паспортные данные]    TEXT,
    [Номер зачётки]        BIGINT,
    [Дата поступления]     DATE,
    Группа                 VARCHAR (10),
    Курс                   INT,
    [Код специальности]    BIGINT,
    [Очная форма обучения] BIT
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
