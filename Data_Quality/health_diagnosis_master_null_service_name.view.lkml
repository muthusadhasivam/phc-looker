view: health_diagnosis_master_null_service_name {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_diagnosis_master_null_service_name`
    ;;

  dimension: diagnosis_name {
    type: string
    sql: ${TABLE}.diagnosis_name ;;
  }

  dimension: reference_id {
    type: number
    sql: ${TABLE}.reference_id ;;
  }

  measure: count {
    type: count
    drill_fields: [diagnosis_name]
  }
}
