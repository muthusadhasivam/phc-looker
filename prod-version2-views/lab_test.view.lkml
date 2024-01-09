view: lab_test {
  sql_table_name: `phc-platform.KPI.lab_test`
    ;;

  dimension: citizen_block_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_block_gid ;;
  }

  dimension: citizen_block_name {
    type: string
    sql: ${TABLE}.citizen_block_name ;;
  }

  dimension: citizen_block_type {
    type: string
    sql: ${TABLE}.citizen_block_type ;;
  }

  dimension: citizen_district_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_district_gid ;;
  }

  dimension: citizen_district_name {
    type: string
    sql: ${TABLE}.citizen_district_name ;;
  }

  dimension: citizen_hud_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_hud_gid ;;
  }

  dimension: citizen_hud_name {
    type: string
    sql: ${TABLE}.citizen_hud_name ;;
  }

  dimension: citizen_state_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_state_gid ;;
  }

  dimension: citizen_state_name {
    type: string
    sql: ${TABLE}.citizen_state_name ;;
  }

  dimension: citizen_street_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_street_gid ;;
  }

  dimension: citizen_street_name {
    type: string
    sql: ${TABLE}.citizen_street_name ;;
  }


  dimension: user_facility_name {
    type: string
    sql: ${TABLE}.user_facility_name  ;;
  }

  dimension: user_category_name {
    type: string
    sql: ${TABLE}.user_category_name  ;;
  }

  dimension: citizen_village_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_village_gid ;;
  }

  dimension: citizen_village_name {
    type: string
    sql: ${TABLE}.citizen_village_name ;;
  }

  dimension: individual_screening_count {
    type: number
    sql: ${TABLE}.individual_screening_count ;;
  }

  dimension: lab_test_name {
    type: string
    sql: ${TABLE}.lab_test_name ;;
  }

  dimension: total_screening_count {
    type: number
    sql: ${TABLE}.total_screening_count ;;
  }

  dimension: user_directorate {
    type: string
    sql: ${TABLE}.user_directorate ;;
  }

  dimension: user_block_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.user_block_gid ;;
  }

  dimension: user_block_name {
    type: string
    sql: ${TABLE}.user_block_name ;;
  }

  dimension: user_district_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.user_district_gid ;;
  }

  dimension: user_district_name {
    type: string
    sql: ${TABLE}.user_district_name ;;
  }

  dimension: user_hud_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.user_hud_gid ;;
  }

  dimension: user_hud_name {
    type: string
    sql: ${TABLE}.user_hud_name ;;
  }

  dimension: user_state_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.user_state_gid ;;
  }

  dimension: user_state_name {
    type: string
    sql: ${TABLE}.user_state_name ;;
  }

  dimension: user_owner_name {
    type: string
    sql: ${TABLE}.user_owner_name ;;
  }

  dimension: user_facility_type {
    type: string
    sql: ${TABLE}.user_facility_type ;;
  }

  dimension: user_role_name {
    type: string
    sql: ${TABLE}.user_role_name ;;
  }

  dimension_group: lab_test_date {
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
    sql: ${TABLE}.lab_test_date ;;
  }

  measure: Date_count {
    type: count_distinct
    sql: ${TABLE}.lab_test_date ;;
  }

  measure: count {
    type: count
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [detail*]
  }

  measure: facility_count {
    type: count_distinct
    sql: ${user_facility_name} ;;
  }

  measure: total_lab_tests {
    label: "Total Lab Tests"
    filters: [lab_test_name: "-Null"]
    type: count
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: lab_tests_30_days {
    label: "Lab Tests in last 30 days"
    filters: [lab_test_date_date: "30 days ago for 30 days"]
    filters: [lab_test_name: "-Null"]
    type: count
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      citizen_state_name,
      citizen_block_name,
      citizen_street_name,
      citizen_hud_name,
      user_state_name,
      user_hud_name,
      lab_test_name,
      citizen_district_name,
      citizen_village_name,
      user_block_name,
      user_district_name
    ]
  }
}
