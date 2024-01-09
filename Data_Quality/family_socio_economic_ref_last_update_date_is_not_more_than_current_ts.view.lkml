view: family_socio_economic_ref_last_update_date_is_not_more_than_current_ts {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_socio_economic_ref_last_update_date_is_not_more_than_current_ts`
    ;;

  dimension: last_update_date_is_not_more_than_current_ts {
    type: string
    sql: ${TABLE}.last_update_date_is_not_more_than_current_ts ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
