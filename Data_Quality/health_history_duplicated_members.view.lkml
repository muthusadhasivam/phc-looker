view: health_history_duplicated_members {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_history_Duplicated_members`
    ;;

  dimension: duplicated_member_id {
    type: number
    sql: ${TABLE}.Duplicated_member_id ;;
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
