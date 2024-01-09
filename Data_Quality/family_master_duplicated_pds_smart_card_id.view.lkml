view: family_master_duplicated_pds_smart_card_id {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_master_Duplicated_pds_smart_card_id`
    ;;

  dimension: duplicated_pds_smart_card_id {
    type: number
    sql: ${TABLE}.Duplicated_pds_smart_card_id ;;
  }

  dimension: pds_smart_card_id {
    type: number
    sql: ${TABLE}.pds_smart_card_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
