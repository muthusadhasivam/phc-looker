view: live_individual_screening_count {
  sql_table_name: `phc-platform.KPI.live_individual_screening_count`
    ;;

  dimension: individual_screening_count {
    type: number
    sql: ${TABLE}.individual_screening_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
