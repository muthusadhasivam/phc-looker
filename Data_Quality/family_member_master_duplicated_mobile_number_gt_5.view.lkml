view: family_member_master_duplicated_mobile_number_gt_5 {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_member_master_duplicated_mobile_number_gt_5`
    ;;

  dimension: duplicated_mobile_number_count {
    type: number
    sql: ${TABLE}.duplicated_mobile_number_count ;;
  }

  dimension: mobile_number {
    type: number
    sql: ${TABLE}.mobile_number ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
