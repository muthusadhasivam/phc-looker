view: health_diagnosis_master_last_update_date_gt_current_ts {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_diagnosis_master_last_update_date_gt_current_ts`
    ;;

  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
  }

  dimension: diagnosis_name {
    type: string
    sql: ${TABLE}.diagnosis_name ;;
  }

  dimension: mobile_number {
    type: number
    sql: ${TABLE}.mobile_number ;;
  }

  dimension: reference_id {
    type: number
    sql: ${TABLE}.reference_id ;;
  }

  dimension: user_first_name {
    type: string
    sql: ${TABLE}.user_first_name ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_last_name {
    type: string
    sql: ${TABLE}.user_last_name ;;
  }

  measure: count {
    type: count
    drill_fields: [user_first_name, user_last_name, diagnosis_name]
  }
}
