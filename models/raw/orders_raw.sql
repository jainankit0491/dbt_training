{{
    config(
        materialized='table'
    )
}}
SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS