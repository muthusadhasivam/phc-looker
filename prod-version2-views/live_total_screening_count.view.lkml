view: live_total_screening_count {
  sql_table_name: `phc-platform.KPI.live_total_screening_count`
    ;;

  dimension: total_screening_count {
    type: number
    sql: ${TABLE}.total_screening_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
