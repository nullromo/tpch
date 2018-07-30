# TPC-H Benchmark for MYSQL

## Steps

1. Create an empty database

1. Run `create_tables.ddl` or `create_tables_compressed.ddl` to create all the tables

    `sql <database> < create_tables.ddl`

1. Run `set_up_tables.ri` to modify all the tables so that they are set up correctly

    `sql <database> < set_up_tables.ri`

1. Use dbgen to generate some data

1. Run `load_tables.load` to all the data into the database

    `sql <database> < load_tables.load`

1. Use `get_all_query_time.pl` to get the runtime for all the queries

    `./get_all_query_time.pl <database>`

1. Use `get_query_time.pl` to get runtime of a single query

    `./get_query_time.pl <query file> <database>`

1. `restart_mysql.pl` restarts the mysql server

    `./restart_mysql.pl`
