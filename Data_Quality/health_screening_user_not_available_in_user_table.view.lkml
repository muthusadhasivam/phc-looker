view: health_screening_user_not_available_in_user_table {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_screening_user_not_available_in_user_table`
    ;;

  dimension: user_id_not_available_in_user_table {
    type: string
    sql: ${TABLE}.user_id_not_available_in_user_table ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
