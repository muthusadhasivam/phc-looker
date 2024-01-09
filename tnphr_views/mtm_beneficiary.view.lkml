view: mtm_beneficiary {
  sql_table_name: `staging-tnphr.KPI.mtm_beneficiary`
    ;;

  dimension: citizen_block_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_block_gid ;;
  }

  dimension: citizen_block_name {
    type: string
    sql: ${TABLE}.citizen_block_name ;;
    drill_fields: [citizen_village_name]
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
    drill_fields: [citizen_hud_name]
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

  dimension: PHC {
    type: string
    label: "PHC"
    sql: CASE
        WHEN ${TABLE}.user_facility_level = "PHC" THEN ${TABLE}.user_facility_type
        ELSE NULL
        END ;;
  }

  dimension: HSC {
    type: string
    label: "HSC"
    sql: CASE
        WHEN ${TABLE}.user_facility_level = "HSC" THEN ${TABLE}.user_facility_type
        ELSE NULL
        END ;;
  }

  dimension:PHC_HSC_not_null_Filter{
    type: string
    sql: CASE
          when ${PHC} is  NULL and ${HSC} is NULL then '1' Else '0'
          END;;
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
    drill_fields: [citizen_block_name]
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

  dimension: citizen_village_type {
    type: string
    #sql: if (${TABLE}.citizen_village_type is null, "Other", ${TABLE}.citizen_village_type);;
    sql: if (${TABLE}.citizen_village_type is null or ${TABLE}.citizen_village_type = "OT" , "Other", ${TABLE}.citizen_village_type);;
  }

  dimension: is_compliance {
    type: string
    sql: ${TABLE}.is_compliance ;;
  }

  dimension: is_drugs_received {
    type: string
    sql: ${TABLE}.is_drugs_received ;;
  }

  dimension: is_user_facility_hwc {
    type: string
    sql: ${TABLE}.is_user_facility_hwc ;;
  }

  dimension: mtm_count {
    type: number
    sql: ${TABLE}.mtm_count ;;
  }

  dimension: mtm_diabetes_mellitus {
    type: number
    sql: ${TABLE}.mtm_diabetes_mellitus ;;
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

  dimension: mtm_diabetes_mellitus_and_hypertension_benefited {
    type: number
    sql: ${TABLE}.mtm_diabetes_mellitus_and_hypertension_benefited ;;
  }


  dimension_group: mtm_start {
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

  dimension_group: record_update {
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
    sql: ${TABLE}.record_update_date ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
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

  dimension: user_category_name {
    type: string
    sql: ${TABLE}.user_category_name ;;
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
    drill_fields: [user_hud_name]
  }

  dimension: user_facility_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.user_facility_gid ;;
  }

  dimension: user_facility_level {
    type: string
    sql: ${TABLE}.user_facility_level ;;
  }

  dimension: user_facility_name {
    type: string
    sql: ${TABLE}.user_facility_name ;;
  }

  dimension: user_facility_type {
    type: string
    sql: ${TABLE}.user_facility_type ;;
  }

  dimension: user_hud_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.user_hud_gid ;;
  }

  dimension: user_hud_name {
    type: string
    sql: ${TABLE}.user_hud_name ;;
    drill_fields: [user_block_name]
  }

  dimension: user_owner_name {
    type: string
    sql: ${TABLE}.user_owner_name ;;
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

  dimension: user_state_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.user_state_gid ;;
  }

  dimension: user_state_name {
    type: string
    sql: ${TABLE}.user_state_name ;;
  }

  dimension: is_citizen_refferal {
    type: string
    sql: ${TABLE}.is_citizen_refferal ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_confirmed_MTM_beneficiary {
    label: "Total Confirmed MTM Beneficiary"
    type: sum
    sql: ${TABLE}.mtm_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/mtm_beneficiary?fields=mtm_beneficiary.DRILL_FIELD_Community_total_confirmed_MTM_beneficiary*"
    # }
    # link: {
    #   label: "Institution"
    #   url: "/explore/tnphr_kpi/mtm_beneficiary?fields=mtm_beneficiary.DRILL_FIELD_Institution_total_confirmed_MTM_beneficiary*"
    # }
  }

  # set: DRILL_FIELD_Community_total_confirmed_MTM_beneficiary{
  #   fields: [
  #     citizen_district_name
  #     ,total_confirmed_MTM_beneficiary
  #   ]
  # }

  # set: DRILL_FIELD_Institution_total_confirmed_MTM_beneficiary{
  #   fields: [
  #     user_district_name
  #     ,total_confirmed_MTM_beneficiary
  #   ]
  # }

  # measure: total_confirmed_MTM_beneficiary_blocks {
  #   label: "Total Confirmed MTM Beneficiary - Blocks"
  #   type: sum
  #   sql: ${TABLE}.mtm_count ;;
  #   value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  #   link: {
  #     label: "Community"
  #     url: "/explore/tnphr_kpi/mtm_beneficiary?fields=mtm_beneficiary.DRILL_FIELD_Community_total_confirmed_MTM_beneficiary_blocks*"
  #   }
  #   link: {
  #     label: "Institution"
  #     url: "/explore/tnphr_kpi/mtm_beneficiary?fields=mtm_beneficiary.DRILL_FIELD_Institution_total_confirmed_MTM_beneficiary_blocks*"
  #   }
  # }

  # set: DRILL_FIELD_Community_total_confirmed_MTM_beneficiary_blocks{
  #   fields: [
  #     citizen_block_name
  #     ,total_confirmed_MTM_beneficiary
  #   ]
  # }

  # set: DRILL_FIELD_Institution_total_confirmed_MTM_beneficiary_blocks{
  #   fields: [
  #     user_block_name
  #     ,total_confirmed_MTM_beneficiary
  #   ]
  # }

  measure: total_confirmed_MTM_beneficiary_mid {
    label: "[Mid Level Health Provider] MTM Beneficiaries updated"
    type: sum
    filters: [role_name: "Mid Level Health Provider "]
    sql: ${TABLE}.mtm_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_confirmed_MTM_beneficiary_women {
    label: "[Women Health Volunteer] MTM Beneficiaries updated"
    type: sum
    filters: [role_name: "Women Health Volunteer"]
    sql: ${TABLE}.mtm_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_confirmed_MTM_beneficiary_DPH {
    label: "[DPH MTM Staff Nurse] MTM Beneficiaries updated"
    type: sum
    filters: [role_name: "NCD Staff Nurser",user_directorate:"DPH"]
    sql: ${TABLE}.mtm_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_confirmed_MTM_beneficiary_DMS {
    label: "[DMS MTM Staff Nurse] MTM Beneficiaries updated"
    type: sum
    filters: [role_name: "NCD Staff Nurser",user_directorate:"DMS"]
    sql: ${TABLE}.mtm_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }
  measure: total_confirmed_MTM_beneficiary_DMS_PHr {
    label: "[DMS] MTM Beneficiaries updated"
    type: sum
    filters: [user_directorate:"DMS"]
    sql: ${TABLE}.mtm_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_confirmed_MTM_beneficiary_DPH_PHr {
    label: "[DPH] MTM Beneficiaries updated"
    type: sum
    filters: [user_directorate:"DPH"]
    sql: ${TABLE}.mtm_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_confirmed_MTM_beneficiary_DME_PHr {
    label: "[DME] MTM Beneficiaries updated"
    type: sum
    filters: [user_directorate:"DME"]
    sql: ${TABLE}.mtm_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_confirmed_MTM_beneficiary_PVT_PHr {
    label: "[PVT] MTM Beneficiaries updated"
    type: sum
    filters: [user_directorate:"PVT"]
    sql: ${TABLE}.mtm_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }


  measure: total_confirmed_MTM_beneficiary_DME {
    label: "[DME MTM Staff Nurse] MTM Beneficiaries updated"
    type: sum
    filters: [role_name: "NCD Staff Nurser",user_directorate: "DME"]
    sql: ${TABLE}.mtm_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_confirmed_MTM_beneficiary_Palliative {
    label: "[Palliative Care] MTM Beneficiaries updated"
    type: sum
    sql: ${TABLE}.mtm_palliative_care ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_confirmed_MTM_beneficiary_CAPD {
    label: "[CAPD Bags Beneficiries] MTM Beneficiaries updated"
    type: sum
    sql: ${TABLE}.mtm_dialysis_capd ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_confirmed_MTM_beneficiary_Physio {
    label: "[Physiotherapy Care] MTM Beneficiaries updated"
    type: sum
    sql: ${TABLE}.mtm_physiotherapy ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_confirmed_MTM_beneficiary_Diabetes {
    label: "[Diabetes] MTM Beneficiaries updated"
    type: sum
    sql: ${TABLE}.mtm_diabetes_mellitus ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_confirmed_MTM_beneficiary_Hypertension {
    label: "[Hypertension] MTM Beneficiaries updated"
    type: sum
    sql: ${TABLE}.mtm_hypertension ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_confirmed_MTM_beneficiary_Diabeties_Hypertension {
    label: "[Both] MTM Beneficiaries updated"
    type: sum
    sql: ${TABLE}.mtm_diabetes_mellitus_and_hypertension_benefited ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: no_of_MTM_beneficiaries_received_drugs{
    type:  sum
    filters: [is_drugs_received: "yes" ]
    sql: ${TABLE}.mtm_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/mtm_beneficiary?fields=mtm_beneficiary.DRILL_FIELD_Community_no_of_MTM_beneficiaries_received_drugs*"
    # }
    # link: {
    #   label: "Institution"
    #   url: "/explore/tnphr_kpi/mtm_beneficiary?fields=mtm_beneficiary.DRILL_FIELD_Institution_no_of_MTM_beneficiaries_received_drugs*"
    # }
  }

  # set: DRILL_FIELD_Community_no_of_MTM_beneficiaries_received_drugs{
  #   fields: [
  #     citizen_district_name
  #     ,no_of_MTM_beneficiaries_received_drugs
  #   ]
  # }

  # set: DRILL_FIELD_Institution_no_of_MTM_beneficiaries_received_drugs{
  #   fields: [
  #     user_district_name
  #     ,no_of_MTM_beneficiaries_received_drugs
  #   ]
  # }

  measure: Treatment_compliance_MTM_beneficiary {
    label: "Treatment Compliance of MTM Beneficiary"
    type: sum
    filters: [is_compliance: "yes"]
    sql: ${TABLE}.mtm_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: no_of_Physiotherapy_MTM_beneficiaries_received_drugs{
    type:  sum
    filters: [is_drugs_received: "yes",mtm_physiotherapy: ">0"]
    sql: ${TABLE}.mtm_physiotherapy ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: no_of_Palliative_care_MTM_beneficiaries_received_drugs{
    type:  sum
    filters: [is_drugs_received: "yes",mtm_palliative_care: ">0"]
    sql: ${TABLE}.mtm_palliative_care ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: no_of_dialysis_capd_MTM_beneficiaries_received_drugs{
    type:  sum
    filters: [is_drugs_received: "yes",mtm_dialysis_capd: ">0"]
    sql: ${TABLE}.mtm_dialysis_capd ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: till_prev_day_Drugs_count_physiotherapy{
    type: sum
    filters: [mtm_start_date: "before 1 day ago"]
    filters: [is_drugs_received: "yes",mtm_physiotherapy: ">0"]
    sql: ${TABLE}.mtm_physiotherapy ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: till_prev_day_Drugs_count_palliative_care{
    type: sum
    filters: [mtm_start_date: "before 1 day ago"]
    filters: [is_drugs_received: "yes",mtm_palliative_care: ">0"]
    sql: ${TABLE}.mtm_palliative_care ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: till_prev_day_Drugs_count_dialysis_capd{
    type: sum
    filters: [mtm_start_date: "before 1 day ago"]
    filters: [is_drugs_received: "yes",mtm_dialysis_capd: ">0"]
    sql: ${TABLE}.mtm_dialysis_capd ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: till_prev_day_total_confirmed_Palliative {
    type: sum
    filters: [mtm_start_date: "before 1 day ago"]
    sql: ${TABLE}.mtm_palliative_care ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: till_prev_day_total_confirmed_CAPD {
    type: sum
    filters: [mtm_start_date: "before 1 day ago"]
    sql: ${TABLE}.mtm_dialysis_capd ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: till_prev_day_total_confirmed_Physiotherapy {
    type: sum
    filters: [mtm_start_date: "before 1 day ago"]
    sql: ${TABLE}.mtm_physiotherapy ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      citizen_state_name,
      user_category_name,
      citizen_hud_name,
      user_hud_name,
      citizen_facility_name,
      user_facility_name,
      citizen_street_name,
      role_name,
      citizen_village_name,
      user_block_name,
      user_parent_facility_name,
      user_owner_name,
      citizen_block_name,
      user_state_name,
      citizen_district_name,
      citizen_parent_facility_name,
      user_district_name
    ]
  }
}
