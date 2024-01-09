view: health_diagnosis_master_duplicated_diagnosis_name {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_diagnosis_master_duplicated_diagnosis_name`
    ;;

  dimension: diagnosis_name {
    type: string
    sql: ${TABLE}.diagnosis_name ;;
  }

  dimension: duplicated_diagnosis_name {
    type: number
    sql: ${TABLE}.Duplicated_diagnosis_name ;;
  }

  measure: count {
    type: count
    drill_fields: [diagnosis_name, duplicated_diagnosis_name]
  }
}
