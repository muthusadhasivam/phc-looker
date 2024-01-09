view: health_vaccination_master_duplicated_vaccination_name {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_vaccination_master_duplicated_vaccination_name`
    ;;

  dimension: duplicated_vaccination_name {
    type: number
    sql: ${TABLE}.Duplicated_vaccination_name ;;
  }

  dimension: vaccination_name {
    type: string
    sql: ${TABLE}.vaccination_name ;;
  }

  measure: count {
    type: count
    drill_fields: [duplicated_vaccination_name, vaccination_name]
  }
}
