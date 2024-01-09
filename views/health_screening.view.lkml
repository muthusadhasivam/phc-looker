# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: health_screening {
#   hidden: yes

#   join: health_screening__drugs {
#     view_label: "Health Screening: Drugs"
#     sql: LEFT JOIN UNNEST(${health_screening.drugs}) as health_screening__drugs ;;
#     relationship: one_to_many
#   }

#   join: health_screening__lab_test {
#     view_label: "Health Screening: Lab Test"
#     sql: LEFT JOIN UNNEST(${health_screening.lab_test}) as health_screening__lab_test ;;
#     relationship: one_to_many
#   }

#   join: health_screening__update_register {
#     view_label: "Health Screening: Update Register"
#     sql: LEFT JOIN UNNEST(${health_screening.update_register}) as health_screening__update_register ;;
#     relationship: one_to_many
#   }

#   join: health_screening__diseases_disease_list {
#     view_label: "Health Screening: Diseases Disease List"
#     sql: LEFT JOIN UNNEST(${health_screening.diseases_disease_list}) as health_screening__diseases_disease_list ;;
#     relationship: one_to_many
#   }
# }F

include: "family_member_master.view"
view: health_screening {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.health_screening`
    ;;

  extends: [family_member_master]
  extends: [health_screening__lab_test]
  extends: [health_screening__drugs]
  extends: [health_screening__diseases_disease_list]

  dimension: additional_services {
    type: string
    sql: ${TABLE}.additional_services ;;
  }

  dimension: advices {
    type: string
    sql: ${TABLE}.advices ;;
  }

  dimension: age {
    type: number
    sql: ${family_member_master.age} ;;
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
    drill_fields: [village_name]
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
  }

  dimension: diseases_disease_list {
    hidden: yes
    sql: ${TABLE}.diseases_disease_list ;;
  }

  dimension: diseases_follow_up {
    type: string
    sql: ${TABLE}.diseases_follow_up ;;
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

  dimension: district_id {
    type: string
    sql: ${TABLE}.district_id ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name;;
    drill_fields: [hud_name]
  }

  dimension: drugs {
    hidden: yes
    sql: ${TABLE}.drugs ;;
  }

  dimension: family_id {
    type: string
    sql: ${TABLE}.family_id ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: gender_concat {
    type: string
    label: "gender concat"
    sql: CASE
        WHEN ${TABLE}.gender = "Transgender" THEN "Other"
        ELSE ${TABLE}.gender
        END ;;
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

  dimension: member_facility_id {
    type: string
    sql: ${TABLE}.member_facility_id ;;
  }

  dimension: member_facility_level {
    type: string
    sql: ${TABLE}.member_facility_level ;;
  }

  dimension: member_facility_name {
    type: string
    sql: ${TABLE}.member_facility_name ;;
  }

  dimension: member_id {
    type: string
    sql: ${TABLE}.member_id ;;
  }

  dimension: outcome {
    type: string
    sql: ${TABLE}.outcome ;;
  }

  dimension: rev_village_id {
    type: string
    sql: ${TABLE}.rev_village_id ;;
  }

  dimension: rev_village_name {
    type: string
    sql: ${TABLE}.rev_village_name ;;
  }

  dimension: role_name {
    type: string
    #sql: ${TABLE}.role_name ;;
    sql: CASE
    WHEN ${TABLE}.role_name IS NULL THEN "NULL"
    ELSE ${TABLE}.role_name
    END ;;
  }

  dimension: screening_id {
    type: string
    sql: ${TABLE}.screening_id ;;
  }

  dimension: screening_values {
    type: string
    sql: ${TABLE}.screening_values ;;
  }

  dimension: user_department_name {
    type: string
    #sql: ${TABLE}.user_department_name ;;
    sql:REPLACE(${TABLE}.user_department_name,'"','') ;;
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

  dimension: symptoms {
    type: string
    sql: ${TABLE}.symptoms ;;
  }

  dimension: taluk_id {
    type: string
    sql: ${TABLE}.taluk_id ;;
  }

  dimension: taluk_name {
    type: string
    sql: ${TABLE}.taluk_name ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  dimension: user_category_id {
    type: string
    sql: ${TABLE}.user_category_id ;;
  }

  dimension: user_category_name {
    type: string
    sql: ${TABLE}.user_category_name ;;
  }

  dimension: user_directorate_id {
    type: string
    sql: ${TABLE}.user_directorate_id ;;
  }

  dimension: user_directorate_name {
    type: string
    sql: ${TABLE}.user_directorate_name ;;
  }

  dimension: user_facility_id {
    type: string
    sql: ${TABLE}.user_facility_id ;;
  }

  dimension: user_facility_level {
    type: string
    sql: ${TABLE}.user_facility_level ;;
  }

  dimension: user_facility_name {
    type: string
    sql: ${TABLE}.user_facility_name ;;
  }

  dimension: user_facility_type_id {
    type: string
    sql: ${TABLE}.user_facility_type_id ;;
  }

  dimension: user_facility_type_name {
    type: string
    sql: ${TABLE}.user_facility_type_name ;;
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
    sql: ${TABLE}.village_type ;;
  }

  dimension: ward_id {
    type: string
    sql: ${TABLE}.ward_id ;;
  }

  dimension: ward_name {
    type: string
    sql: ${TABLE}.ward_name ;;
  }

  dimension: ward_number {
    type: string
    sql: ${TABLE}.ward_number ;;
  }


  dimension: screening_values_bmi {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.bmi") ;;
  }

  dimension: screening_values_breast_cancer {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.breast_cancer") ;;
  }

  dimension: screening_values_breathe_difficulty {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.breathe_difficulty") ;;
  }

  dimension: screening_values_cervical_cancer {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.cervical_cancer") ;;
  }

  dimension: screening_values_chestpain {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.chestpain") ;;
  }

  dimension: screening_values_dia_bp {
    type: number
    sql: cast(JSON_VALUE(${TABLE}.screening_values, "$.dia_bp") as int) ;;
  }

  dimension: screening_values_dia_bp_30 {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.dia_bp_30") ;;
  }

  dimension: screening_values_dim_vision {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.dim_vision") ;;
  }

  dimension: screening_values_dizziness {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.dizziness") ;;
  }

  dimension: screening_values_dm_risk_score {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.dm_risk_score") ;;
  }

  dimension: screening_values_dm_screening {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.dm_screening") ;;
  }

  dimension: screening_values_fatigue {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.fatigue") ;;
  }

  dimension: screening_values_freq_urine {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.freq_urine") ;;
  }

  dimension: screening_values_height {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.height") ;;
  }

  dimension: screening_values_hip_circumference {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.hip_circumference") ;;
  }

  dimension: screening_values_ht_screening {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.ht_screening") ;;
  }

  dimension: screening_values_palpitation {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.palpitation") ;;
  }

  dimension: screening_values_pulse_rate {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.pulse_rate") ;;
  }

  dimension: screening_values_rbs {
    type: number
    sql: cast(JSON_VALUE(${TABLE}.screening_values, "$.rbs") as int) ;;
  }

  dimension: screening_values_rbs_date {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.rbs_date") ;;
  }

  dimension: screening_values_rr {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.rr") ;;
  }

  dimension: screening_values_spo2 {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.spo2") ;;
  }

  dimension: screening_values_symptoms {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.symptoms") ;;
  }

  dimension: screening_values_symptom_leprosy {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.symptom_leprosy") ;;
  }

  dimension: screening_values_symptom_mental_health {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.symptom_mental_health") ;;
  }

  dimension: screening_values_symptom_tb {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.symptom_tb") ;;
  }

  dimension: screening_values_sys_bp {
    type: number
    sql: cast(JSON_VALUE(${TABLE}.screening_values, "$.sys_bp") as int) ;;
  }

  dimension: screening_values_sys_bp_30 {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.sys_bp_30") ;;
  }

  dimension: screening_values_temp {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.temp") ;;
  }

  dimension: screening_values_oral_symptom {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.oral_symptom") ;;
  }

  dimension: screening_values_kidney_symptom {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.kidney_symptom") ;;
  }

  dimension: screening_values_thirsty {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.thirsty") ;;
  }

  dimension: screening_values_waist_circumference {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.waist_circumference") ;;
  }

  dimension: screening_values_waist_hip_ratio {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.waist_hip_ratio") ;;
  }

  dimension: screening_values_weight {
    type: string
    sql: JSON_VALUE(${TABLE}.screening_values, "$.weight") ;;
  }

  dimension: outcome_follow_up {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.follow_up") ;;
  }

  dimension: outcome_follow_up_date {
    type: date
    sql:REPLACE(JSON_QUERY(${TABLE}.outcome, "$.follow_up_date"), '"', '');;
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
  dimension: outcome_covid_19.referral_place_id {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.covid_19.referral_place_id") ;;
  }

  dimension: outcome_cancer_breast.referral_place_id{
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.cancer_breast.referral_place_id") ;;
  }

  dimension: outcome_cancer_cervical.referral_place_id {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.cancer_cervical.referral_place_id") ;;
  }

  dimension: outcome_cancer_oral.referral_place_id {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.cancer_oral.referral_place_id") ;;
  }

  dimension: outcome_ckd.referral_place_id {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.ckd.referral_place_id") ;;
  }

  dimension: outcome_copd.referral_place_id {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.copd.referral_place_id") ;;
  }

  dimension: outcome_diabetes.referral_place_id {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.diabetes.referral_place_id") ;;
  }

  dimension: outcome_hypertension.referral_place_id {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.hypertension.referral_place_id") ;;
  }

  dimension: outcome_leprosy.referral_place_id {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.leprosy.referral_place_id") ;;
  }

  dimension: outcome_mental_health.referral_place_id {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.mental_health.referral_place_id") ;;
  }

  dimension: outcome_referral_place_name {
    type: string
    sql: JSON_QUERY(${TABLE}.outcome, "$.referral_place_name") ;;
  }

  dimension: outcome_referral_type {
    type: string
    sql: REPLACE(JSON_QUERY(${TABLE}.outcome, "$.referral_type"),'"','') ;;
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
    sql: JSON_VALUE(${TABLE}.symptoms, "$.breathlessness") ;;
  }

  dimension: symptoms_continuous_fever {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.continuous_fever") ;;
  }

  dimension: symptoms_cough {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.cough") ;;
  }

  dimension: symptoms_diarrhea {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.diarrhea") ;;
  }

  dimension: symptoms_fatigue {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.fatigue") ;;
  }

  dimension: symptoms_headache {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.headache") ;;
  }

  dimension: symptoms_loss_taste_smell {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.loss_taste_smell") ;;
  }

  dimension: symptoms_loss_smell {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.loss_smell") ;;
  }

  dimension: symptoms_loss_taste {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.loss_taste") ;;
  }
  dimension: symptoms_myalgia {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.myalgia") ;;
  }

  dimension: symptoms_sore_throat {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.sore_throat") ;;
  }

  dimension: symptoms_difficulty_open_mouth {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.difficulty_open_mouth") ;;
  }

  dimension: symptoms_growth_mouth {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.growth_mouth") ;;
  }

  dimension: symptoms_unhealed_ulcer {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.unhealed_ulcer") ;;
  }

  dimension: symptoms_white_red_patch {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.white_red_patch") ;;
  }

  dimension: symptoms_swelling_face {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.swelling_face") ;;
  }

  dimension: symptoms_swelling_legs {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.swelling_legs") ;;
  }

  dimension: symptoms_difficulty_urination {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.difficulty_urination") ;;
  }

  dimension: symptoms_less_pleasure {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.less_pleasure") ;;
  }

  dimension: symptoms_suicidal_ideations {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.suicidal_ideations") ;;
  }

  dimension: symptoms_trouble_asleep {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.trouble_asleep") ;;
  }

  dimension: symptoms_troubled_feeling {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.troubled_feeling") ;;
  }

  dimension: symptoms_diffuculty_holding {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.diffuculty_holding") ;;
  }

  dimension: symptoms_loss_sensation {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.loss_sensation") ;;
  }

  dimension: symptoms_patch_discol_skin {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.patch_discol_skin") ;;
  }

  dimension: symptoms_blood_sputum {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.blood_sputum") ;;
  }

  dimension: symptoms_cough_2w {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.cough_2w") ;;
  }

  dimension: symptoms_fever_2w {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.fever_2w") ;;
  }

  dimension: symptoms_loss_weight {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.loss_weight") ;;
  }

  dimension: symptoms_night_sweats {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.night_sweats") ;;
  }

  dimension: symptoms_pain_breathing {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.pain_breathing") ;;
  }

  dimension: symptoms_screening_dm_patients {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.screening_dm_patients") ;;
  }

  dimension: symptoms_blood_discharge_nipple {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.blood_discharge_nipple") ;;
  }

  dimension: symptoms_prominent_vessels_breast {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.prominent_vessels_breast") ;;
  }

  dimension: symptoms_skin_change {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.skin_change") ;;
  }

  dimension: symptoms_swell_lymph_nodes {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.swell_lymph_nodes") ;;
  }

  dimension: symptoms_uneven_breasts {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.uneven_breasts") ;;
  }

  dimension: symptoms_bloody_discharge_genitals {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.bloody_discharge_genitals") ;;
  }

  dimension: symptoms_foul_smell {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.foul_smell") ;;
  }

  dimension: symptoms_lenthy_periods {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.lenthy_periods") ;;
  }

  dimension: symptoms_low_back_pain {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.low_back pain") ;;
  }

  dimension: symptoms_breathlessness_bl {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.Breathlessness") ;;
  }

  dimension: symptoms_continuous_fever_bl {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.Continuous fever") ;;
  }

  dimension: symptoms_cough_bl {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.Cough") ;;
  }

  dimension: symptoms_diarrhea_bl {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.Diarrhea") ;;
  }

  dimension: symptoms_fatigue_bl {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.Fatigue") ;;
  }

  dimension: symptoms_headache_bl {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.Headache") ;;
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
    sql: JSON_VALUE(${TABLE}.symptoms, "$.Myalgia") ;;
  }

  dimension: symptoms_sore_throat_bl {
    type: string
    sql: JSON_VALUE(${TABLE}.symptoms, "$.Sore Throat") ;;
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
        (CASE WHEN ${additional_services_hypertension} = '"yes"' THEN 'hypertension ' else '' END),
        (CASE  WHEN ${additional_services_palliative_care} = '"yes"' THEN 'palliative care ' else '' END ),
        (CASE WHEN ${additional_services_physiotherapy} = '"yes"' THEN 'physiotherapy ' else '' END)
        ) ;;
  }

  measure: mtm_v1_v2 {
    type: count_distinct
    sql: CASE
         WHEN ${additional_services_diabetes_mellitus} = '"yes"' or ${additional_services_dialysis_capd} = '"yes"' or
          ${additional_services_hypertension} = '"yes"'  or ${additional_services_palliative_care} = '"yes"' or
          ${additional_services_physiotherapy} = '"yes"' or ${health_history.mtm_beneficiary_diabetes_mellitus_status} = "%yes%" or
          ${health_history.mtm_beneficiary_dialysis_capd_status} = "%yes%" or
          ${health_history.mtm_beneficiary_hypertension_status} = "%yes%" or
          ${health_history.mtm_beneficiary_palliative_care_status} = "%yes%" or
          ${health_history.mtm_beneficiary_physiotherapy_status} = "%yes%" THEN ${TABLE}.member_id
          ELSE NULL
          END;;
  }

  dimension: role_toggle {
    type: string
    label: "Toggle Role"
    sql: CASE
        WHEN ${TABLE}.role_name != "Women Health Volunteer" THEN "Facility"
        WHEN ${TABLE}.role_name = "Women Health Volunteer" THEN "Residence"
        ELSE ${TABLE}.role_name
        END ;;
  }

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${family_id},${member_id},${screening_id}) ;;
  }

  dimension: Disease_id{
    type: string
    label: "Disease_id"
    sql:  ${health_screening__diseases_disease_list.health_screening__diseases_disease_list_id} ;;

  }

  dimension: Services{
    type: string
    label: "Services"
    sql:  ${health_screening__diseases_disease_list.health_screening__diseases_disease_list_service_name} ;;

  }

  measure: Mental_health_PBS{
    type: count_distinct
    sql:
    Case
    when
    (${health_screening.screening_values_symptom_mental_health} != "0" AND ${health_screening.screening_values_symptom_mental_health} != "0") OR
    (${health_screening.symptoms_less_pleasure} != "0" AND ${health_screening.symptoms_less_pleasure} != "0") OR
    (${health_screening.symptoms_suicidal_ideations} != "0" AND ${health_screening.symptoms_suicidal_ideations} != "0") OR
    (${health_screening.symptoms_trouble_asleep} != "0"  AND ${health_screening.symptoms_trouble_asleep} != "0") OR
    (${health_screening.symptoms_troubled_feeling} != "0" AND ${health_screening.symptoms_troubled_feeling} != "0")
    Then ${screening_id}
    else null
    END
    ;;
  }
  measure: Hyper_tension_PBS{
    type: count_distinct
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    sql:
    case
    when
    (${health_screening.screening_values_sys_bp} != 0) OR
    (${health_screening.screening_values_dia_bp} != 0) OR
   (${health_screening.screening_values_palpitation} != "0" AND ${health_screening.screening_values_palpitation} != "0") OR
   (${health_screening.screening_values_dizziness} != "0" AND ${health_screening.screening_values_dizziness} != "0") OR
   (${health_screening.screening_values_fatigue}  != "0" AND ${health_screening.screening_values_fatigue} != "0") OR
   (${health_screening.screening_values_chestpain} != "0" AND ${health_screening.screening_values_chestpain} != "0") OR
   (${health_screening.screening_values_ht_screening} != "0" AND ${health_screening.screening_values_ht_screening} != "0") OR
   (${health_screening.screening_values_breathe_difficulty} != "0" AND ${health_screening.screening_values_breathe_difficulty} != "0")
   Then ${screening_id}
    else null
    END
    ;;
  }

  measure: Covid_19_PBS{
    type: count_distinct
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    sql:
    case
    when
    (${health_screening.screening_values_pulse_rate} != "0" AND ${health_screening.screening_values_pulse_rate} != "0") OR
    (${health_screening.screening_values_rr} != "0" AND ${health_screening.screening_values_rr} != "0") OR
    (${health_screening.screening_values_spo2} != "0" AND ${health_screening.screening_values_spo2} != "0") OR
    (${health_screening.screening_values_temp} != "0" AND ${health_screening.screening_values_temp} != "0") OR
    (${health_screening.symptoms_breathlessness} != "0" AND ${health_screening.symptoms_breathlessness} != "0") OR
    (${health_screening.symptoms_cough} != "0" AND ${health_screening.symptoms_cough} != "0") OR
    (${health_screening.symptoms_continuous_fever} != "0" AND ${health_screening.symptoms_continuous_fever} != "0") OR
    (${health_screening.symptoms_diarrhea} != "0" AND ${health_screening.symptoms_diarrhea} != "0") OR
    (${health_screening.symptoms_fatigue} != "0" AND ${health_screening.symptoms_fatigue} != "0") OR
    (${health_screening.symptoms_headache} != "0" AND ${health_screening.symptoms_headache} != "0") OR
    (${health_screening.symptoms_loss_smell} != "0"  AND ${health_screening.symptoms_loss_smell} != "0") OR
    (${health_screening.symptoms_loss_taste} != "0" AND ${health_screening.symptoms_loss_taste} != "0") OR
    (${health_screening.symptoms_myalgia} != "0" AND ${health_screening.symptoms_myalgia} != "0") OR
    (${health_screening.symptoms_sore_throat} != "0" AND ${health_screening.symptoms_sore_throat} != "0")
    Then ${screening_id}
    else null
    END
   ;;
  }

  measure: CKD_PBS {
    type: count_distinct
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    sql: case
    when
    (${health_screening.screening_values_kidney_symptom} != "0" AND ${health_screening.screening_values_kidney_symptom} != "0") OR
    (${health_screening.symptoms_swelling_face} != "0" AND ${health_screening.symptoms_swelling_face} != "0") OR
    (${health_screening.symptoms_swelling_legs} != "0" AND ${health_screening.symptoms_swelling_legs} != "0") OR
    (${health_screening.symptoms_difficulty_urination} != "0" AND ${health_screening.symptoms_difficulty_urination} != "0")
    Then ${screening_id}
    else null
    END;;
  }

  measure: CA_Oral_PBS{
    type: count_distinct
    sql:
    case
    when
    (${health_screening.screening_values_oral_symptom} != "0" AND ${health_screening.screening_values_oral_symptom} != "0") OR
    (${health_screening.symptoms_difficulty_open_mouth} != "0" AND ${health_screening.symptoms_difficulty_open_mouth} != "0") OR
    (${health_screening.symptoms_growth_mouth} != "0" AND ${health_screening.symptoms_growth_mouth} != "0") OR
    (${health_screening.symptoms_unhealed_ulcer} != "0" AND ${health_screening.symptoms_unhealed_ulcer} != "0") OR
    (${health_screening.symptoms_white_red_patch} != "0" AND ${health_screening.symptoms_white_red_patch} != "0")
    Then ${screening_id}
    else null
    END
    ;;
  }

  measure: Diabeties_melitius_PBS {
    type: count_distinct
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    sql: case
    when
    (${health_screening.screening_values_rbs} != 0 ) OR
(${health_screening.screening_values_rbs_date} != "0" AND ${health_screening.screening_values_rbs_date} != "0") OR
(${health_screening.screening_values_freq_urine} != "0" AND ${health_screening.screening_values_freq_urine} != "0") OR
(${health_screening.screening_values_thirsty} != "0" AND ${health_screening.screening_values_thirsty} != "0") OR
(${health_screening.screening_values_dim_vision} != "0" AND ${health_screening.screening_values_dim_vision} != "0") OR
(${health_screening.screening_values_dm_risk_score} != "0" AND ${health_screening.screening_values_dm_risk_score} != "0") OR
(${health_screening.screening_values_dm_screening} != "0" AND ${health_screening.screening_values_dm_screening} != "0")
Then ${screening_id}
else null
END;;
  }

  measure: leopracy_PBS {
    type: count_distinct
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    sql: case
    when
   (${health_screening.screening_values_symptom_leprosy} != "0" AND ${health_screening.screening_values_symptom_leprosy} != "0") OR
   (${health_screening.symptoms_diffuculty_holding} != "0" AND ${health_screening.symptoms_diffuculty_holding} != "0") OR
   (${health_screening.symptoms_loss_sensation} != "0" AND ${health_screening.symptoms_loss_sensation} != "0") OR
   (${health_screening.symptoms_patch_discol_skin} != "0" AND ${health_screening.symptoms_patch_discol_skin} != "0")
   Then ${screening_id}
   else null
   END;;
  }

  measure: TB_COPD_PBS {
    type: count_distinct
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    sql: case
    when
    (${health_screening.screening_values_symptom_tb} != "0" AND ${health_screening.screening_values_symptom_tb} != "0") OR
    (${health_screening.symptoms_blood_sputum} != "0" AND ${health_screening.symptoms_blood_sputum} != "0") OR
    (${health_screening.symptoms_cough_2w} != "0" AND ${health_screening.symptoms_cough_2w} != "0") OR
    (${health_screening.symptoms_fever_2w} != "0" AND ${health_screening.symptoms_fever_2w} != "0") OR
    (${health_screening.symptoms_loss_weight} != "0" AND ${health_screening.symptoms_loss_weight} != "0") OR
    (${health_screening.symptoms_night_sweats} != "0" AND ${health_screening.symptoms_night_sweats} != "0") OR
    (${health_screening.symptoms_pain_breathing} != "0" AND ${health_screening.symptoms_pain_breathing} != "0") OR
    (${health_screening.symptoms_screening_dm_patients} != "0" AND ${health_screening.symptoms_screening_dm_patients} != "0")
    Then ${screening_id}
    else null
    END;;
  }

  measure: Cancer_Breast_PBS {
    type: count_distinct
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    sql: case
    when
    (${health_screening.screening_values_breast_cancer} != "0" AND ${health_screening.screening_values_breast_cancer} != "0") OR
    (${health_screening.symptoms_blood_discharge_nipple} != "0" AND ${health_screening.symptoms_blood_discharge_nipple} != "0") OR
    (${health_screening.symptoms_prominent_vessels_breast} != "0" AND ${health_screening.symptoms_prominent_vessels_breast} != "0") OR
    (${health_screening.symptoms_skin_change} != "0" AND ${health_screening.symptoms_skin_change} != "0") OR
    (${health_screening.symptoms_swell_lymph_nodes} != "0" AND ${health_screening.symptoms_swell_lymph_nodes} != "0") OR
    (${health_screening.symptoms_uneven_breasts} != "0" AND ${health_screening.symptoms_uneven_breasts} != "0")
    Then ${screening_id}
    else null
    END;;
  }

  measure: Cervical_cancer_PBS {
    type: count_distinct
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    sql: case
    when
    (${health_screening.screening_values_cervical_cancer} != "0" AND ${health_screening.screening_values_cervical_cancer} != "0") OR
    (${health_screening.symptoms_bloody_discharge_genitals} != "0" AND ${health_screening.symptoms_bloody_discharge_genitals} != "0") OR
    (${health_screening.symptoms_foul_smell} != "0" AND ${health_screening.symptoms_foul_smell} != "0") OR
    (${health_screening.symptoms_lenthy_periods} != "0" AND ${health_screening.symptoms_lenthy_periods} != "0") OR
    (${health_screening.symptoms_low_back_pain} != "0" AND ${health_screening.symptoms_low_back_pain} != "0")
    Then ${screening_id}
    else null
    END
    ;;
  }

  measure: Refferal_count_V2{
    type: count_distinct
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    sql: case
    when (${outcome_cancer_breast.referral_place_id} is not NULL and  ${outcome_cancer_breast.referral_place_id} != 'null') or
    (${outcome_cancer_cervical.referral_place_id} is not NULL and ${outcome_cancer_cervical.referral_place_id} != 'null') or
    (${outcome_cancer_oral.referral_place_id} is not NULL and ${outcome_cancer_oral.referral_place_id} != 'null') or
    (${outcome_ckd.referral_place_id} is not NULL and ${outcome_ckd.referral_place_id} != 'null') or
    (${outcome_copd.referral_place_id} is not NULL and ${outcome_copd.referral_place_id} != 'null') or
    (${outcome_covid_19.referral_place_id} is not NULL and ${outcome_covid_19.referral_place_id} != 'null') or
    (${outcome_diabetes.referral_place_id} is not NULL and ${outcome_diabetes.referral_place_id} != 'null') or
    (${outcome_hypertension.referral_place_id} is not NULL and ${outcome_hypertension.referral_place_id} != 'null') or
    (${outcome_leprosy.referral_place_id} is not NULL and ${outcome_leprosy.referral_place_id} != 'null') or
    (${outcome_mental_health.referral_place_id} is not NULL and ${outcome_mental_health.referral_place_id} != 'null') or
    (${outcome_referral_place_id} is not NULL and ${outcome_referral_place_id} != 'null')
    THEN ${member_id}
    else null
    END
    ;;
  }

  measure: Facility_Inidividual_screening_last_24_hours{
    type: count_distinct
    filters: [last_update_date: "24 hours",screening_id: "-NULL",member_facility_id: "-NULL"]
    sql: ${screening_id};;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #d8dee0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [Facility_Inidividual_screening_last_24_hours,district_name]
  }

  measure: Facility_Inidividual_screening_last_48_hours{
    type: count_distinct
    filters: [last_update_date: "48 hours ago for 24 hours",screening_id: "-NULL",member_facility_id: "-NULL"]
    sql: ${screening_id};;
    }

  measure: Facility_Inidividual_screening_last_30_days{
    type: count_distinct
    filters: [last_update_date: "30 days",screening_id: "-NULL",member_facility_id: "-NULL"]
    sql:${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #d8dee0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [Facility_Inidividual_screening_last_30_days,district_name]
  }
  measure: Facility_Inidividual_screening_last_60_days{
    type: count_distinct
    filters: [last_update_date: "60 days",screening_id: "-NULL",member_facility_id: "-NULL"]
    sql:${screening_id} ;;
  }
  measure: Facility_avg_Inidividual_screening {
    type: number
    label: "Facility Individual Average Screening"
    sql: ${Facility_Inidividual_screening_last_30_days}/30;;
    value_format: "0.0#"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #d8dee0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [Facility_avg_Inidividual_screening,district_name]
  }

  measure: Facility_avg_Inidividual_screening_last_60_days{
    type: number
    label: "Facility Individual Average Screening"
    sql: ${Facility_Inidividual_screening_last_60_days}/30;;
    value_format: "0.0#"
  }

  measure: facility_family_last_30_days{
    type: count_distinct
    filters: [last_update_date: "30 days",family_id: "-NULL",member_facility_id: "-NULL"]
    sql: ${family_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #e6c5e1; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [facility_family_last_30_days,district_name]
  }
  measure: change_facility_family_last_60_days{
    type: count_distinct
    filters: [last_update_date: "60 days",family_id: "-NULL",member_facility_id: "-NULL"]
    sql: ${family_id} ;;
  }

  measure: Facility_avg_family_screening {
    type: number
    label: " Facility Average Family Screening"
    sql: ${facility_family_last_30_days}/30;;
    value_format: "0.0#"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #e6c5e1; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [Facility_avg_family_screening,district_name]
  }

  measure: change_Facility_avg_family_screening {
    type: number
    label: " Change Facility Average Family Screening"
    sql: ${change_facility_family_last_60_days}/30;;
    value_format: "0.0#"
    }


  measure: facility_family_last_24_hours{
    type: count_distinct
    filters: [last_update_date: "24 hour",family_id: "-NULL",member_facility_id: "-NULL"]
    sql: ${family_id} ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #e6c5e1; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [facility_family_last_24_hours,district_name]
  }


  measure: facility_family_last_48_hours{
    type: count_distinct
    filters: [last_update_date: "48 hours ago for 24 hours",family_id: "-NULL",member_facility_id: "-NULL"]
    sql: ${family_id} ;;
    }

  measure: Facility_Drugs_delivered_last_24_hours{
    type: count_distinct
    filters: [last_update_date: "24 hours",screening_id: "-NULL",member_facility_id: "-NULL"]
    sql: ${screening_id} ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #bce8e0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [district_name,Facility_Drugs_delivered_last_24_hours]
    }

  measure: change_Facility_Drugs_delivered_last_24_hours{
    type: count_distinct
    filters: [last_update_date: "48 hours ago for 24 hours",screening_id: "-NULL",member_facility_id: "-NULL"]
    sql: ${screening_id} ;;
    }

  measure: Facility_Drugs_delivered_last_30_days{
    type: count_distinct
    filters: [last_update_date: "30 days",screening_id: "-NULL",member_facility_id: "-NULL"]
    sql: ${screening_id};;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #bce8e0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [district_name,Facility_Drugs_delivered_last_30_days]
  }

  measure: Change_Facility_Drugs_delivered_last_60_days{
    type: count_distinct
    filters: [last_update_date: "60 days",screening_id: "-NULL",member_facility_id: "-NULL"]
    sql: ${screening_id};;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Average_Facility_Drugs {
    type: number
    sql: ${Facility_Drugs_delivered_last_30_days}/30 ;;
    value_format: "0.0#"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #bce8e0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [district_name,Average_Facility_Drugs]
  }

  measure: Change_Average_Facility_Drugs {
    type: number
    sql: ${Change_Facility_Drugs_delivered_last_60_days}/30 ;;
    value_format: "0.0#"
    }

  measure: Unique_Screening {
    type: count_distinct
    filters: [screening_id: "-NULL"]
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[district_name,Unique_Screening]
  }

  measure: Unique_Screening_above_18{
    type: count_distinct
    filters: [screening_id: "-NULL"]
    filters: [age: ">=18"]
    filters: [last_update_date: "1 year"]
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[district_name,Unique_Screening]
  }


  measure: Unique_Screening_Males{
    type: count_distinct
    filters: [gender: "Male"]
    filters: [screening_id: "-NULL"]
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[district_name,Unique_Screening]
  }

  measure: Unique_Screening_Females{
    type: count_distinct
    filters: [gender: "Female"]
    filters: [screening_id: "-NULL"]
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[district_name,Unique_Screening]
  }

  measure: Unique_Screening_Others{
    type: count_distinct
    filters: [gender: "Other,Transgender"]
    filters: [screening_id: "-NULL"]
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[district_name,Unique_Screening]
  }

   measure: referral_count {
     type: count_distinct
     sql: ${outcome_referral_place_id} ;;
   }
  measure: Total_Screening{
    type: count_distinct
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    sql: concat(${member_id},${screening_id}) ;;
    drill_fields:[district_name,Total_Screening]
  }

  measure: Member_count{
    type: count_distinct
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: screening_count {
    type: count_distinct
    sql: ${screening_id};;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Adult_OP_screening_count_male{
    type: count_distinct
    filters: [gender: "Male"]
    filters: [age: ">18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Adult_OP_screening_count_female{
    type: count_distinct
    filters: [gender: "Female"]
    filters: [age: ">18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Adult_OP_screening_count_transgender{
    type: count_distinct
    filters: [gender: "Transgender,Others"]
    filters: [age: ">18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Children_OP_screening_count_male{
    type: count_distinct
    filters: [gender: "Male"]
    filters: [age: "<18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Children_OP_screening_count_female{
    type: count_distinct
    filters: [gender: "Female"]
    filters: [age: "<18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Children_OP_screening_count_transgender{
    type: count_distinct
    filters: [gender: "Transgender,Others"]
    filters: [age: ">18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: streetscount {
    type: count_distinct
    filters: [last_update_date: "last 90 days"]
    sql: ${street_name} ;;
  }

  measure: till_prev_day_screening_count{
    type: count_distinct
    #hidden: yes
    filters: [last_update_date: "before 1 day ago"]
    sql: ${screening_id};;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: till_prev_day_suspected_count {
    type: count_distinct
    filters: [screening_values_ht_screening:"%Suspected hypertension%"]
    filters: [last_update_date: "before 1 day ago"]
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: till_prev_day_confirmed_count{
    type: count_distinct
    sql: ${TABLE}.member_id ;;
    filters: [last_update_date: "before 1 day ago"]
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: till_prev_day_Drugs_count{
    type: count_distinct
    filters: [last_update_date: "before 1 day ago"]
    sql: ${TABLE}.screening_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [drug_Delivered_count,district_name]
  }


  measure: screening_count_last_24_hours {
    type: count_distinct
    filters: [last_update_date: "24 hours"]
    sql: ${screening_id};;

    html:
    {% if value >= 0 %}
    <div style="background-color: #cfe8d6; text-align:center">{{ rendered_value }}</div>
    {% endif %};;


  }

  measure: screening_count_last_30_day {
    type: count_distinct
    filters: [last_update_date: "last 30 days"]
    sql: ${screening_id};;
    html:
    {% if value >= 0 %}
    <div style="background-color: #cfe8d6; text-align:center">{{ rendered_value }}</div>
    {% endif %};;
  }

  measure: average_dd {
    type: number
    label: "Average DD"
    sql: ${health_screening.screening_count_last_30_day}/30;;
    value_format: "0.0#"
    html:
    <div style="background-color: #cfe8d6; text-align:center">{{ rendered_value }}</div>;;
  }

  measure: Suspected_Diabetes{
    type: count_distinct
    filters: [screening_values_dm_screening: "%Suspected DM%"]
    sql: ${TABLE}.member_id ;;
  }

  measure: suspected_Hypertension {
    type: count_distinct
    filters: [screening_values_ht_screening:"%Suspected hypertension%"]
    sql: ${TABLE}.member_id ;;
  }

  measure: suspected_both {
    type: count_distinct
    filters: [screening_values_ht_screening:  "%Suspected hypertension%"]
    filters: [screening_values_dm_screening:  "%Suspected DM%"]
    sql: ${TABLE}.member_id ;;
  }


  measure: Confirmed_Diabetes_mellitus {
    type: count_distinct
    filters: [screening_values_dm_screening:  "%Known DM%"]
    sql: ${TABLE}.member_id ;;
    html:
    {% if value >= 0 %}
      <div style="color:white; background-color: #6fabe8; text-align:center; font-weight : bold">{{ rendered_value }}</div>
     {% endif %};;
    drill_fields:[district_name,Confirmed_Diabetes_mellitus]
  }

  measure: Confirmed_Diabetes_mellitus_no_html {
    type: count_distinct
    filters: [screening_values_dm_screening:  "%Known DM%"]
    sql: ${TABLE}.member_id ;;
    drill_fields:[district_name,Confirmed_Diabetes_mellitus]
  }

  measure: Confirmed_Hypertension {
    type: count_distinct
    filters: [screening_values_ht_screening:  "%Known HT%"]
    sql: ${TABLE}.member_id ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #75ccca; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    drill_fields: [district_name,Confirmed_Hypertension]
  }
  measure: Confirmed_Hypertension_no_html {
    type: count_distinct
    filters: [screening_values_ht_screening:  "%Known HT%"]
    sql: ${TABLE}.member_id ;;
    drill_fields: [district_name,Confirmed_Hypertension]
  }

  measure: Confirmed_Hypertension_and_DiabetesMellitus {
    type: count_distinct
    filters: [screening_values_ht_screening:  "%Known HT%"]
    filters: [screening_values_dm_screening:  "%Known DM%"]
    sql: ${TABLE}.member_id ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #e6649a; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    drill_fields: [district_name,Confirmed_Hypertension_and_DiabetesMellitus]
  }

  measure: Confirmed_Hypertension_and_DiabetesMellitus_no_html {
    type: count_distinct
    filters: [screening_values_ht_screening:  "%Known HT%"]
    filters: [screening_values_dm_screening:  "%Known DM%"]
    sql: ${TABLE}.member_id ;;
    drill_fields: [district_name,Confirmed_Hypertension_and_DiabetesMellitus]
  }


  measure: Controlled_Hypertension{
    type: count_distinct
    filters: [screening_values_dia_bp : "<90"]
    filters:[screening_values_sys_bp: "<140"]
    filters: [screening_values_ht_screening:  "%Known HT%"]
    sql: ${TABLE}.member_id ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #75ccca; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    drill_fields: [district_name,Controlled_Hypertension]
  }

  measure: Controlled_Hypertension_no_html{
    type: count_distinct
    filters: [screening_values_dia_bp : "<90"]
    filters:[screening_values_sys_bp: "<140"]
    filters: [screening_values_ht_screening:  "%Known HT%"]
    sql: ${TABLE}.member_id ;;
    drill_fields: [district_name,Controlled_Hypertension]
  }

  measure: Controlled_Diabetes_Mellitus{
    type: count_distinct
    filters: [screening_values_rbs: "<140" ]
    filters: [screening_values_dm_screening:  "%Known DM%"]
    sql: ${TABLE}.member_id ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #6fabe8; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    drill_fields: [district_name,Controlled_Diabetes_Mellitus]
  }

  measure: Controlled_Diabetes_Mellitus_no_html{
    type: count_distinct
    filters: [screening_values_rbs: "<140" ]
    filters: [screening_values_dm_screening:  "%Known DM%"]
    sql: ${TABLE}.member_id ;;
    drill_fields: [district_name,Controlled_Diabetes_Mellitus]
  }

  measure: Controlled_Hypertension_and_Diabetes_Mellitus{
    type: count_distinct
    filters: [screening_values_dia_bp : "<90"]
    filters:[screening_values_sys_bp: "<140"]
    filters: [screening_values_ht_screening:  "%Known HT%"]
    filters: [screening_values_rbs: "<140" ]
    filters: [screening_values_dm_screening:  "%Known DM%"]
    sql: ${TABLE}.member_id ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #e6649a; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    drill_fields: [district_name,Controlled_Hypertension_and_Diabetes_Mellitus]
  }

  measure: Controlled_Hypertension_and_Diabetes_Mellitus_no_html{
    type: count_distinct
    filters: [screening_values_dia_bp : "<90"]
    filters:[screening_values_sys_bp: "<140"]
    filters: [screening_values_ht_screening:  "%Known HT%"]
    filters: [screening_values_rbs: "<140" ]
    filters: [screening_values_dm_screening:  "%Known DM%"]
    sql: ${TABLE}.member_id ;;
    drill_fields: [district_name,Controlled_Hypertension_and_Diabetes_Mellitus]
  }



  measure: DM_Percent {
    type: number
    label: "Diabetes %"
    sql: 100.00 * COALESCE(${Controlled_Diabetes_Mellitus} / NULLIF(${Confirmed_Diabetes_mellitus}, 0),0) ;;
    value_format: "0\%"
    html:
    <div style="color:white; background-color: #1A73E8; text-align:center; font-weight : bold">{{ rendered_value }}</div>;;
  }

  measure: HT_Percent {
    type: number
    label: "Hypertension %"
    sql: 100.00 * COALESCE(${Controlled_Hypertension} / NULLIF(${Confirmed_Hypertension}, 0),0) ;;
    value_format: "0\%"
    html:
    <div style="color:white; background-color: #12B5CB; text-align:center; font-weight : bold">{{ rendered_value }}</div>;;
  }

  measure: HTDM_Percent {
    type: number
    label: "Hypertension & Diabetes %"
    sql: 100.00 * COALESCE(${Controlled_Hypertension_and_Diabetes_Mellitus} / NULLIF(${Confirmed_Hypertension_and_DiabetesMellitus}, 0),0) ;;
    value_format: "0\%"
    html:
    <div style="color:white; background-color: #E52592; text-align:center; font-weight : bold">{{ rendered_value }}</div>;;
  }

   measure: count {
    type: count
    drill_fields: [diseases_followup_place_name]
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: MTM_Diabetes {
    type: count_distinct
    filters: [additional_services_diabetes_mellitus : "%yes%"]
    sql: ${member_id} ;;
  }

  measure: MTM_Diabetes_hypertension {
    type: count_distinct
    filters: [additional_services_diabetes_mellitus : "%yes%",additional_services_hypertension: "%yes%" ]
    sql: ${member_id} ;;
  }

  measure: referrel_count {
  label: "Number of Individuals Referred"
  type: count_distinct
  filters: [outcome_referral_place_id: "-%null%"]
  #sql: ${outcome_referral_place_id} ;;
  sql: concat(${member_id},${outcome_referral_place_id}) ;;
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
  measure: MTM_palliative_care_referral{
    type: count_distinct
    filters: [additional_services_palliative_care: "%yes%" , outcome_referral_place_id: "-NULL" ]
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

  measure: MTM_physiotherapy_referral{
    type: count_distinct
    filters: [additional_services_physiotherapy: "%yes%" , outcome_referral_place_id: "-NULL" ]
    sql: ${member_id} ;;
  }
  measure: MTM_other{
    type: count_distinct
    filters: [additional_services_others: "%yes%" ]
    sql: ${member_id} ;;
  }

  measure: Population_age_gt_45 {
    type: count_distinct
    filters: [age: ">45"]
    sql: ${family_member_master.member_id};;

  }

  measure: Population_age_between_18_and_45 {
    type: count_distinct
    filters: [age: ">=18 AND <=45"]
    sql: ${family_member_master.member_id} ;;
  }

  measure: Total_population {
    type: count_distinct
    sql: ${family_member_master.member_id}  ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [district_name,Total_population]
  }

  measure: Total_population_verified {
    type: count_distinct
    sql:  Case
          When ${family_member_master.resident_status} != 'NULL' then ${family_member_master.member_id}
          END;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [district_name,Total_population]
  }

  measure: streets_not_visited{
    type: count_distinct
    filters: [screening_id: "-NULL"]
    #sql: ${street_id} ;;
    #sql: ${TABLE}.street_id ;;
    sql: ${family_member_master.street_id}  ;;
    drill_fields: [street_name]
  }

  measure: facility_count {
    type: count_distinct
    sql: ${member_facility_name} ;;
  }

  measure: Population_age_gt_30 {
    type: count_distinct
    filters: [age: ">=30"]
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Population_age_between_18_and_29 {
    type: count_distinct
    filters: [age: ">=18 AND <=29"]
    sql: ${family_member_master.member_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }


  measure: screening_individual_last_30_days{
    type: count_distinct
    filters: [last_update_date: "last 30 days"]
    sql: ${member_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #d8dee0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [screening_count,district_name]
  }

  measure: screening_individual_last_24_hours{
    type: count_distinct
    #filters: [last_update_date: "1 day ago"]
    #sql: ${TABLE}.member_id;;
    sql: CASE
         WHEN DATE(health_screening.last_update_date) = DATE(TIMESTAMP_SUB(CURRENT_TIMESTAMP(),INTERVAL 1 DAY))
         THEN health_screening.member_id
         ELSE NULL
         END ;;

    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #d8dee0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [district_name,screening_count]
  }

  measure: screening_family_last_30_days{
    type: count_distinct
    filters: [last_update_date: "last 30 days"]
    sql: ${family_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #e6c5e1; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [Family_Screening_count,district_name]
  }

  measure: avg_screening {
    type: number
    label: "Average Screening"
    sql: ${health_screening.screening_individual_last_30_days}/30;;
    value_format: "0.0#"
    html:
    <div style="background-color: #d8dee0; text-align:center">{{ rendered_value }}</div>;;

  }

  measure: Family_Screening_count {
    type: count_distinct
    sql: ${family_id} ;;
  }

  measure: screening_family_last_60_days_for_30_days{
    type: count_distinct
    filters: [last_update_date: "60 days ago for 30 days"]
    sql: ${family_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: screening_family_last_24_hours{
    type: count_distinct
    #filters: [last_update_date: "24 hour"]
    #sql: ${family_id} ;;
    sql: CASE
    WHEN DATE(health_screening.last_update_date) = DATE(TIMESTAMP_SUB(CURRENT_TIMESTAMP(),INTERVAL 1 DAY))
    THEN ${family_id}
    ELSE NULL
    END ;;

    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #e6c5e1; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [Family_Screening_count,district_name]
  }

  measure: avg_family_screening {
    type: number
    label: "Average Family Screening"
    sql: ${health_screening.screening_family_last_30_days}/30;;
    value_format: "0.0#"
    html:
    <div style="background-color: #e6c5e1; text-align:center">{{ rendered_value }}</div>;;

  }

  measure: screening_past_4_weeks {
    type: number
    label: "Average Screenings in last 4 weeks"
    sql:round(${Total_Screening}/4);;
  }

  filter: toggle_IR {
    label: "Toggle"
      default_value: "Individuals"
      type: string
      suggestions: ["Individuals","Visits"]
      }


  measure: toggle_check {
    type: string
    sql: CASE
      WHEN {% condition toggle_IR %} 'Individuals' {% endcondition %}       THEN ${Unique_Screening}
      ELSE ${Total_Screening}
      END;;
  }

  measure: Drugs_count{
    type: count_distinct
    sql: CONCAT(${member_id},${screening_id},${drugs_id}) ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [drug_Delivered_count,district_name]
  }

  measure: Drugs_count_last_30_days{
    type: count_distinct
    filters: [last_update_date: "last 30 days"]
    sql: CONCAT(${member_id},${screening_id},${drugs_id}) ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [drug_Delivered_count,district_name]
    html:
    {% if value >= 0 %}
    <div style="background-color: #cfe8d6; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: Drugs_count_24_hours{
    type: count_distinct
    #filters: [last_update_date: "24 hours"]
    #sql: CONCAT(${member_id},${screening_id},${drugs_id}) ;;
    sql: CASE
    WHEN DATE(health_screening.last_update_date) = DATE(TIMESTAMP_SUB(CURRENT_TIMESTAMP(),INTERVAL 1 DAY))
    THEN CONCAT(${member_id},${screening_id},${drugs_id})
    ELSE NULL
    END ;;
    html:
    {% if value >= 0 %}
    <div style="background-color: #cfe8d6; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [drug_Delivered_count,district_name]
  }

  measure: Average_Drugs_count_last_30_days {
    type: number
    sql: (${Drugs_count_last_30_days}/30) ;;
    drill_fields: [drug_Delivered_count,district_name]
    value_format: "0.0#"
    html:
    {% if value >= 0 %}
    <div style="background-color: #cfe8d6; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: drug_Delivered_count{
    type: count_distinct
    filters: [health_screening__drugs.health_screening__drugs_drug_id: "-NULL"]
    sql: CONCAT(${member_id},${screening_id},${drugs_id}) ;;
  }

  measure: member_drug_Delivered{
    type: count_distinct
    filters: [health_screening__drugs.health_screening__drugs_drug_id: "-NULL"]
    sql: ${member_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  dimension: OP {
    type: number
    sql: if(${member_facility_name} != ${user_facility_name}, 1, 0) ;;
  }

 measure: OP_count{
  type: count_distinct
  filters: [OP: "1"]
  sql: ${screening_id} ;;
  value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
 }

 measure: OP_count_male{
  type: count_distinct
  filters: [OP: "1"]
  filters: [gender: "Male"]
  sql: ${screening_id} ;;
  value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
 }

measure: OP_count_female{
  type: count_distinct
  filters: [OP: "1"]
  filters: [gender: "Female"]
  sql: ${screening_id} ;;
  value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Adult_OP_count{
    type: count_distinct
    filters: [OP: "1"]
    filters: [age: ">18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Adult_OP_count_male{
    type: count_distinct
    filters: [OP: "1"]
    filters: [gender: "Male"]
    filters: [age: ">18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Adult_OP_count_female{
    type: count_distinct
    filters: [OP: "1"]
    filters: [gender: "Female"]
    filters: [age: ">18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Adult_OP_count_transgender{
    type: count_distinct
    filters: [OP: "1"]
    filters: [gender: "Transgender,Others"]
    filters: [age: ">18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }


  measure: Children_OP_count{
    type: count_distinct
    filters: [OP: "1"]
    filters: [age: "<18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Children_OP_count_male{
    type: count_distinct
    filters: [OP: "1"]
    filters: [gender: "Male"]
    filters: [age: "<18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Children_OP_count_female{
    type: count_distinct
    filters: [OP: "1"]
    filters: [gender: "Female"]
    filters: [age: "<18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Children_OP_count_transgender{
    type: count_distinct
    filters: [OP: "1"]
    filters: [gender: "Transgender,Others"]
    filters: [age: ">18"]
    sql: ${screening_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Covid_triaging_normal {
  type: count_distinct
  filters: [outcome_recommend_outcome_result: "%Normal%"]
  sql: ${member_id} ;;
  value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[district_name,Covid_triaging_normal]
  }

  measure: Covid_triaging_High_risk {
    type: count_distinct
    filters: [outcome_recommend_outcome_result: "%High Risk%"]
    sql: ${member_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[district_name,Covid_triaging_High_risk]
  }

  measure: Covid_triaging_Low_Risk {
    type: count_distinct
    filters: [outcome_recommend_outcome_result: "%Low Risk%"]
    sql: ${member_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[district_name,Covid_triaging_Low_Risk]
  }

  measure: Covid_triaging_medium {
    type: count_distinct
    filters: [outcome_recommend_outcome_result: "%Medium%"]
    sql: ${member_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[district_name,Covid_triaging_medium]
  }




  dimension: lab_test_id {
    type: string
    sql: ${health_screening__lab_test.health_screening__lab_test_test_id} ;;
  }

  measure: Lab_test_count {
    type: count_distinct
    filters: [lab_test_id:"-NULL"]
    sql: ${member_id} ;;
  }

  measure: street_count{
     type: count_distinct
      #sql: ${street_id} ;;
      sql: ${family_member_master.street_id}  ;;
      drill_fields: [street_name]
    }

  measure: compliance_count {
    type:  number
    sql: ${compliance.compliance_count} ;;
  }

  dimension: drugs_id {
    type: string
    label: "Drugs_Id"
    sql: ${health_screening__drugs.health_screening__drugs_drug_id} ;;
  }



  dimension: services_name {
    type: string
    label: "Services_name"
    sql: ${health_screening__diseases_disease_list.health_screening__diseases_disease_list_service_name};;
  }


  measure: mtm_beneficiary_v1_count{
    type: count_distinct
    filters: [additional_services: "%yes%"]
    sql: ${TABLE}.member_id ;;
  }

  measure: member_facility_name_count {
    type: count_distinct
    sql: ${TABLE}.member_facility_name ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      area_name,
      user_category_name,
      hud_name,
      state_name,
      member_facility_name,
      diseases_followup_place_name,
      user_facility_name,
      user_facility_type_name,
      role_name,
      user_directorate_name,
      street_name,
      block_name,
      district_name,
      ward_name,
      country_name,
      taluk_name,
      village_name,
      rev_village_name
    ]
  }
}

view: health_screening__drugs {
  dimension: health_screening__drugs_drug_id {
    type: string
    label: "Drug_Id"
    sql: JSON_VALUE(health_screening__drugs, "$.drug_id") ;;
  }
  dimension: health_screening__drugs_drug_name {
    type: string
    label: "DrugName"
    sql: JSON_VALUE(health_screening__drugs, "$.drug_name") ;;
  }
  dimension: health_screening__drugs_drug_type {
    type: string
    label: "Drug Type"
    sql: JSON_VALUE(health_screening__drugs, "$.drug_type") ;;
  }
  dimension: health_screening__drugs_frequency {
    type: string
    label: "Frequency"
    sql: JSON_VALUE(health_screening__drugs, "$.frequency") ;;
  }
  dimension: health_screening__drugs_no_of_days {
    type: string
    label: "Number of Days"
    sql: JSON_VALUE(health_screening__drugs, "$.no_of_days") ;;
  }
  dimension: health_screening__drugs_quantity {
    type: number
    label: "Quantity"
    sql: cast(JSON_VALUE(health_screening__drugs, "$.quantity") as int) ;;
  }

}

view: health_screening__lab_test {

  dimension: health_screening__lab_test_remarks {
    type: string
    label: "Remarks"
    sql: JSON_VALUE(health_screening__lab_test, "$.remarks") ;;
  }
  dimension: health_screening__lab_test_result {
    type: string
    label: "Result"
    sql: JSON_VALUE(health_screening__lab_test, "$.result") ;;
  }
  dimension: health_screening__lab_test_result_date {
    type: date
    label: "Result Date"
    sql: cast (REPLACE(JSON_VALUE(health_screening__lab_test, "$.result_date"), '"','') as timestamp) ;;
  }
  dimension: health_screening__lab_test_test_id {
    type: string
    label: "Test Id"
    sql: JSON_VALUE(health_screening__lab_test, "$.test_id") ;;
  }
  dimension: health_screening__lab_test_test_name {
    type: string
    label: "Test Name"
    sql: JSON_VALUE(health_screening__lab_test, "$.test_name") ;;
  }
}

view: health_screening__diseases_disease_list {
  dimension: health_screening__diseases_disease_list_diagnosis {
    type: string
    label: "Diagnosis"
    sql: JSON_VALUE(health_screening__diseases_disease_list, "$.diagnosis") ;;
  }
  dimension: health_screening__diseases_disease_list_service_id {
    type: string
    label: "Service Id"
    sql: cast(JSON_VALUE(health_screening__diseases_disease_list, "$.service_id") as int) ;;
  }
  dimension: health_screening__diseases_disease_list_service_name {
    type: string
    label: "Service Name"
    sql: JSON_VALUE(health_screening__diseases_disease_list, "$.service_name") ;;
  }
  dimension: health_screening__diseases_disease_list_syndromic_diagnosis {
    type: string
    label: "Syndromic Diagnosis"
    sql: JSON_VALUE(health_screening__diseases_disease_list, "$.syndromic_diagnosis") ;;
  }
  dimension: health_screening__diseases_disease_list_id {
    type: string
    label: "id"
    sql: JSON_VALUE(health_screening__diseases_disease_list, "$.id")  ;;
  }

  # measure: screening_referrel {
  #   type: string
  #   filters: [health_screening__diseases_disease_list_diagnosis: "test"]
  #   sql: concat(${health_screening.screening_count},",",${health_screening.referrel_count});;
  # }
}

view: health_screening__update_register {
  dimension: health_screening__update_register_timestamp {
    type: string
    label: "Updated Timestamp"
    sql: JSON_VALUE(health_screening__update_register, "$.timestamp") ;;
  }
  dimension: health_screening__update_register_user_id {
    type: string
    label: "Updated By User Id"
    sql: JSON_VALUE(health_screening__update_register, "$.user_id") ;;
  }

  measure: User_count {
       type: count_distinct
       sql: ${health_screening__update_register_user_id} ;;
     }

}
