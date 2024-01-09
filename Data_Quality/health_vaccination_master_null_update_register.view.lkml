view: health_vaccination_master_null_update_register {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_vaccination_master_null_update_register`
    ;;

  dimension: vaccination_id {
    type: string
    sql: ${TABLE}.vaccination_id ;;
  }

  dimension: vaccination_name {
    type: string
    sql: ${TABLE}.vaccination_name ;;
  }

  measure: count {
    type: count
    drill_fields: [vaccination_name]
  }
}
