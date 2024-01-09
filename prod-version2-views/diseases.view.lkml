view: diseases {
  sql_table_name: `phc-platform.KPI.diseases`
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

  dimension: citizen_control_dm_status {
    type: string
    sql: ${TABLE}.citizen_control_dm_status ;;
  }

  dimension: citizen_control_ht_status {
    type: string
    sql: ${TABLE}.citizen_control_ht_status ;;
  }

  dimension: citizen_diagnosis_name {
    type: string
    sql: ${TABLE}.citizen_diagnosis_name ;;
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

  dimension_group: screened {
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
    sql: ${TABLE}.screened_date ;;
  }

  dimension: citizen_dm_status {
    type: string
    sql: ${TABLE}.citizen_dm_status ;;
  }

  dimension: citizen_facility_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_facility_gid ;;
  }

  dimension: citizen_facility_name {
    type: string
    sql: ${TABLE}.citizen_facility_name ;;
  }

  dimension: citizen_ht_status {
    type: string
    sql: ${TABLE}.citizen_ht_status ;;
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

  dimension: citizen_parent_facility_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_parent_facility_gid ;;
  }

  dimension: citizen_parent_facility_name {
    type: string
    sql: ${TABLE}.citizen_parent_facility_name ;;
  }

  dimension: citizen_service_name {
    type: string
    sql: ${TABLE}.citizen_service_name ;;
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

  dimension: citizen_streen_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_streen_gid ;;
  }

  dimension: citizen_streen_name {
    type: string
    sql: ${TABLE}.citizen_streen_name ;;
  }

  dimension: citizen_user_state_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_user_state_gid ;;
  }

  dimension: citizen_user_state_name {
    type: string
    sql: ${TABLE}.citizen_user_state_name ;;
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

  dimension: is_citizen_compliance {
    type: string
    sql: ${TABLE}.is_citizen_compliance ;;
  }

  dimension: is_citizen_refferal {
    type: string
    sql: ${TABLE}.is_citizen_refferal ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: total_screening_count {
    type: number
    sql: ${TABLE}.total_screening_count ;;
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

  dimension: user_block_type {
    type: string
    sql: ${TABLE}.user_block_type ;;
  }

  dimension: user_directorate {
    type: string
    sql: ${TABLE}.user_directorate ;;
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

  dimension: user_facility_category_name {
    type: string
    sql: ${TABLE}.user_facility_category_name ;;
  }

  dimension: user_facility_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.user_facility_gid ;;
  }

  dimension: user_facility_name {
    type: string
    sql: ${TABLE}.user_facility_name ;;
  }

  dimension: user_facility_type {
    type: string
    sql: ${TABLE}.user_facility_type ;;
  }

  dimension: user_facility_owner_name {
    type: string
    sql: ${TABLE}.user_facility_owner_name ;;
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

  dimension: user_parent_facility_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.user_parent_facility_gid ;;
  }

  dimension: user_parent_facility_name {
    type: string
    sql: ${TABLE}.user_parent_facility_name ;;
  }

  dimension: user_phr_role {
    type: string
    sql: ${TABLE}.user_phr_role ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: refferal_count {
    label: "Refferal Count"
    type: sum
    filters: [is_citizen_refferal: "yes"]
    sql: ${TABLE}.total_screening_count  ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Compliance_count {
    label: "Compliance Count"
    type: sum
    filters: [is_citizen_compliance: "yes"]
    sql: ${TABLE}.total_screening_count  ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      citizen_state_name,
      citizen_block_name,
      user_facility_category_name,
      citizen_hud_name,
      citizen_user_state_name,
      user_hud_name,
      citizen_facility_name,
      user_facility_name,
      citizen_streen_name,
      citizen_diagnosis_name,
      role_name,
      citizen_district_name,
      citizen_village_name,
      user_block_name,
      user_facility_owner_name,
      user_parent_facility_name,
      citizen_parent_facility_name,
      citizen_service_name,
      user_district_name
    ]
  }
}
