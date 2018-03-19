CREATE TABLE roles (
    id            INTEGER PRIMARY KEY AUTOINCREMENT,
    role          TEXT NOT NULL UNIQUE
);
CREATE TABLE users (
    id            INTEGER PRIMARY KEY AUTOINCREMENT,
    username      TEXT NOT NULL UNIQUE,
    email         TEXT NOT NULL,
    password      TEXT NOT NULL,
    last_modified DATETIME NOT NULL
);
CREATE TABLE user_roles (
    user_id       INTEGER NOT NULL REFERENCES users(id),
    role_id       INTEGER NOT NULL REFERENCES roles(id),
    PRIMARY KEY(user_id, role_id)
);
