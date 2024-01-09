view: facility {
  sql_table_name: `phc-platform.KPI.facility`
    ;;

  dimension: facility_block_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.facility_block_gid ;;
  }

  dimension: facility_block_name {
    type: string
    sql: ${TABLE}.facility_block_name ;;
  }

  dimension: facility_block_type {
    type: string
    sql: ${TABLE}.facility_block_type ;;
  }

  dimension: facility_count {
    type: number
    sql: ${TABLE}.facility_count ;;
  }

  dimension_group: facility_created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.facility_created_date ;;
  }

  dimension: facility_directorate_name {
    type: string
    sql: ${TABLE}.facility_directorate_name ;;
  }

  dimension: facility_hud_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.facility_hud_gid ;;
  }

  dimension: facility_hud_name {
    type: string
    sql: ${TABLE}.facility_hud_name ;;
  }

  dimension: facility_level {
    type: string
    sql: ${TABLE}.facility_level ;;
  }

  dimension: facility_owner_name {
    type: string
    sql: ${TABLE}.facility_owner_name ;;
  }

  dimension: facility_state_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.facility_state_gid ;;
  }

  dimension: facility_state_name {
    type: string
    sql: ${TABLE}.facility_state_name ;;
  }

  dimension: facilty_district_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.facilty_district_gid ;;
  }

  dimension: facilty_district_name {
    type: string
    sql: ${TABLE}.facilty_district_name ;;
  }

  dimension: is_facility_hq_street {
    type: string
    sql: ${TABLE}.is_facility_hq_street ;;
  }

  dimension: is_facility_hwc {
    type: string
    sql: ${TABLE}.is_facility_hwc ;;
  }

  dimension: is_facility_latitude_longtitude {
    type: string
    sql: ${TABLE}.is_facility_latitude_longtitude ;;
  }

  dimension: parent_facility_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.parent_facility_gid ;;
  }

  dimension: parent_facility_name {
    type: string
    sql: ${TABLE}.parent_facility_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      facilty_district_name,
      facility_hud_name,
      facility_state_name,
      facility_block_name,
      facility_owner_name,
      facility_directorate_name,
      parent_facility_name
    ]
  }
}
