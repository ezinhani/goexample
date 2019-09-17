CREATE DATABASE api;

-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp" SCHEMA public;
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE IF NOT EXISTS users (
    uuid DEFAULT gen_random_uuid(),
    name VARCHAR(255) NOT NULL,
    last VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password CHAR(60) NOT NULL,
    created TIMESTAMPTZ NOT NULL,
    active BOOLEAN NOT NULL DEFAULT true,
    PRIMARY KEY (uuid)
);