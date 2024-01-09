view: shop_street_data_quality {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.shop_street_data_quality`
    ;;

  dimension: count_shop_street_data_quality {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.district ;;
  }

  dimension: taluk {
    type: string
    sql: ${TABLE}.taluk ;;
  }

  dimension: village {
    type: string
    sql: ${TABLE}.village ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
