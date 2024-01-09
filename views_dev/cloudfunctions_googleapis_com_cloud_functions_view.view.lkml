view: cloudfunctions_googleapis_com_cloud_functions_view {
  sql_table_name: `cobalt-catalyst-318208.dev_cloud_functions.cloudfunctions_googleapis_com_cloud_functions_view`
    ;;

  dimension: resource_function_name {
    type: string
    sql: ${TABLE}.resource_function_name ;;
  }

  dimension: resource_project_id {
    type: string
    sql: ${TABLE}.resource_project_id ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.resource_type ;;
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }

  dimension: text_payload {
    type: string
    sql: ${TABLE}.textPayload ;;
  }

  dimension: text_payload_app_version {
    type: string
    sql: ${TABLE}.textPayload_app_version ;;
  }

  dimension: text_payload_message {
    type: string
    sql: ${TABLE}.textPayload_message ;;
  }

  dimension: text_payload_user_id {
    type: string
    sql: ${TABLE}.textPayload_user_id ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension_group: timestamp_ist {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.timestamp_IST ;;
  }

  measure: count {
    type: count
    drill_fields: [resource_function_name]
  }
}
