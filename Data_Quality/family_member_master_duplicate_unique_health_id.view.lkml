view: family_member_master_duplicate_unique_health_id {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_member_master_Duplicate_unique_health_id`
    ;;

  dimension: duplicate_unique_health_id {
    type: number
    sql: ${TABLE}.Duplicate_unique_health_id ;;
  }

  dimension: unique_health_id {
    type: string
    sql: ${TABLE}.unique_health_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
