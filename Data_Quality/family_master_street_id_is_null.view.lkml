view: family_master_street_id_is_null {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_master_street_id_is_null`
    ;;

  dimension: street_id_is_null {
    type: string
    sql: ${TABLE}.street_id_is_null ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
