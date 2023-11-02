-- +goose Up
-- +goose StatementBegin
INSERT INTO articles (title) VALUES
('タイトル 1'),
('タイトル 2'),
('タイトル 3'),
('タイトル 4'),
('タイトル 5'),
('タイトル 6'),
('タイトル 7');

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
SELECT 'down SQL query';
-- +goose StatementEnd
