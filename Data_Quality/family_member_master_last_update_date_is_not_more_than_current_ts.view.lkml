view: family_member_master_last_update_date_is_not_more_than_current_ts {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_member_master_last_update_date_is_not_more_than_current_ts`
    ;;

  dimension: last_update_date_is_not_more_than_current_ts {
    type: number
    sql: ${TABLE}.last_update_date_is_not_more_than_current_ts ;;
  }

  dimension: member_id {
    type: string
    sql: ${TABLE}.member_id ;;
  }

  dimension: member_local_name {
    type: string
    sql: ${TABLE}.member_local_name ;;
  }

  dimension: member_name {
    type: string
    sql: ${TABLE}.member_name ;;
  }

  measure: count {
    type: count
    drill_fields: [member_local_name, member_name]
  }
}
