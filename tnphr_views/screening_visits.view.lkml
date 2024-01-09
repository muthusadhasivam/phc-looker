view: screening_visits {
  sql_table_name: `staging-tnphr.KPI.screening_visits`
    ;;

  dimension: citizen_screening_visits {
    type: string
    sql: ${TABLE}.citizen_screening_visits ;;
  }

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
