view: user_parent_facility {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.user_parent_facility`
    ;;

  dimension: parent_facility {
    type: string
    sql: ${TABLE}.parent_facility ;;
  }

  dimension: parent_facility_name {
    type: string
    sql: ${TABLE}.parent_facility_name ;;
  }

  dimension: user_facility_id {
    type: string
    sql: ${TABLE}.user_facility_id ;;
  }

  measure: count {
    type: count
    drill_fields: [parent_facility_name]
  }
}
