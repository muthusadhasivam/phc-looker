# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

# explore: health_history_spanner_bq_vw {
#   #hidden: yes

#   join: health_history_spanner_bq_vw__update_register {
#     view_label: "Health History Vw: Update Register "
#     sql: LEFT JOIN UNNEST(${health_history_spanner_bq_vw.update_register}) as health_history_spanner_bq_vw__update_register ;;
#     relationship: one_to_many
#   }
# }

view: health_history_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.health_history_spanner_bq_vw`
    ;;

  dimension: congenital_anomaly {
    type: string
    sql: ${TABLE}.congenital_anomaly ;;
  }

  dimension: disability {
    type: yesno
    sql: ${TABLE}.disability ;;
  }

  dimension: disability_details {
    type: string
    sql: JSON_VALUE(${TABLE}.disability_details, "$.disability_description") ;;
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

  dimension: family_id {
    type: string
    hidden: yes
    sql: ${TABLE}.family_id ;;
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
    hidden: yes
    sql: ${TABLE}.member_id ;;
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

  dimension: vaccinations {
    type: string
    sql: ${TABLE}.vaccinations ;;
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


  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${family_id},${member_id},${medical_history_id}) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: health_history_spanner_bq_vw__update_register {
  dimension: health_history_spanner_bq_vw__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(health_history_spanner_bq_vw__update_register, "$.timestamp") ;;
  }
  dimension: facility_type_master_spanner_bq_vw__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(health_history_spanner_bq_vw__update_register, "$.user_id") ;;
  }
}
