view: final_family_socio_economic_ref_update_register_not_null {
  sql_table_name: `staging-tnphr.DATAQUALITY.final_family_socio_economic_ref_update_register_not_null`
    ;;

  dimension: update_register_not_null {
    type: string
    sql: ${TABLE}.update_register_not_null ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
