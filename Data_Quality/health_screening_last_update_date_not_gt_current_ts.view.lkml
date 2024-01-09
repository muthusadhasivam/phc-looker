view: health_screening_last_update_date_not_gt_current_ts {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_screening_last_update_date_not_gt_current_ts`
    ;;

  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
  }

  dimension: family_id {
    type: string
    sql: ${TABLE}.family_id ;;
  }

  dimension: member_id {
    type: string
    sql: ${TABLE}.member_id ;;
  }

  dimension: mobile_number {
    type: number
    sql: ${TABLE}.mobile_number ;;
  }

  dimension: screening_id {
    type: string
    sql: ${TABLE}.screening_id ;;
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
    drill_fields: [user_first_name, user_last_name]
  }
}
