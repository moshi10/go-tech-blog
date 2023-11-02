-- +goose Up
-- +goose StatementBegin
CREATE TABLE articles
(
    id INT AUTO_INCREMENT,
    title VARCHAR(100),
    PRIMARY KEY (id)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
    DROP TABLE articles;
-- +goose StatementEnd
