view: health_history_mtm_benefited_in_screening_not_in_history {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_history_mtm_benefited_in_screening_not_in_history`
    ;;

  dimension: family_id {
    type: string
    sql: ${TABLE}.family_id ;;
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
