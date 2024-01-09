view: live_family {
  sql_table_name: `phc-platform.KPI.live_family`
    ;;

  dimension: new_records_added {
    type: number
    sql: ${TABLE}.new_records_added ;;
  }

  dimension: new_updated_records {
    type: number
    sql: ${TABLE}.new_updated_records ;;
  }

  dimension: total_family_id {
    type: number
    sql: ${TABLE}.total_family_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
