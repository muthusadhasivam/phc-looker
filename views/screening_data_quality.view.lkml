view: screening_data_quality {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.screening_data_quality`
    ;;

  dimension: count_of_mob_member {
    type: number
    sql: ${TABLE}.count_of_mob_member ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
