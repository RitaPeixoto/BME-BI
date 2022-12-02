DROP TABLE IF EXISTS Title CASCADE;
DROP TABLE IF EXISTS StreamingService CASCADE;
DROP TABLE IF EXISTS TitleService CASCADE;
DROP TABLE IF EXISTS Subscription CASCADE;
DROP TABLE IF EXISTS Revenue_area CASCADE;
DROP TABLE IF EXISTS Subcribers_area CASCADE;


CREATE TABLE Title (
    id              INT PRIMARY KEY,
    title           VARCHAR(200) NOT NULL,
    age             VARCHAR(50),
    release_year    INT NOT NULL,
    type            VARCHAR(10) NOT NULL,
    duration        VARCHAR(50)
);

CREATE TABLE StreamingService(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);


CREATE TABLE TitleService (
    id_title INT NOT NULL,
    id_service INT NOT NULL,
    FOREIGN KEY (id_title) REFERENCES Title(id) ON DELETE CASCADE,
    FOREIGN KEY (id_service) REFERENCES StreamingService(id) ON DELETE CASCADE,
    PRIMARY KEY (id_title, id_service)
);

CREATE TABLE Subscription (
    country_code VARCHAR(10) PRIMARY KEY,
    country VARCHAR(50) NOT NULL,
    total_library_size INT NOT NULL,
    no_of_tvshows INT NOT NULL,
    no_of_movies INT NOT NULL,
    cost_per_month_basic FLOAT NOT NULL,
    cost_per_month_standard FLOAT NOT NULL,
    cost_per_month_premium FLOAT NOT NULL,
    average_salary VARCHAR(15) NOT NULL
);

CREATE TABLE Revenue_area (
    area VARCHAR(255) NOT NULL PRIMARY KEY,
    Q1_2018 BIGINT NOT NULL,
    Q2_2018 BIGINT NOT NULL,
    Q3_2018 BIGINT NOT NULL,
    Q4_2018 BIGINT NOT NULL,
    Q1_2019 BIGINT NOT NULL,
    Q2_2019 BIGINT NOT NULL,
    Q3_2019 BIGINT NOT NULL,
    Q4_2019 BIGINT NOT NULL,
    Q1_2020 BIGINT NOT NULL,
    Q2_2020 BIGINT NOT NULL,
    total_revenue_2018 BIGINT NOT NULL,
    total_revenue_2019 BIGINT NOT NULL,
    total_revenue_2020 BIGINT NOT NULL
);

CREATE TABLE Subcribers_area (
area VARCHAR(255) NOT NULL PRIMARY KEY,
    Q1_2018 BIGINT NOT NULL,
    Q2_2018 BIGINT NOT NULL,
    Q3_2018 BIGINT NOT NULL,
    Q4_2018 BIGINT NOT NULL,
    Q1_2019 BIGINT NOT NULL,
    Q2_2019 BIGINT NOT NULL,
    Q3_2019 BIGINT NOT NULL,
    Q4_2019 BIGINT NOT NULL,
    Q1_2020 BIGINT NOT NULL,
    Q2_2020 BIGINT NOT NULL
);