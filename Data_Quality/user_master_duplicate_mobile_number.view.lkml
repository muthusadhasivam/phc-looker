view: user_master_duplicate_mobile_number {
  sql_table_name: `staging-tnphr.DATAQUALITY.user_master_Duplicate_mobile_number`
    ;;

  dimension: duplicate_mobile_number {
    type: number
    sql: ${TABLE}.Duplicate_mobile_number ;;
  }

  dimension: mobile_number {
    type: number
    sql: ${TABLE}.mobile_number ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
