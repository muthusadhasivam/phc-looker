view: health_drugs_master_last_update_date_gt_current_ts {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_drugs_master_last_update_date_gt_current_ts`
    ;;

  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
  }

  dimension: drug_name {
    type: string
    sql: ${TABLE}.drug_name ;;
  }

  dimension: mobile_number {
    type: number
    sql: ${TABLE}.mobile_number ;;
  }

  dimension: tnmsc_code {
    type: string
    sql: ${TABLE}.tnmsc_code ;;
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
    drill_fields: [drug_name, user_first_name, user_last_name]
  }
}
