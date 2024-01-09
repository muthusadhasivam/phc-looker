view: mtm_services {
  sql_table_name: `staging-tnphr.KPI.mtm_services`
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

  dimension_group: citizen_screened {
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
    sql: ${TABLE}.citizen_screened_date ;;
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

  dimension: citizen_village_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_village_gid ;;
  }

  dimension: citizen_village_name {
    type: string
    sql: ${TABLE}.citizen_village_name ;;
  }

  dimension: citizen_village_type {
    type: string
    sql: ${TABLE}.citizen_village_type ;;
  }

  dimension: hh_user_block_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hh_user_block_gid ;;
  }

  dimension: hh_user_block_name {
    type: string
    sql: ${TABLE}.hh_user_block_name ;;
  }

  dimension: hh_user_block_type {
    type: string
    sql: ${TABLE}.hh_user_block_type ;;
  }

  dimension: hh_user_directorate {
    type: string
    sql: ${TABLE}.hh_user_directorate ;;
  }

  dimension: hh_user_district_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hh_user_district_gid ;;
  }

  dimension: hh_user_district_name {
    type: string
    sql: ${TABLE}.hh_user_district_name ;;
  }

  dimension: hh_user_facility_type_name {
    type: string
    sql: ${TABLE}.hh_user_facility_type_name ;;
  }

  dimension: hh_user_hud_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hh_user_hud_gid ;;
  }

  dimension: hh_user_hud_name {
    type: string
    sql: ${TABLE}.hh_user_hud_name ;;
  }

  dimension: hh_user_role_name {
    type: string
    sql: ${TABLE}.hh_user_role_name ;;
  }

  dimension: hh_user_state_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hh_user_state_gid ;;
  }

  dimension: hh_user_state_name {
    type: string
    sql: ${TABLE}.hh_user_state_name ;;
  }

  dimension: hs_user_block_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hs_user_block_gid ;;
  }

  dimension: hs_user_block_name {
    type: string
    sql: ${TABLE}.hs_user_block_name ;;
  }

  dimension: hs_user_block_type {
    type: string
    sql: ${TABLE}.hs_user_block_type ;;
  }

  dimension: hs_user_directorate {
    type: string
    sql: ${TABLE}.hs_user_directorate ;;
  }

  dimension: hs_user_district_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hs_user_district_gid ;;
  }

  dimension: hs_user_district_name {
    type: string
    sql: ${TABLE}.hs_user_district_name ;;
  }

  dimension: hs_user_facility_type_name {
    type: string
    sql: ${TABLE}.hs_user_facility_type_name ;;
  }

  dimension: hs_user_hud_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hs_user_hud_gid ;;
  }

  dimension: hs_user_hud_name {
    type: string
    sql: ${TABLE}.hs_user_hud_name ;;
  }

  dimension: hs_user_role_name {
    type: string
    sql: ${TABLE}.hs_user_role_name ;;
  }

  dimension: hs_user_state_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hs_user_state_gid ;;
  }

  dimension: hs_user_state_name {
    type: string
    sql: ${TABLE}.hs_user_state_name ;;
  }

  dimension: mtm_diabetes_mellitus {
    type: number
    sql: ${TABLE}.mtm_diabetes_mellitus ;;
  }

  dimension: mtm_diabetes_mellitus_and_hypertension {
    type: number
    sql: ${TABLE}.mtm_diabetes_mellitus_and_hypertension ;;
  }

  dimension: mtm_dialysis_capd {
    type: number
    sql: ${TABLE}.mtm_dialysis_capd ;;
  }

  dimension: mtm_hypertension {
    type: number
    sql: ${TABLE}.mtm_hypertension ;;
  }

  dimension: mtm_palliative_care {
    type: number
    sql: ${TABLE}.mtm_palliative_care ;;
  }

  dimension: mtm_physiotherapy {
    type: number
    sql: ${TABLE}.mtm_physiotherapy ;;
  }

  dimension: mtm_service_date_range {
    type: string
    sql: ${TABLE}.mtm_service_date_range ;;
  }

  dimension: mtm_total {
    type: number
    sql: ${TABLE}.mtm_total ;;
  }

  dimension: mtm_v1_diabetes_mellitus {
    type: number
    sql: ${TABLE}.mtm_v1_diabetes_mellitus ;;
  }

  dimension: mtm_v1_diabetes_mellitus_and_hypertension {
    type: number
    sql: ${TABLE}.mtm_v1_diabetes_mellitus_and_hypertension ;;
  }

  dimension: mtm_v1_dialysis_capd {
    type: number
    sql: ${TABLE}.mtm_v1_dialysis_capd ;;
  }

  dimension: mtm_v1_hypertension {
    type: number
    sql: ${TABLE}.mtm_v1_hypertension ;;
  }

  dimension: mtm_v1_palliative_care {
    type: number
    sql: ${TABLE}.mtm_v1_palliative_care ;;
  }

  dimension: mtm_v1_physiotherapy {
    type: number
    sql: ${TABLE}.mtm_v1_physiotherapy ;;
  }

  dimension: mtm_v1_total {
    type: number
    sql: ${TABLE}.mtm_v1_total ;;
  }

  dimension: mtm_v2_diabetes_mellitus {
    type: number
    sql: ${TABLE}.mtm_v2_diabetes_mellitus ;;
  }

  dimension: mtm_v2_diabetes_mellitus_and_hypertension {
    type: number
    sql: ${TABLE}.mtm_v2_diabetes_mellitus_and_hypertension ;;
  }

  dimension: mtm_v2_dialysis_capd {
    type: number
    sql: ${TABLE}.mtm_v2_dialysis_capd ;;
  }

  dimension: mtm_v2_hypertension {
    type: number
    sql: ${TABLE}.mtm_v2_hypertension ;;
  }

  dimension: mtm_v2_palliative_care {
    type: number
    sql: ${TABLE}.mtm_v2_palliative_care ;;
  }

  dimension: mtm_v2_physiotherapy {
    type: number
    sql: ${TABLE}.mtm_v2_physiotherapy ;;
  }

  dimension: mtm_v2_total {
    type: number
    sql: ${TABLE}.mtm_v2_total ;;
  }


  dimension: hs_user_facility_name {
    type: string
    sql: ${TABLE}.hs_user_facility_name ;;
  }

  dimension: hh_user_facility_name {
    type: string
    sql: ${TABLE}.hh_user_facility_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_mtm_beneficiaries_v1_v2 {
    label: "Total MTM Beneficiaries v1 and v2"
    type: sum
    sql: ${TABLE}.mtm_total ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }
  measure: total_mtm_beneficiaries_v2 {
    label: "Total MTM Beneficiaries v2"
    type: sum
    sql: ${TABLE}.mtm_v2_total ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_mtm_beneficiaries_v1 {
    label: "Total MTM Beneficiaries v1"
    type: sum
    sql: ${TABLE}.mtm_v1_total ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: mtm_v2_diabetes_mellitus_total {
    type: sum
    sql: ${TABLE}.mtm_v2_diabetes_mellitus ;;
  }

  measure: mtm_v2_diabetes_mellitus_and_hypertension_total {
    type: sum
    sql: ${TABLE}.mtm_v2_diabetes_mellitus_and_hypertension ;;
  }

  measure: mtm_v2_dialysis_capd_total {
    type: sum
    sql: ${TABLE}.mtm_v2_dialysis_capd ;;
  }

  measure: mtm_v2_hypertension_total {
    type: sum
    sql: ${TABLE}.mtm_v2_hypertension ;;
  }

  measure: mtm_v2_palliative_care_total {
    type: sum
    sql: ${TABLE}.mtm_v2_palliative_care ;;
  }

  measure: mtm_v2_physiotherapy_total {
    type: sum
    sql: ${TABLE}.mtm_v2_physiotherapy ;;
  }

  measure: mtm_v1_diabetes_mellitus_total {
    type: sum
    sql: ${TABLE}.mtm_v1_diabetes_mellitus ;;
  }

  measure: mtm_v1_diabetes_mellitus_and_hypertension_total {
    type: sum
    sql: ${TABLE}.mtm_v1_diabetes_mellitus_and_hypertension ;;
  }

  measure: mtm_v1_dialysis_capd_total {
    type: sum
    sql: ${TABLE}.mtm_v1_dialysis_capd ;;
  }

  measure: mtm_v1_hypertension_total {
    type: sum
    sql: ${TABLE}.mtm_v1_hypertension ;;
  }

  measure: mtm_v1_palliative_care_total {
    type: sum
    sql: ${TABLE}.mtm_v1_palliative_care ;;
  }

  measure: mtm_v1_physiotherapy_total {
    type: sum
    sql: ${TABLE}.mtm_v1_physiotherapy ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      citizen_state_name,
      citizen_hud_name,
      hs_user_state_name,
      hs_user_role_name,
      hh_user_block_name,
      citizen_street_name,
      citizen_village_name,
      hh_user_district_name,
      hh_user_hud_name,
      hs_user_district_name,
      hh_user_role_name,
      citizen_block_name,
      hh_user_state_name,
      hs_user_block_name,
      hh_user_facility_type_name,
      hs_user_facility_type_name,
      citizen_district_name,
      hs_user_hud_name
    ]
  }
}
