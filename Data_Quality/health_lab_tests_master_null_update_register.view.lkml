view: health_lab_tests_master_null_update_register {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_lab_tests_master_null_update_register`
    ;;

  dimension: lab_test_name {
    type: string
    sql: ${TABLE}.lab_test_name ;;
  }

  measure: count {
    type: count
    drill_fields: [lab_test_name]
  }
}
