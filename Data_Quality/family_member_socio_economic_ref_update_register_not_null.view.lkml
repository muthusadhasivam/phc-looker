view: family_member_socio_economic_ref_update_register_not_null {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_member_socio_economic_ref_update_register_not_null`
    ;;

  dimension: family_id {
    type: string
    sql: ${TABLE}.family_id ;;
  }

  dimension: update_register_not_null {
    type: string
    sql: ${TABLE}.update_register_not_null ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
