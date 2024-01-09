view: family_master_facility_id_is_null {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_master_facility_id_is_null`
    ;;

  dimension: facility_id_is_null {
    type: string
    sql: ${TABLE}.facility_id_is_null ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
