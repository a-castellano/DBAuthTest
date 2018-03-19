CREATE TABLE roles (
    id            INTEGER PRIMARY KEY AUTOINCREMENT,
    role          VARCHAR(20) NOT NULL UNIQUE
);
CREATE TABLE users (
    id            INTEGER PRIMARY KEY AUTOINCREMENT,
    username      VARCHAR(30) NOT NULL UNIQUE,
    email         VARCHAR(50) NOT NULL,
    password      VARCHAR(128) NOT NULL,
    last_modified DATETIME NOT NULL
);
CREATE TABLE user_roles (
    user_id       INTEGER NOT NULL REFERENCES users(id),
    role_id       INTEGER NOT NULL REFERENCES roles(id),
    PRIMARY KEY(user_id, role_id)
);
