view: health_history_update_register_null {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_history_update_register_null`
    ;;

  dimension: family_id {
    type: string
    sql: ${TABLE}.family_id ;;
  }

  dimension: medical_history_id {
    type: string
    sql: ${TABLE}.medical_history_id ;;
  }

  dimension: member_id {
    type: string
    sql: ${TABLE}.member_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
