view: user_master_facility_id_not_null {
  sql_table_name: `staging-tnphr.DATAQUALITY.user_master_facility_id_not_null`
    ;;

  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: facility_id_not_null {
    type: number
    value_format_name: id
    sql: ${TABLE}.facility_id_not_null ;;
  }

  dimension: user_first_name {
    type: string
    sql: ${TABLE}.user_first_name ;;
  }

  dimension: user_last_name {
    type: string
    sql: ${TABLE}.user_last_name ;;
  }

  measure: count {
    type: count
    drill_fields: [user_first_name, user_last_name]
  }
}