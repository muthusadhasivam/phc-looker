view: family_master_pincode_validation_with_street_table {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_master_pincode_validation_with_street_table`
    ;;

  dimension: pincode_validation_with_street_table {
    type: number
    sql: ${TABLE}.pincode_validation_with_street_table ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
