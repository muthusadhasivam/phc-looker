view: user_master_last_login_time_is_not_more_than_current_ts {
  sql_table_name: `staging-tnphr.DATAQUALITY.user_master_last_login_time_is_not_more_than_current_ts`
    ;;

  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: last_login_time_is_not_more_than_current_ts {
    type: number
    sql: ${TABLE}.last_login_time_is_not_more_than_current_ts ;;
  }

  dimension: user_first_name {
    type: string
    sql: ${TABLE}.user_first_name ;;
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
