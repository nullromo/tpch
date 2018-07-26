# TPC-H Benchmark, specific for MYSQL

## Steps
- Create an empty database
- Run create_tables.ddl or create_tables_compressed.ddl to create all the tables
- Run set_up_tables.ri to modify all the tables so that they are set up correctly
- Use dbgen to generate some data
- Run load_tables.load to all the data into the database
- Use get_all_query_time.pl to get the runtime for all the queries
- Use get_query_time.pl to get runtime of a single query
- `restart_mysql.pl` restarts the mysql server


- tablescanquery.pl generates scan query for all tables
