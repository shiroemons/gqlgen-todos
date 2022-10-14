create table todo (
    id         text                     not null primary key,
    "text"     text                     not null,
    done       boolean                  not null default false,
    user_id    text                     not null,
    created_at timestamp with time zone not null default current_timestamp,
    updated_at timestamp with time zone not null default current_timestamp
);
