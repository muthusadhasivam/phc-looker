view: health_lab_tests_master_duplicate_lab_test_name {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_lab_tests_master_duplicate_lab_test_name`
    ;;

  dimension: duplicated_lab_test_name {
    type: number
    sql: ${TABLE}.Duplicated_lab_test_name ;;
  }

  dimension: lab_test_name {
    type: string
    sql: ${TABLE}.lab_test_name ;;
  }

  measure: count {
    type: count
    drill_fields: [duplicated_lab_test_name, lab_test_name]
  }
}
