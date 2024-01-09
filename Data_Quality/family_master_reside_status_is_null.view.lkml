view: family_master_reside_status_is_null {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_master_reside_status_is_null`
    ;;

  dimension: reside_status_is_null {
    type: string
    sql: ${TABLE}.reside_status_is_null ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
