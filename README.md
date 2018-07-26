# TPC-H Benchmark, specific for MYSQL

- create an empty database
- run create_tables.ddl or create_tables_compressed.ddl to create all the tables
- run set_up_tables.ri to modify all the tables so that they are set up correctly
- use dbgen to generate some data
- run load_tables.load to all the data into the database
- use get_all_query_time.pl to get the runtime for all the queries
- use get_query_time.pl to get runtime of a single query
- restart_mysql.pl restarts the mysql server


- tablescanquery.pl generates scan query for all tables
