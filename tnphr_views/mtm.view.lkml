view: mtm {
  sql_table_name: `staging-tnphr.KPI.mtm`
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

  dimension: citizen_district_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_district_gid ;;
  }

  dimension: citizen_district_name {
    type: string
    sql: ${TABLE}.citizen_district_name ;;
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

  dimension: citizen_gender {
    type: string
    sql: ${TABLE}.citizen_gender ;;
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

  dimension: citizen_resident_status {
    type: string
    sql: ${TABLE}.citizen_resident_status ;;
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

  dimension: citizen_street_id {
    type: number
    sql: ${TABLE}.citizen_street_id ;;
  }

  dimension: citizen_street_name {
    type: string
    sql: ${TABLE}.citizen_street_name ;;
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

  dimension_group: diabetes_mellitus_end {
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
    sql: ${TABLE}.diabetes_mellitus_end_date ;;
  }

  dimension_group: diabetes_mellitus_start {
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
    sql: ${TABLE}.diabetes_mellitus_start_date ;;
  }

  dimension_group: dialysis_capd_end {
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
    sql: ${TABLE}.dialysis_capd_end_date ;;
  }

  dimension_group: dialysis_capd_start {
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
    sql: ${TABLE}.dialysis_capd_start_date ;;
  }

  dimension_group: hypertension_end {
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
    sql: ${TABLE}.hypertension_end_date ;;
  }

  dimension_group: hypertension_start {
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
    sql: ${TABLE}.hypertension_start_date ;;
  }

  dimension: mtm_count {
    type: number
    sql: ${TABLE}.mtm_count ;;
  }

  dimension: number_of_times_benefited {
    type: number
    sql: ${TABLE}.number_of_times_benefited ;;
  }

  dimension: number_of_times_diabetes_mellitus_benefited {
    type: number
    sql: ${TABLE}.number_of_times_diabetes_mellitus_benefited ;;
  }

  dimension: number_of_times_dialysis_capd_benefited {
    type: number
    sql: ${TABLE}.number_of_times_dialysis_capd_benefited ;;
  }

  dimension: number_of_times_hypertension_benefited {
    type: number
    sql: ${TABLE}.number_of_times_hypertension_benefited ;;
  }

  dimension: number_of_times_others_benefited {
    type: number
    sql: ${TABLE}.number_of_times_others_benefited ;;
  }

  dimension: number_of_times_others_details_benefited {
    type: number
    sql: ${TABLE}.number_of_times_others_details_benefited ;;
  }

  dimension: number_of_times_palliative_care_benefited {
    type: number
    sql: ${TABLE}.number_of_times_palliative_care_benefited ;;
  }

  dimension: number_of_times_physiotherapy_benefited {
    type: number
    sql: ${TABLE}.number_of_times_physiotherapy_benefited ;;
  }

  dimension_group: mtm_minimum_start {
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
    sql: ${TABLE}.mtm_start_date ;;
  }

  dimension_group: palliative_care_end {
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
    sql: ${TABLE}.palliative_care_end_date ;;
  }

  dimension_group: palliative_care_start {
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
    sql: ${TABLE}.palliative_care_start_date ;;
  }

  dimension_group: physiotherapy_end {
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
    sql: ${TABLE}.physiotherapy_end_date ;;
  }

  dimension_group: physiotherapy_start {
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
    sql: ${TABLE}.physiotherapy_start_date ;;
  }

  dimension_group: start_date_V1 {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: citizen_village_type {
    type: string
    sql: if (${TABLE}.citizen_village_type is null, "Other", ${TABLE}.citizen_village_type);;
  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_confirmed_MTM_beneficiary {
    label: "Total Confirmed MTM Beneficiary"
    type: sum
    sql: ${TABLE}.mtm_count ;;
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      citizen_state_name,
      citizen_block_name,
      citizen_hud_name,
      citizen_facility_name,
      citizen_street_name,
      citizen_district_name,
      citizen_village_name,
      citizen_parent_facility_name
    ]
  }
}
