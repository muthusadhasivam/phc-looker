view: health_screening_duplicated_screening_id {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_screening_duplicated_screening_id`
    ;;

  dimension: duplicated_screening_id {
    type: number
    sql: ${TABLE}.Duplicated_screening_id ;;
  }

  dimension: screening_id {
    type: string
    sql: ${TABLE}.screening_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
