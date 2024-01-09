view: family_data_quality {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.family_data_quality`
    ;;

  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }

  dimension: count_family_data_quality {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
  }

  dimension: family_id {
    type: string
    sql: ${TABLE}.family_id ;;
  }

  dimension: village_name {
    type: string
    sql: ${TABLE}.village_name ;;
  }

  measure: count {
    type: count
    drill_fields: [district_name, block_name, village_name]
  }

  measure: count_member {
    type: count_distinct
    sql:${TABLE}.family_id;;
  }


}
