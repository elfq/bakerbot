CREATE TABLE IF NOT EXISTS Users (
    id              BIGINT NOT NULL,
    name            VARCHAR(37) NOT NULL,
    badges          TEXT DEFAULT NULL,
    created         TIMESTAMP NOT NULL DEFAULT NOW(),
    banned          BOOLEAN NOT NULL DEFAULT FALSE,
    staff           BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Bakeries (
    owner_id        BIGINT NOT NULL,
    name            VARCHAR(256) NOT NULL,
    inventory       TEXT NOT NULL,
    created         TIMESTAMP NOT NULL DEFAULT NOW(),
    total_xp        BIGINT NOT NULL DEFAULT 0,
    owned_h         BIGINT NOT NULL DEFAULT 0,
    PRIMARY KEY (owner_id)
)