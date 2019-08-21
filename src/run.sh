SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
"create table users(id integer primary key, name text not null);" \
"insert into users(name) values('Yamada');" \
"create table items(id integer primary key, name text not null);" \
"insert into items(name) values('おにぎり');" \
".schema"

# パターン指定
sqlite3 :memory: \
"create table users(id integer primary key, name text not null);" \
"insert into users(name) values('Yamada');" \
"create table items(id integer primary key, name text not null);" \
"insert into items(name) values('おにぎり');" \
".schema u*"

# --indent
sqlite3 :memory: \
"create table users(id integer primary key, name text not null);" \
"insert into users(name) values('Yamada');" \
"create table items(id integer primary key, name text not null);" \
"insert into items(name) values('おにぎり');" \
".schema --indent"

# 他の方法
sqlite3 :memory: \
"create table users(id integer primary key, name text not null);" \
"insert into users(name) values('Yamada');" \
"create table items(id integer primary key, name text not null);" \
"insert into items(name) values('おにぎり');" \
"select sql from sqlite_master;"

