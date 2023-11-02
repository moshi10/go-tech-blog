-- +goose Up
-- +goose StatementBegin
alter table articles
  add column body mediumtext NOT NULL,
  add column created datetime,
  add column updated datetime;

update articles set created = CURRENT_TIMESTAMP where articles.created is null;
update articles set updated = CURRENT_TIMESTAMP where articles.updated is null;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
alter table articles
  drop column body,
  drop column created,
  drop column updated;
-- +goose StatementEnd
