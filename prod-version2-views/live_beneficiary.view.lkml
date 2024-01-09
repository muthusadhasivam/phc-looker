view: live_beneficiary {
  sql_table_name: `phc-platform.KPI.live_beneficiary`
    ;;

  dimension: new_records_added {
    type: number
    sql: ${TABLE}.new_records_added ;;
  }

  dimension: new_updated_records {
    type: number
    sql: ${TABLE}.new_updated_records ;;
  }

  dimension: total_population {
    type: number
    sql: ${TABLE}.total_population ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
