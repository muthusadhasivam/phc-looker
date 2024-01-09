view: user_role_master_duplicate_reference_id {
  sql_table_name: `staging-tnphr.DATAQUALITY.user_role_master_Duplicate_reference_id`
    ;;

  dimension: duplicate_reference_id {
    type: number
    sql: ${TABLE}.Duplicate_reference_id ;;
  }

  dimension: reference_id {
    type: number
    sql: ${TABLE}.reference_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
