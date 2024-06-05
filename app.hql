CREATE DATABASE IF NOT EXISTS nyse_db;

USE nyse_db;

CREATE TABLE IF NOT EXISTS nyse_stage(
    ticker VARCHAR(255),
    trade_date INT,
    openprice FLOAT,
    highprice FLOAT,
    lowprice FLOAT,
    closeprice FLOAT,
    volume BIGINT
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' ;