view: family_master_last_update_date_is_not_more_than_current_ts {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_master_last_update_date_is_not_more_than_current_ts`
    ;;

  dimension: family_id {
    type: string
    sql: ${TABLE}.family_id ;;
  }

  dimension: last_update_date_is_not_more_than_current_ts {
    type: number
    sql: ${TABLE}.last_update_date_is_not_more_than_current_ts ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
