
CREATE EXTERNAL TABLE IF NOT EXISTS
  pigsample.bank_details (
    emp_id string,
    bank_name string,
    ifsc_code string,
    branch_name string
    --address string
  ) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
  WITH SERDEPROPERTIES (
    'serialization.format' = '        ',
    'field.delim' = ','
  ) LOCATION 'hdfs://client/data/bank_details/'
  TBLPROPERTIES ('has_encrypted_data'='false');