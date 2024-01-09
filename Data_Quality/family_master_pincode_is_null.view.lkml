view: family_master_pincode_is_null {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_master_pincode_is_null`
    ;;

  dimension: pincode_is_null {
    type: string
    sql: ${TABLE}.pincode_is_null ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
