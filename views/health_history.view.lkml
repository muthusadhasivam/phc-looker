# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: health_history {
#   hidden: yes

#   join: health_history__update_register {
#     view_label: "Health History: Update Register"
#     sql: LEFT JOIN UNNEST(${health_history.update_register}) as health_history__update_register ;;
#     relationship: one_to_many
#   }
# }
include: "health_screening.view"

view: health_history {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.health_history`
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: area_id {
    type: string
    sql: ${TABLE}.area_id ;;
  }

  dimension: area_name {
    type: string
    sql: ${TABLE}.area_name ;;
  }

  dimension_group: birth {
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
    sql: ${TABLE}.birth_date ;;
  }

  dimension: block_id {
    type: string
    sql: ${TABLE}.block_id ;;
  }

  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }

  dimension: congenital_anomaly {
    type: string
    sql: ${TABLE}.congenital_anomaly ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: disability {
    type: yesno
    sql: ${TABLE}.disability ;;
  }

  dimension: disability_details {
    type: string
    sql: JSON_VALUE(${TABLE}.disability_details, "$.disability_description") ;;
  }

  dimension: UDID {
    type: string
    sql: JSON_VALUE(${TABLE}.disability_details, "$.udid") ;;
  }

  dimension: eligible_couple_details_abortion_at {
    type: string
    label: "abortion_at"
    sql: JSON_VALUE(${TABLE}.eligible_couple_details, "$.abortion_at") ;;
  }

  dimension: eligible_couple_details_hysterectomy_details {
    type: string
    label: "hysterectomy_details"
    sql: JSON_VALUE(${TABLE}.eligible_couple_details, "$.hysterectomy_details") ;;
  }

  dimension: eligible_couple_details_marriage_age {
    type: string
    label: "marriage_age"
    sql: JSON_VALUE(${TABLE}.eligible_couple_details, "$.marriage_age") ;;
  }

  dimension: eligible_couple_details_pregnancy_test {
    type: string
    label: "pregnancy_test"
    sql: JSON_VALUE(${TABLE}.eligible_couple_details, "$.pregnancy_test") ;;
  }

  dimension: eligible_couple_details_abortions_count {
    type: string
    label: "abortions_count"
    sql: JSON_VALUE(${TABLE}.eligible_couple_details, "$.abortions_count") ;;
  }

  dimension: eligible_couple_details_abortions {
    type: string
    label: "abortions"
    sql: JSON_VALUE(${TABLE}.eligible_couple_details, "$.abortions") ;;
  }

  dimension: district_id {
    type: string
    sql: ${TABLE}.district_id ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
    drill_fields: [hud_name]
  }

  dimension: eligible_couple_details {
    type: string
    sql: ${TABLE}.eligible_couple_details ;;
  }

  dimension: eligible_couple_id {
    type: string
    sql: ${TABLE}.eligible_couple_id ;;
  }

  dimension: eligible_couple_status {
    type: string
    sql: ${TABLE}.eligible_couple_status ;;
  }

  dimension_group: enrollment {
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
    sql: ${TABLE}.enrollment_date ;;
  }

  dimension: facility_directorate_id {
    type: string
    sql: ${TABLE}.facility_directorate_id ;;
  }

  dimension: facility_directorate_name {
    type: string
    sql: ${TABLE}.facility_directorate_name ;;
  }

  dimension: family_history_cabr {
    type: string
    label: "family_history_cabr"
    sql: JSON_VALUE(${TABLE}.family_history, "$.cabr") ;;
  }

  dimension: family_history_ckd {
    type: string
    label: "family_history_ckd"
    sql: JSON_VALUE(${TABLE}.family_history, "$.ckd") ;;
  }

  dimension: family_history_cvd {
    type: string
    label: "family_history_cvd"
    sql: JSON_VALUE(${TABLE}.family_history, "$.cvd") ;;
  }

  dimension: family_history_diabetes {
    type: string
    label: "family_history_diabetes"
    sql: JSON_VALUE(${TABLE}.family_history, "$.diabetes") ;;
  }

  dimension: family_history_hypertension {
    type: string
    label: "family_history_hypertension"
    sql: JSON_VALUE(${TABLE}.family_history, "$.hypertension") ;;
  }

  dimension: family_history_stroke {
    type: string
    label: "family_history_stroke"
    sql: JSON_VALUE(${TABLE}.family_history, "$.stroke") ;;
  }

  dimension: family_history_ca_br {
    type: string
    label: "family_history_ca/br"
    sql: CASE
          WHEN JSON_QUERY(${TABLE}.family_history,"$") like ("%ca/br%") THEN '1'
          ELSE '0'
          END ;;
  }

  dimension: facility_id {
    type: string
    sql: ${TABLE}.facility_id ;;
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}.facility_name ;;
  }

  dimension: family_history {
    type: string
    sql: ${TABLE}.family_history ;;
  }

  dimension: family_id {
    type: string
    sql: ${TABLE}.family_id ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }


  dimension: hud_id {
    type: string
    sql: ${TABLE}.hud_id ;;
  }

  dimension: hud_name {
    type: string
    sql: ${TABLE}.hud_name ;;
    drill_fields: [block_name]
  }

  dimension_group: last_update {
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
    sql: ${TABLE}.last_update_date ;;
  }

  dimension: lifestyle_details {
    type: string
    sql: ${TABLE}.lifestyle_details ;;
  }

  dimension: lifestyle_details_alcoholic {
    type: string
    label: "lifestyle_details_alcoholic"
    sql: JSON_VALUE(${TABLE}.lifestyle_details, "$.alcoholic") ;;
  }

  dimension: lifestyle_details_currently_on_treatment {
    type: string
    label: "lifestyle_details_currently_on_treatment"
    sql: JSON_VALUE(${TABLE}.lifestyle_details, "$.currently_on_treatment") ;;
  }

  dimension: lifestyle_details_exercise {
    type: string
    label: "lifestyle_details_exercise"
    sql: JSON_VALUE(${TABLE}.lifestyle_details, "$.exercise") ;;
  }

  dimension: lifestyle_details_smoke {
    type: string
    label: "lifestyle_details_smoke"
    sql: JSON_VALUE(${TABLE}.lifestyle_details, "$.smoke") ;;
  }


  dimension: medical_history_id {
    type: string
    sql: ${TABLE}.medical_history_id ;;
  }

  dimension: member_id {
    type: string
    sql: ${TABLE}.member_id ;;
  }

  dimension: past_history {
    type: string
    sql: ${TABLE}.past_history ;;
  }

  dimension: resident_status {
    type: string
    sql: ${TABLE}.resident_status ;;
  }

  dimension: rev_village_id {
    type: string
    sql: ${TABLE}.rev_village_id ;;
  }

  dimension: rev_village_name {
    type: string
    sql: ${TABLE}.rev_village_name ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.state_id ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: street_id {
    type: string
    sql: ${TABLE}.street_id ;;
  }

  dimension: street_name {
    type: string
    sql: ${TABLE}.street_name ;;
  }

  dimension: taluk_id {
    type: string
    sql: ${TABLE}.taluk_id ;;
  }

  dimension: taluk_name {
    type: string
    sql: ${TABLE}.taluk_name ;;
  }

  dimension: past_history_ckd {
    type: string
    label: "past_history_ckd"
    sql: JSON_VALUE(${TABLE}.past_history, "$.ckd") ;;
  }


  dimension: past_history_ckd_duration {
    type: string
    label: "past_history_ckd_duration"
    sql: JSON_VALUE(${TABLE}.past_history, "$.ckd_duration") ;;
  }

  dimension: past_history_copd {
    type: string
    label: "past_history_copd"
    sql: JSON_VALUE(${TABLE}.past_history, "$.copd") ;;
  }

  dimension: past_history_copd_duration {
    type: string
    label: "past_history_copd_duration"
    sql: JSON_VALUE(${TABLE}.past_history, "$.copd_duration") ;;
  }

  dimension: past_history_currently_treatment {
    type: string
    label: "past_history_currently_treatment"
    sql: JSON_VALUE(${TABLE}.past_history, "$.currently_treatment") ;;
  }

  dimension: past_history_cvd {
    type: string
    label: "past_history_cvd"
    sql: JSON_VALUE(${TABLE}.past_history, "$.cvd") ;;
  }

  dimension: past_history_cvd_duration {
    type: string
    label: "past_history_cvd_duration"
    sql: JSON_VALUE(${TABLE}.past_history, "$.cvd_duration") ;;
  }

  dimension: past_history_diabetes {
    type: string
    label: "past_history_diabetes"
    sql: JSON_VALUE(${TABLE}.past_history, "$.diabetes") ;;
  }

  dimension: past_history_diabetes_duration {
    type: string
    label: "past_history_diabetes_duration"
    sql: JSON_VALUE(${TABLE}.past_history, "$.diabetes_duration") ;;
  }

  dimension: past_history_gdm {
    type: string
    label: "past_history_gdm"
    sql: JSON_VALUE(${TABLE}.past_history, "$.gdm") ;;
  }

  dimension: past_history_gdm_duration {
    type: string
    label: "past_history_gdm_duration"
    sql: JSON_VALUE(${TABLE}.past_history, "$.gdm_duration") ;;
  }

  dimension: past_history_hypertension {
    type: string
    label: "past_history_hypertension"
    sql: JSON_VALUE(${TABLE}.past_history, "$.hypertension") ;;
  }

  dimension: past_history_hypertension_duration {
    type: string
    label: "past_history_hypertension_duration"
    sql: JSON_VALUE(${TABLE}.past_history, "$.hypertension_duration") ;;
  }

  dimension: past_history_pih {
    type: string
    label: "past_history_pih"
    sql: JSON_VALUE(${TABLE}.past_history, "$.pih") ;;
  }

  dimension: past_history_pih_duration {
    type: string
    label: "past_history_pih_duration"
    sql: JSON_VALUE(${TABLE}.past_history, "$.pih_duration") ;;
  }

  dimension: past_history_stroke {
    type: string
    label: "past_history_stroke"
    sql: JSON_VALUE(${TABLE}.past_history, "$.stroke") ;;
  }

  dimension: past_history_stroke_duration {
    type: string
    label: "past_history_stroke_duration"
    sql: JSON_VALUE(${TABLE}.past_history, "$.stroke_duration") ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  dimension: user_facility_id {
    type: string
    sql: ${TABLE}.user_facility_id ;;
  }

  dimension: user_facility_name {
    type: string
    sql: ${TABLE}.user_facility_name ;;
  }

  dimension: vaccinations {
    type: string
    sql: ${TABLE}.vaccinations ;;
  }

  dimension: village_id {
    type: string
    sql: ${TABLE}.village_id ;;
  }

  dimension: village_name {
    type: string
    sql: ${TABLE}.village_name ;;
  }

  dimension: village_type {
    type: string
    sql:  if (${TABLE}.village_type is null, "Other", ${TABLE}.village_type);;
  }

  dimension: ward_id {
    type: string
    sql: ${TABLE}.ward_id ;;
  }

  dimension: ward_name {
    type: string
    sql: ${TABLE}.ward_name ;;
  }

  dimension: welfare_method {
    type: string
    sql: ${TABLE}.welfare_method ;;
  }
  dimension: welfare_method_facility_id {
    type: string
    label: "welfare_method_facility_id"
    sql: JSON_VALUE(${TABLE}.welfare_method, "$.facility_id") ;;
  }

  dimension: welfare_method_facility_name {
    type: string
    label: "welfare_method_facility_name"
    sql: JSON_VALUE(${TABLE}.welfare_method, "$.facility_name") ;;
  }

  dimension: welfare_method_facility_type {
    type: string
    label: "welfare_method_facility_type"
    sql: JSON_VALUE(${TABLE}.welfare_method, "$.facility_type") ;;
  }

  dimension: welfare_method_welfare_adoption_date {
    type: string
    label: "welfare_method_welfare_adoption_date"
    sql: JSON_VALUE(${TABLE}.welfare_method, "$.welfare_adoption_date") ;;
  }

  dimension: welfare_method_welfare_method {
    type: string
    label: "welfare_method"
    sql: JSON_VALUE(${TABLE}.welfare_method, "$.welfare_method") ;;
  }

  dimension: mtm_beneficiary {
    sql: ${TABLE}.mtm_beneficiary ;;
  }

  dimension: mtm_beneficiary_avail_service {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.avail_service") ;;
  }

dimension: mtm_beneficiary_drugs_from {
  type: string
  sql: JSON_QUERY(mtm_beneficiary, "$.drugs_from") ;;
}

  dimension: mtm_beneficiary_diabetes_mellitus {
    type: string
    hidden: yes
    sql: JSON_QUERY(mtm_beneficiary, "$.diabetes_mellitus") ;;
  }

  dimension: mtm_beneficiary_diabetes_mellitus_details {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.diabetes_mellitus.details") ;;
  }

  dimension: mtm_beneficiary_diabetes_mellitus_enroll_date {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.diabetes_mellitus.enroll_date") ;;
  }

  dimension: mtm_beneficiary_diabetes_mellitus_exit_date {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.diabetes_mellitus.exit_date") ;;
  }

dimension: mtm_beneficiary_diabetes_mellitus_status {
  type: string
  sql: JSON_QUERY(mtm_beneficiary, "$.diabetes_mellitus.status") ;;
}

dimension: mtm_beneficiary_dialysis_capd {
  type: string
  hidden: yes
  sql: JSON_QUERY(mtm_beneficiary, "$.dialysis_capd") ;;
}

  dimension: mtm_beneficiary_dialysis_capd_details {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.dialysis_capd.details") ;;
  }

  dimension: mtm_beneficiary_dialysis_capd_enroll_date {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.dialysis_capd.enroll_date") ;;
  }

  dimension: mtm_beneficiary_dialysis_capd_exit_date {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.dialysis_capd.exit_date") ;;
  }

  dimension: mtm_beneficiary_dialysis_capd_status {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.dialysis_capd.status") ;;
  }

dimension: mtm_beneficiary_hypertension {
  type: string
  hidden: yes
  sql: JSON_QUERY(mtm_beneficiary, "$.hypertension") ;;
}

  dimension: mtm_beneficiary_hypertension_details {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.hypertension.details") ;;
  }

  dimension: mtm_beneficiary_hypertension_enroll_date {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.hypertension.enroll_date") ;;
  }

  dimension: mtm_beneficiary_hypertension_exit_date {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.hypertension.exit_date") ;;
  }

  dimension: mtm_beneficiary_hypertension_status {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.hypertension.status") ;;
  }

dimension: mtm_beneficiary_others {
  type: string
  hidden: yes
  sql: JSON_QUERY(mtm_beneficiary, "$.others") ;;
}

  dimension: mtm_beneficiary_others_details {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.others.details") ;;
  }

  dimension: mtm_beneficiary_others_enroll_date {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.others.enroll_date") ;;
  }

  dimension: mtm_beneficiary_others_exit_date {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.others.exit_date") ;;
  }

  dimension: mtm_beneficiary_others_status {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.others.status") ;;
  }

dimension: mtm_beneficiary_palliative_care {
  type: string
  hidden: yes
  sql: JSON_QUERY(mtm_beneficiary, "$.palliative_care") ;;
}

  dimension: mtm_beneficiary_palliative_care_details {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.palliative_care.details") ;;
  }

  dimension: mtm_beneficiary_palliative_care_enroll_date {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.palliative_care.enroll_date") ;;
  }

  dimension: mtm_beneficiary_palliative_care_exit_date {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.palliative_care.exit_date") ;;
  }

  dimension: mtm_beneficiary_palliative_care_status {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.palliative_care.status") ;;
  }

dimension: mtm_beneficiary_physiotherapy {
  type: string
  hidden: yes
  sql: JSON_QUERY(mtm_beneficiary, "$.physiotherapy") ;;
}

  dimension: mtm_beneficiary_physiotherapy_details {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.physiotherapy.details") ;;
  }

  dimension: mtm_beneficiary_physiotherapy_enroll_date {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.physiotherapy.enroll_date") ;;
  }

  dimension: mtm_beneficiary_physiotherapy_exit_date {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.physiotherapy.exit_date") ;;
  }

  dimension: mtm_beneficiary_physiotherapy_status {
    type: string
    sql: JSON_QUERY(mtm_beneficiary, "$.physiotherapy.status") ;;
  }

  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${family_id},${member_id},${medical_history_id}) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: mtm_beneficiary_v2_count{
    type: count_distinct
    filters: [mtm_beneficiary : "%yes%,-%2021-07-07%00:00:00%"]
    sql: ${TABLE}.member_id ;;
  }

  measure: MTM_Diabetes_HH {
    type: count_distinct
    filters: [mtm_beneficiary_diabetes_mellitus_status : "%yes%"]
    sql: ${member_id} ;;
  }

  measure: MTM_Diabetes_Hypertension {
    type: count_distinct
    filters: [mtm_beneficiary_diabetes_mellitus_status : "%yes%",mtm_beneficiary_hypertension_status: "%yes%"]
    sql: ${member_id} ;;
  }

  measure: MTM_dialysis_capd_HH {
    type: count_distinct
    filters: [mtm_beneficiary_dialysis_capd_status : "%yes%"]
    sql: ${member_id} ;;
  }

  measure: MTM_hypertension_HH{
    type: count_distinct
    filters: [mtm_beneficiary_hypertension_status: "%yes%" ]
    sql: ${member_id} ;;
  }

  measure: MTM_others_HH{
    type: count_distinct
    filters: [mtm_beneficiary_others_status: "%yes%" ]
    sql: ${member_id} ;;
  }

  measure: MTM_palliative_care_HH{
    type: count_distinct
    filters: [mtm_beneficiary_palliative_care_status: "%yes%" ]
    sql: ${member_id} ;;
  }

  measure: MTM_physiotherapy_HH{
    type: count_distinct
    filters: [mtm_beneficiary_physiotherapy_status: "%yes%" ]
    sql: ${member_id} ;;
  }

  measure: UDID_linked_members {
    type: count_distinct
    filters: [UDID: "-Null"]
    sql: ${TABLE}.member_id;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }


  measure: Disability_beneficiaries {
    type: count_distinct
    filters: [disability: "Yes"]
    #filters: [mtm_beneficiary_avail_service: "%yes%"]
    sql: ${TABLE}.member_id;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: congenital_anomaly_members {
    type: count_distinct
    filters: [congenital_anomaly: "True"]
    sql: ${TABLE}.member_id;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }



  measure: Screened_but_no_record_in_history{
    type: count_distinct
    filters: [mtm_beneficiary_avail_service: "-%yes%"]
    filters: [mtm_beneficiary_avail_service: "-%no%"]
    sql: ${health_screening.screening_id};;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      area_name,
      state_name,
      hud_name,
      user_facility_name,
      facility_name,
      facility_directorate_name,
      street_name,
      district_name,
      block_name,
      ward_name,
      country_name,
      taluk_name,
      village_name,
      rev_village_name
    ]
  }
}

view: health_history__update_register {
  dimension: health_history__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(health_history__update_register, "$.timestamp") ;;
  }
  dimension: facility_type_master__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(health_history__update_register, "$.user_id") ;;
  }
}
