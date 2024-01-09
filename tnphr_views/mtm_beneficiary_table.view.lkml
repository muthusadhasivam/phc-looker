view: mtm_beneficiary_table {
  sql_table_name: `staging-tnphr.KPI.mtm_beneficiary_table`
    ;;

  dimension: mtm_beneficiary_citizen_block_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.mtm_beneficiary_citizen_block_gid ;;
  }

  dimension: mtm_beneficiary_citizen_block_name {
    type: string
    sql: ${TABLE}.mtm_beneficiary_citizen_block_name ;;
  }

  dimension: mtm_beneficiary_citizen_district_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.mtm_beneficiary_citizen_district_gid ;;
  }

  dimension: mtm_beneficiary_citizen_district_name {
    type: string
    sql: ${TABLE}.mtm_beneficiary_citizen_district_name ;;
  }

  dimension: mtm_beneficiary_citizen_hud_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.mtm_beneficiary_citizen_hud_gid ;;
  }

  dimension: mtm_beneficiary_citizen_hud_name {
    type: string
    sql: ${TABLE}.mtm_beneficiary_citizen_hud_name ;;
  }

  dimension: mtm_beneficiary_citizen_village_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.mtm_beneficiary_citizen_village_gid ;;
  }

  dimension: mtm_beneficiary_citizen_village_name {
    type: string
    sql: ${TABLE}.mtm_beneficiary_citizen_village_name ;;
  }

  dimension: mtm_beneficiary_no_of_mtm_beneficiaries_received_drugs {
    type: number
    sql: ${TABLE}.mtm_beneficiary_no_of_mtm_beneficiaries_received_drugs ;;
  }

  dimension: mtm_beneficiary_total_confirmed_mtm_beneficiary {
    type: number
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary ;;
  }

  dimension: mtm_beneficiary_total_confirmed_mtm_beneficiary_capd {
    type: number
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary_capd ;;
  }

  dimension: mtm_beneficiary_total_confirmed_mtm_beneficiary_diabetes {
    type: number
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary_diabetes ;;
  }

  dimension: mtm_beneficiary_total_confirmed_mtm_beneficiary_diabeties_hypertension {
    type: number
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary_diabeties_hypertension ;;
  }

  dimension: mtm_beneficiary_total_confirmed_mtm_beneficiary_hypertension {
    type: number
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary_hypertension ;;
  }

  dimension: mtm_beneficiary_total_confirmed_mtm_beneficiary_palliative {
    type: number
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary_palliative ;;
  }

  dimension: mtm_beneficiary_total_confirmed_mtm_beneficiary_physio {
    type: number
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary_physio ;;
  }

  dimension: screening_citizen_block_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.screening_citizen_block_gid ;;
  }

  dimension: screening_citizen_district_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.screening_citizen_district_gid ;;
  }

  dimension: screening_citizen_hud_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.screening_citizen_hud_gid ;;
  }

  dimension: screening_citizen_village_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.screening_citizen_village_gid ;;
  }

  dimension: screening_total_screenings {
    type: number
    sql: ${TABLE}.screening_total_screenings ;;
  }

  dimension: screening_unique_drugs_count {
    type: number
    sql: ${TABLE}.screening_unique_drugs_count ;;
  }

  dimension: screening_unique_screenings {
    type: number
    sql: ${TABLE}.screening_unique_screenings ;;
  }

  measure: count {
    type: count
    drill_fields: [mtm_beneficiary_citizen_hud_name, mtm_beneficiary_citizen_village_name, mtm_beneficiary_citizen_block_name, mtm_beneficiary_citizen_district_name]
  }

  measure: total_screening_total_screenings {
    type: sum
    sql: ${TABLE}.screening_total_screenings ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_screening_unique_drugs_count {
    type: sum
    sql: ${TABLE}.screening_unique_drugs_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_screening_unique_screenings {
    type: sum
    sql: ${TABLE}.screening_unique_screenings ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_mtm_beneficiary_no_of_mtm_beneficiaries_received_drugs {
    type: sum
    sql: ${TABLE}.mtm_beneficiary_no_of_mtm_beneficiaries_received_drugs ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_mtm_beneficiary_total_confirmed_mtm_beneficiary {
    type: sum
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_mtm_beneficiary_total_confirmed_mtm_beneficiary_capd {
    type: sum
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary_capd ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_mtm_beneficiary_total_confirmed_mtm_beneficiary_diabetes {
    type: sum
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary_diabetes ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_mtm_beneficiary_total_confirmed_mtm_beneficiary_diabeties_hypertension {
    type: sum
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary_diabeties_hypertension ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_mtm_beneficiary_total_confirmed_mtm_beneficiary_hypertension {
    type: sum
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary_hypertension ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_mtm_beneficiary_total_confirmed_mtm_beneficiary_palliative {
    type: sum
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary_palliative ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_mtm_beneficiary_total_confirmed_mtm_beneficiary_physio {
    type: sum
    sql: ${TABLE}.mtm_beneficiary_total_confirmed_mtm_beneficiary_physio ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }


}
