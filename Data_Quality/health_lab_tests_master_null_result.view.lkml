view: health_lab_tests_master_null_result {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_lab_tests_master_null_result`
    ;;

  dimension: lab_test_name {
    type: string
    sql: ${TABLE}.lab_test_name ;;
  }

  dimension: result_entry_type {
    type: string
    sql: ${TABLE}.result_entry_type ;;
  }

  measure: count {
    type: count
    drill_fields: [lab_test_name]
  }
}
