view: live_user_sync {
  sql_table_name: `milky-way-galaxy-2707.KPI.live_user_sync`
    ;;

  dimension: users_sync_count {
    type: number
    sql: ${TABLE}.users_sync_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
