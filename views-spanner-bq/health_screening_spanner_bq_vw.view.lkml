# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

#explore: health_screening_spanner_bq_vw {
# hidden: yes
#   join: health_screening_spanner_bq_vw__drugs {
#     view_label: "Health Screening Vw: Drugs"
#     sql: LEFT JOIN UNNEST(${health_screening_spanner_bq_vw.drugs}) as health_screening_spanner_bq_vw__drugs ;;
#     relationship: one_to_many
#   }
#   join: health_screening__lab_test_spanner_bq_vw {
#     view_label: "Health Screening Vw: Lab Test"
#     sql: LEFT JOIN UNNEST(${health_screening_spanner_bq_vw.lab_test}) as health_screening_spanner_bq_vw__lab_test ;;
#     relationship: one_to_many
#   }
#   join: health_screening_spanner_bq_vw__diseases_disease_list {
#     view_label: "Health Screening Vw: Diseases Disease List"
#     sql: LEFT JOIN UNNEST(${health_screening_spanner_bq_vw.diseases_disease_list}) as health_screening_spanner_bq_vw__diseases_disease_list ;;
#     relationship: one_to_many
#   }
#   join: health_screening_spanner_bq_vw__update_register {
#     view_label: "Health Screening Vw: Update Register "
#     sql: LEFT JOIN UNNEST(${health_screening_spanner_bq_vw.update_register}) as health_screening_spanner_bq_vw__update_register ;;
#     relationship: one_to_many
#   }
# }

view: health_screening_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.health_screening_spanner_bq_vw`
    ;;

  dimension: additional_services {
    type: string
    hidden: yes
    sql: ${TABLE}.additional_services ;;
  }

  dimension: advices {
    type: string
    hidden: yes
    sql: ${TABLE}.advices ;;
  }

  dimension: diseases_disease_list {
    hidden: yes
    sql: ${TABLE}.diseases_disease_list ;;
  }

  dimension: diseases_follow_up {
    type: string
    sql: ${TABLE}.diseases_follow_up ;;
  }

  dimension: diseases_followup_place_id {
    type: string
    sql: ${TABLE}.diseases_followup_place_id ;;
  }

  dimension: diseases_followup_place_name {
    type: string
    sql: ${TABLE}.diseases_followup_place_name ;;
  }

  dimension: diseases_followup_type {
    type: string
    sql: ${TABLE}.diseases_followup_type ;;
  }

  dimension: diseases_outcome {
    type: string
    sql: ${TABLE}.diseases_outcome ;;
  }

  dimension: drugs {
    hidden: yes
    sql: ${TABLE}.drugs ;;
  }

  dimension: family_id {
    type: string
    hidden: yes
    sql: ${TABLE}.family_id ;;
  }

  dimension: lab_test {
    hidden: yes
    sql: ${TABLE}.lab_test ;;
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

  dimension: member_id {
    type: string
    hidden: yes
    sql: ${TABLE}.member_id ;;
  }

  dimension: outcome {
    type: string
    hidden: yes
    sql: ${TABLE}.outcome ;;
  }

  dimension: screening_id {
    type: string
    sql: ${TABLE}.screening_id ;;
  }

  dimension: screening_values {
    type: string
    hidden: yes
    sql: ${TABLE}.screening_values ;;
  }

  dimension: symptoms {
    type: string
    hidden: yes
    sql: ${TABLE}.symptoms ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${family_id},${member_id},${screening_id}) ;;
  }

  dimension: screening_values_bmi {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.bmi") ;;
  }

  dimension: screening_values_breast_cancer {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.breast_cancer") ;;
  }

  dimension: screening_values_breathe_difficulty {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.breathe_difficulty") ;;
  }

  dimension: screening_values_cervical_cancer {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.cervical_cancer") ;;
  }

  dimension: screening_values_chestpain {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.chestpain") ;;
  }

  dimension: screening_values_dia_bp {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.dia_bp") ;;
  }

  dimension: screening_values_dia_bp_30 {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.dia_bp_30") ;;
  }

  dimension: screening_values_dim_vision {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.dim_vision") ;;
  }

  dimension: screening_values_dizziness {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.dizziness") ;;
  }

  dimension: screening_values_dm_risk_score {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.dm_risk_score") ;;
  }

  dimension: screening_values_dm_screening {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.dm_screening") ;;
  }

  dimension: screening_values_fatigue {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.fatigue") ;;
  }

  dimension: screening_values_freq_urine {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.freq_urine") ;;
  }

  dimension: screening_values_height {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.height") ;;
  }

  dimension: screening_values_hip_circumference {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.hip_circumference") ;;
  }

  dimension: screening_values_ht_screening {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.ht_screening") ;;
  }

  dimension: screening_values_palpitation {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.palpitation") ;;
  }

  dimension: screening_values_pulse_rate {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.pulse_rate") ;;
  }

  dimension: screening_values_rbs {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.rbs") ;;
  }

  dimension: screening_values_rbs_date {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.rbs_date") ;;
  }

  dimension: screening_values_rr {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.rr") ;;
  }

  dimension: screening_values_spo2 {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.spo2") ;;
  }

  dimension: screening_values_symptoms {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.symptoms") ;;
  }

  dimension: screening_values_symptom_leprosy {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.symptom_leprosy") ;;
  }

  dimension: screening_values_symptom_mental_health {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.symptom_mental_health") ;;
  }

  dimension: screening_values_sys_bp {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.sys_bp") ;;
  }

  dimension: screening_values_sys_bp_30 {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.sys_bp_30") ;;
  }

  dimension: screening_values_temp {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.temp") ;;
  }

  dimension: screening_values_thirsty {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.thirsty") ;;
  }

  dimension: screening_values_waist_circumference {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.waist_circumference") ;;
  }

  dimension: screening_values_waist_hip_ratio {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.waist_hip_ratio") ;;
  }

  dimension: screening_values_weight {
    type: string
    sql: JSON_QUERY(${TABLE}.screening_values, "$.weight") ;;
  }

  dimension: outcome_follow_up {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.follow_up") ;;
  }

  dimension: outcome_follow_up_date {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.follow_up_date") ;;
  }

  dimension: outcome_outcome_date {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.outcome_date") ;;
  }

  dimension: outcome_recommend_outcome_result {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.recommend_outcome_result") ;;
  }

  dimension: outcome_referral_place_id {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.referral_place_id") ;;
  }

  dimension: outcome_referral_place_name {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.referral_place_name") ;;
  }

  dimension: outcome_referral_type {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.referral_type") ;;
  }

  dimension: outcome_remarks {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.remarks") ;;
  }

  dimension: outcome_screening_outcome {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.screening_outcome") ;;
  }

  dimension: symptoms_breathlessness {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.breathlessness") ;;
  }

  dimension: symptoms_continuous_fever {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.continuous_fever") ;;
  }

  dimension: symptoms_cough {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.cough") ;;
  }

  dimension: symptoms_diarrhea {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.diarrhea") ;;
  }

  dimension: symptoms_fatigue {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.fatigue") ;;
  }

  dimension: symptoms_headache {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.headache") ;;
  }

  dimension: symptoms_loss_taste_smell {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.loss_taste_smell") ;;
  }

  dimension: symptoms_myalgia {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.myalgia") ;;
  }

  dimension: symptoms_sore_throat {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.sore_throat") ;;
  }


  dimension: symptoms_breathlessness_bl {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.Breathlessness") ;;
  }

  dimension: symptoms_continuous_fever_bl {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.Continuous fever") ;;
  }

  dimension: symptoms_cough_bl {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.Cough") ;;
  }

  dimension: symptoms_diarrhea_bl {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.Diarrhea") ;;
  }

  dimension: symptoms_fatigue_bl {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.Fatigue") ;;
  }

  dimension: symptoms_headache_bl {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.Headache") ;;
  }

  dimension: symptoms_loss_taste_smell_bl {
    type: string
    sql: CASE
        WHEN TO_JSON_STRING(symptoms) like ('%Loss of taste/smell%') THEN '1'
        ELSE '0'
        END ;;
  }
  dimension: symptoms_myalgia_bl {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.Myalgia") ;;
  }

  dimension: symptoms_sore_throat_bl {
    type: string
    sql: JSON_QUERY(${TABLE}.symptoms, "$.Sore Throat") ;;
  }

  dimension: advices_advice_antenatal_visit {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_antenatal_visit") ;;
  }

  dimension: advices_advice_balance_diet {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_balance_diet") ;;
  }

  dimension: advices_advice_breast_feeding_counselling {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_breast_feeding_counselling") ;;
  }

  dimension: advices_advice_covid_behaviour {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_covid_behaviour") ;;
  }

  dimension: advices_advice_delivery_counselling {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_delivery_counselling") ;;
  }

  dimension: advices_advice_other {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_other") ;;
  }


  dimension: advices_advice_plenty_fluids {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_plenty_fluids") ;;
  }


  dimension: advices_advice_postnatal_visit {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_postnatal_visit") ;;
  }

  dimension: advices_advice_referral_compliance {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_referral_compliance") ;;
  }

  dimension: advices_advice_sleep {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_sleep") ;;
  }

  dimension: advices_advice_wellness {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_wellness") ;;
  }

  dimension: advices_advice_wound_care {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_wound_care") ;;
  }

  dimension: advices_advice_wound_wash {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_wound_wash") ;;
  }

  dimension: advices_advice_yoga {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.advice_yoga") ;;
  }

  dimension: advices_Adequate_Sleep {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.Adequate Sleep") ;;
  }

  dimension: advices_Balanced_Diet_Advice {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.Balanced Diet Advice") ;;
  }

  dimension: advices_COVID_appropriate_behaviour {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.COVID appropriate behaviour") ;;
  }

  dimension: advices_Other_wellness_advice {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.Other wellness advice") ;;
  }

  dimension: advices_Plenty_of_fluids {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.Plenty of fluids") ;;
  }

  dimension: advices_Yoga {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.Yoga") ;;
  }

  dimension: advices_Breast_feeding_Counselling {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.Breast feeding Counselling") ;;
  }

  dimension: advices_Others {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.Others") ;;
  }

  dimension: advices_Referral_compliance {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.Referral compliance") ;;
  }

  dimension: advices_Wound_care {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.Wound care") ;;
  }

  dimension: advices_Antenatal_Visit_Advice {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.Antenatal Visit Advice") ;;
  }

  dimension: advices_Wound_washing {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.Wound washing") ;;
  }

  dimension: advices_Postnatal_Visit_Advice {
    type: string
    sql: JSON_QUERY(${TABLE}.advices, "$.Postnatal Visit Advice") ;;
  }

  dimension: additional_services_diabetes_mellitus {
    type: string
    sql: JSON_QUERY(${TABLE}.additional_services, "$.diabetes_mellitus");;
  }

  dimension: additional_services_dialysis_capd {
    type: string
    sql: JSON_QUERY(${TABLE}.additional_services, "$.dialysis_capd");;
  }

  dimension: additional_services_hypertension {
    type: string
    sql: JSON_QUERY(${TABLE}.additional_services, "$.hypertension");;
  }

  dimension: additional_services_others {
    type: string
    sql: JSON_QUERY(${TABLE}.additional_services, "$.others");;
  }

  dimension: additional_services_others_details {
    type: string
    sql:JSON_QUERY(${TABLE}.additional_services, "$.others_details");;
  }

  dimension: additional_services_palliative_care {
    type: string
    sql: JSON_QUERY(${TABLE}.additional_services, "$.palliative_care");;
  }

  dimension: additional_services_physiotherapy {
    type: string
    sql: JSON_QUERY(${TABLE}.additional_services, "$.physiotherapy") ;;
  }

  dimension: mtm_condition {
    sql: CONCAT (
        (CASE WHEN ${additional_services_diabetes_mellitus} = '"yes"' THEN 'diabetes ' else '' END),
        (CASE WHEN ${additional_services_dialysis_capd} = '"yes"' THEN 'dialysis ' else '' END),
        (CASE WHEN ${additional_services_hypertension} = '"yes"' THEN 'hypertansion ' else '' END),
        (CASE  WHEN ${additional_services_palliative_care} = '"yes"' THEN 'palliative care ' else '' END ),
        (CASE WHEN ${additional_services_physiotherapy} = '"yes"' THEN 'physiotherapy ' else '' END)
        ) ;;
  }

  measure: Unique_Screening {
    type: count_distinct
    sql: ${TABLE}.member_id ;;
  }

  measure: Total_Screening{
    type: count
    drill_fields: [member_id]
  }


  measure: screening_count {
    type: count
    drill_fields: [screening_id]
  }

  measure: count {
    type: count
    drill_fields: [diseases_followup_place_name]
  }

  measure: MTM_Diabetes {
    type: count_distinct
    filters: [additional_services_diabetes_mellitus : "%yes%"]
    sql: ${member_id} ;;
  }

  measure: MTM_dialysis_capd {
    type: count_distinct
    filters: [additional_services_dialysis_capd : "%yes%"]
    sql: ${member_id} ;;
  }

  measure: MTM_palliative_care{
    type: count_distinct
    filters: [additional_services_palliative_care: "%yes%" ]
    sql: ${member_id} ;;
  }

  measure: MTM_hypertension{
    type: count_distinct
    filters: [additional_services_hypertension: "%yes%" ]
    sql: ${member_id} ;;
  }

  measure: MTM_physiotherapy{
    type: count_distinct
    filters: [additional_services_physiotherapy: "%yes%" ]
    sql: ${member_id} ;;
  }

  measure: MTM_other{
    type: count_distinct
    filters: [additional_services_others: "%yes%" ]
    sql: ${member_id} ;;
  }

}

view: health_screening_spanner_bq_vw__drugs {
  dimension: health_screening_spanner_bq_vw__drugs_drug_id {
    type: string
    label: "Drug_Id"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__drugs, "$.drug_id") ;;
  }
  dimension: health_screening_spanner_bq_vw__drugs_drug_name {
    type: string
    label: "DrugName"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__drugs, "$.drug_name") ;;
  }
  dimension: health_screening_spanner_bq_vw__drugs_drug_type {
    type: string
    label: "Drug Type"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__drugs, "$.drug_type") ;;
  }
  dimension: health_screening_spanner_bq_vw__drugs_frequency {
    type: string
    label: "Frequency"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__drugs, "$.frequency") ;;
  }
  dimension: health_screening_spanner_bq_vw__drugs_no_of_days {
    type: string
    label: "Number of Days"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__drugs, "$.no_of_days") ;;
  }
  dimension: health_screening_spanner_bq_vw__drugs_quantity {
    type: string
    label: "Quantity"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__drugs, "$.quantity") ;;
  }
}

view: health_screening_spanner_bq_vw__lab_test {
  dimension: health_screening_spanner_bq_vw__lab_test_remarks {
    type: string
    label: "Remarks"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__lab_test, "$.remarks") ;;
  }
  dimension: health_screening_spanner_bq_vw__lab_test_result {
    type: string
    label: "Result"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__lab_test, "$.result") ;;
  }
  dimension: health_screening_spanner_bq_vw__lab_test_result_date {
    type: string
    label: "Result Date"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__lab_test, "$.result_date") ;;
  }
  dimension: health_screening_spanner_bq_vw__lab_test_test_id {
    type: string
    label: "Test Id"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__lab_test, "$.test_id") ;;
  }
  dimension: health_screening_spanner_bq_vw__lab_test_test_name {
    type: string
    label: "Test Name"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__lab_test, "$.test_name") ;;
  }
}

view: health_screening_spanner_bq_vw__diseases_disease_list {
  dimension: health_screening_spanner_bq_vw__diseases_disease_list_diagnosis {
    type: string
    label: "Diagnosis"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__diseases_disease_list, "$.diagnosis") ;;
  }
  dimension: health_screening_spanner_bq_vw__diseases_disease_list_service_id {
    type: string
    label: "Service Id"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__diseases_disease_list, "$.service_id") ;;
  }
  dimension: health_screening_spanner_bq_vw__diseases_disease_list_service_name {
    type: string
    label: "Service Name"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__diseases_disease_list, "$.service_name") ;;
  }
  dimension: health_screening_spanner_bq_vw__diseases_disease_list_syndromic_diagnosis {
    type: string
    label: "Syndromic Diagnosis"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__diseases_disease_list, "$.syndromic_diagnosis") ;;
  }
}

view: health_screening_spanner_bq_vw__update_register {
  dimension: health_screening_spanner_bq_vw__update_register_timestamp {
    type: string
    label: "Updated Timestamp"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__update_register, "$.timestamp") ;;
  }
  dimension: health_screening_spanner_bq_vw__update_register_user_id {
    type: string
    label: "Updated By User Id"
    sql: JSON_VALUE(health_screening_spanner_bq_vw__update_register, "$.user_id") ;;
  }


}
