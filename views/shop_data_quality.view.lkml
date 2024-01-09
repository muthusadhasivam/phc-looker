view: shop_data_quality {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.shop_data_quality`
    ;;

  dimension: count_shop_data_quality {
    type: number
    sql: ${TABLE}.count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
