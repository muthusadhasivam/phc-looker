view: family_master_duplicated_phr_family_id {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_master_Duplicated_phr_family_id`
    ;;

  dimension: duplicated_phr_family_id {
    type: number
    sql: ${TABLE}.Duplicated_phr_family_id ;;
  }

  dimension: phr_family_id {
    type: number
    sql: ${TABLE}.phr_family_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
