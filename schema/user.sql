CREATE TABLE users
(
    id         BIGINT PRIMARY KEY AUTO_INCREMENT,
    email      VARCHAR(255) UNIQUE NOT NULL,
    password   VARCHAR(255)        NOT NULL,
    name       VARCHAR(255)        NOT NULL,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE user_login_history
(
    id         BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id    BIGINT,
    login_at   TIMESTAMP,
    ip_address VARCHAR(45),
    FOREIGN KEY (user_id) REFERENCES users (id)
);