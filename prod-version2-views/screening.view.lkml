view: screening {
  sql_table_name: `milky-way-galaxy-2707.KPI.screening`
    ;;

  dimension: citizen_age {
    type: number
    sql: ${TABLE}.citizen_age ;;
  }

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

  dimension: is_cervical_cancer {
    type: string
    sql: ${TABLE}.is_cervical_cancer ;;
  }

  dimension: is_breast_cancer {
    type: string
    sql: ${TABLE}.is_breast_cancer ;;
  }

  dimension: citizen_diagnosis_name {
    type: string
    sql: ${TABLE}.citizen_diagnosis_name ;;
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

  dimension: cancer_breast_refferal_type {
    type: string
    sql: ${TABLE}.cancer_breast_refferal_type ;;
  }

  dimension: cancer_cervical_refferal_type {
    type: string
    sql: ${TABLE}.cancer_cervical_refferal_type ;;
  }

  dimension: cancer_oral_refferal_type {
    type: string
    sql: ${TABLE}.cancer_oral_refferal_type ;;
  }

  dimension: ckd_refferal_type {
    type: string
    sql: ${TABLE}.ckd_refferal_type ;;
  }

  dimension: copd_refferal_type {
    type: string
    sql: ${TABLE}.copd_refferal_type ;;
  }

  dimension: covid_19_refferal_type {
    type: string
    sql: ${TABLE}.covid_19_refferal_type ;;
  }

  dimension: diabetes_refferal_type {
    type: string
    sql: ${TABLE}.diabetes_refferal_type ;;
  }

  dimension: hypertension_refferal_type {
    type: string
    sql: ${TABLE}.hypertension_refferal_type ;;
  }

  dimension: leprosy_refferal_type {
    type: string
    sql: ${TABLE}.hypertension_refferal_type ;;
  }

  dimension: mental_health_refferal_type {
    type: string
    sql: ${TABLE}.mental_health_refferal_type ;;
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

  dimension: citizen_gender {
    type: string
    sql: ${TABLE}.citizen_gender ;;
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

  dimension: citizen_service_name {
    type: string
    sql: ${TABLE}.citizen_service_name ;;
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

  dimension: citizen_screening_visits {
    type: string
    sql: ${TABLE}.citizen_screening_visits ;;
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

  dimension: is_citizen_drug_delivered {
    type: string
    sql: ${TABLE}.is_citizen_drug_delivered ;;
  }

  dimension: is_citizen_1st_time_drug {
    type: string
    sql: ${TABLE}.is_citizen_1st_time_drug ;;
  }

  dimension: is_citizen_facility_hwc {
    type: string
    sql: ${TABLE}.is_citizen_facility_hwc ;;
  }

  dimension: is_citizen_lab_tests {
    type: string
    sql: ${TABLE}.is_citizen_lab_tests ;;
  }

  dimension: is_user_facility_hwc {
    type: string
    sql: ${TABLE}.is_user_facility_hwc ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
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

  dimension: user_category_name {
    type: string
    sql: ${TABLE}.user_category_name ;;
  }

  dimension: user_department_name {
    type: string
    sql: ${TABLE}.user_department_name ;;
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

  dimension: citizen_gender_concat {
    type: string
    label: "gender concat"
    sql: CASE
        WHEN ${TABLE}.citizen_gender = "Transgender" THEN "Other"
        ELSE ${TABLE}.citizen_gender
        END ;;
  }

  dimension: citizen_village_type {
    type: string
    sql: if (${TABLE}.citizen_village_type is null, "Other", ${TABLE}.citizen_village_type);;
  }

  dimension: Facility_Residence {
    type: string
    label: "Facility/Residence"
    sql: CASE
        WHEN ${TABLE}.role_name != "Women Health Volunteer" THEN "Facility"
        WHEN ${TABLE}.role_name = "Women Health Volunteer" THEN "Residence"
        ELSE ${TABLE}.role_name
        END ;;
  }

  dimension: age_interval_0_to_100 {
    type: tier
    tiers: [10,20,30,40,50,60,70,80]
    style: integer
    sql: ${citizen_age} ;;
  }

  dimension: age_interval {
    type: tier
    tiers: [18,30]
    style: integer
    sql: ${citizen_age} ;;
  }

  dimension: MTM_Target{
    type: tier
    tiers: [18,46,60]
    style: integer
    sql: ${citizen_age} ;;
  }

  dimension: is_citizen_screened {
    type: string
    sql: ${TABLE}.is_citizen_screened ;;
  }

  dimension: covid_outcome {
    type: string
    sql: ${TABLE}.covid_outcome ;;
  }

  dimension:is_referred{
    type: string
    sql: ${TABLE}.is_referred ;;
  }

  dimension_group: user_facility_last_sync {
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
    sql: ${TABLE}.user_facility_last_sync_date ;;
  }

  measure: Date_count {
    type: count_distinct
    sql: ${TABLE}.screened_date ;;

  }

  dimension: Referal_type {
    type: string
    sql:Case when
          (${cancer_breast_refferal_type} is not null and  ${cancer_breast_refferal_type}  != "") or
          (${cancer_cervical_refferal_type}  is not null and ${cancer_cervical_refferal_type} != "") or
          (${cancer_oral_refferal_type} is not null  and ${cancer_oral_refferal_type} != "")or
          (${ckd_refferal_type} is not null  and ${ckd_refferal_type} != "")or
          (${copd_refferal_type} is not null  and ${copd_refferal_type} != "")or
          (${covid_19_refferal_type} is not null  and ${covid_19_refferal_type} != "")or
          (${diabetes_refferal_type} is not null  and ${diabetes_refferal_type} != "")or
          (${hypertension_refferal_type} is not null and ${hypertension_refferal_type} != "") or
          (${leprosy_refferal_type} is not null  and ${leprosy_refferal_type} != "") or
          (${mental_health_refferal_type} is not null  and ${mental_health_refferal_type} != "") then
          coalesce(${cancer_breast_refferal_type},${cancer_cervical_refferal_type},
          ${cancer_oral_refferal_type},${ckd_refferal_type},${copd_refferal_type},${covid_19_refferal_type},
          ${diabetes_refferal_type},${hypertension_refferal_type},${leprosy_refferal_type},${mental_health_refferal_type})
          else NULL
          End;;
  }


  measure: count {
    type: count
    drill_fields: [detail*]
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Referal_count{
    type: count_distinct
    filters: [is_referred: "yes"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: facility_count {
    type: count_distinct
    sql: ${citizen_facility_name} ;;
  }
  measure: Covid_triaging_normal {
    type: sum
    filters: [covid_outcome:"%Normal%"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,Covid_triaging_normal]
  }
  measure: Covid_triaging_High {
    type: sum
    filters: [covid_outcome:"%High%"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,Covid_triaging_High]
  }
  measure: Covid_triaging_Medium {
    type: sum
    filters: [covid_outcome:"%Medium%"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,Covid_triaging_Medium]
  }
  measure: Covid_triaging_Low {
    type: sum
    filters: [covid_outcome:"%Low%"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,Covid_triaging_Low]
  }
  measure: unique_screenings {
    label: "Unique Screenings"
    type: sum
    filters: [is_citizen_screened: "new screening"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,unique_screenings]
  }

  measure: unique_screenings_18_29 {
    label: "Unique Screened (18-29)"
    type: sum
    filters: [is_citizen_screened: "new screening",age_interval: "18 to 29"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: unique_screenings_gt_30 {
    label: "Unique Screened (30 and above)"
    type: sum
    filters: [is_citizen_screened: "new screening",age_interval: "30 or Above"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }


  measure: Unique_Screening_above_18{
    type: sum
    filters: [is_citizen_screened: "new screening"]
    filters: [citizen_age:">=18"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,Unique_Screening_above_18]
  }

  measure: Unique_Screening{
    type: count_distinct
    filters: [is_citizen_screened: "new screening"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,Unique_Screening_above_18]
  }

  measure: Individual_screenings_last_24_hours{
    label: "Unique Screenings 24 hours"
    type: sum
    filters: [screened_date: "24 hours",is_citizen_screened: "new screening"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,unique_screenings]
  }

  measure: Individual_screenings_last_30_days{
    label: "Unique Screenings 30 days"
    type: sum
    filters: [screened_date: "30 days",is_citizen_screened: "new screening"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,unique_screenings]
  }

  measure: Average_Individual_screenings_last_30_days{
    label: "Average Unique Screenings 30 days"
    type: number
    sql: (${Individual_screenings_last_30_days}/30) ;;
    value_format: "0.0#"
    drill_fields:[citizen_district_name,unique_screenings]
  }

  measure: Total_screenings {
    label: "Total Screenings"
    type: sum
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,Total_screenings]
  }

  measure: unique_drugs_count {
    type: sum
    filters: [is_citizen_1st_time_drug: "yes"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_screening_male {
    type: sum
    filters: [citizen_gender: "Male"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,total_screening_male]
  }

  measure: total_screening_female {
    type: sum
    filters: [citizen_gender: "Female"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,total_screening_female]
  }


  measure: total_screening_other {
    type: sum
    filters: [citizen_gender: "Other,Transgender"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,total_screening_other]
  }

  measure: unique_screening_male {
    type: sum
    filters: [citizen_gender: "Male",is_citizen_screened: "new screening"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,unique_screening_male]
  }

  measure: unique_screening_female {
    type: sum
    filters: [citizen_gender: "Female",is_citizen_screened: "new screening"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,unique_screening_female]
  }


  measure: unique_screening_other {
    type: sum
    filters: [citizen_gender: "Other,Transgender",is_citizen_screened: "new screening"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[citizen_district_name,unique_screening_other]
  }

  measure: Adult_OP_male{
    type: sum
    filters: [citizen_gender: "Male"]
    filters: [citizen_age: ">=18"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Adult_OP_female{
    type: sum
    filters: [citizen_gender: "Female"]
    filters: [citizen_age: ">=18"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Total_OP_Count{
    type: sum
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Adult_OP_transgender{
    type: sum
    filters: [citizen_gender: "Transgender,Others"]
    filters: [citizen_age: ">=18"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Children_OP_male{
    type: sum
    filters: [citizen_gender: "Male"]
    filters: [citizen_age: "<18"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Children_OP_female{
    type: sum
    filters: [citizen_gender: "Female"]
    filters: [citizen_age: "<18"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Children_OP_transgender{
    type: sum
    filters: [citizen_gender: "Transgender,Others"]
    filters: [citizen_age: "<18"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Confirmed_Diabetes_mellitus {
    type: sum
    filters: [citizen_diagnosis_name:  "Diabetes (Sugar)"]
    sql: ${TABLE}.total_screening_count ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #6fabe8; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    drill_fields:[citizen_district_name,Confirmed_Diabetes_mellitus]
  }

  measure: Confirmed_Hypertension {
    type: sum
    filters: [citizen_diagnosis_name:  "Hypertension (BP)"]
    sql: ${TABLE}.total_screening_count ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #75ccca; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    drill_fields: [citizen_district_name,Confirmed_Hypertension]
  }

  measure: Confirmed_Hypertension_and_DiabetesMellitus {
    label: "Confirmed Both"
    type: count_distinct
    filters: [citizen_diagnosis_name:  "Hypertension (BP)"]
    filters: [citizen_diagnosis_name:  "Diabetes (Sugar)"]
    sql: ${TABLE}.total_screening_count ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #e6649a; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    drill_fields: [citizen_district_name,Confirmed_Hypertension_and_DiabetesMellitus]
  }

  measure: Controlled_Diabetes_Mellitus {
    type: sum
    filters: [citizen_control_dm_status:  "controlled",citizen_dm_status: "DM under control"]
    sql: ${TABLE}.total_screening_count ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #6fabe8; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [citizen_district_name,Controlled_Diabetes_Mellitus]
  }

  measure: Controlled_Hypertension{
    type: sum
    filters: [citizen_diagnosis_name:  "Hypertension (BP)",citizen_control_ht_status : "controlled"]
    sql: ${TABLE}.total_screening_count ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #75ccca; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [citizen_district_name,Controlled_Hypertension]
  }

  measure: Controlled_Hypertension_and_Diabetes_Mellitus{
    label: "Controlled Both"
    type: sum
    filters: [citizen_control_dm_status:  "controlled",citizen_dm_status: "DM under control"]
    filters: [citizen_diagnosis_name:  "Hypertension (BP)",citizen_control_ht_status : "controlled"]
    sql: ${TABLE}.total_screening_count ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #e6649a; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [citizen_district_name,Controlled_Hypertension_and_Diabetes_Mellitus]
  }

  measure: Uncontrolled_Diabetes_Mellitus {
    type: sum
    filters: [citizen_control_dm_status:  "uncontrolled",citizen_dm_status: "Uncontrolled DM"]
    sql: ${TABLE}.total_screening_count ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #6fabe8; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [citizen_district_name,Controlled_Diabetes_Mellitus]
  }

  measure: Uncontrolled_Hypertension{
    type: sum
    filters: [citizen_diagnosis_name:  "Hypertension (BP)",citizen_control_ht_status : "uncontrolled"]
    sql: ${TABLE}.total_screening_count ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #75ccca; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [citizen_district_name,Controlled_Hypertension]
  }

  measure: Uncontrolled_Hypertension_and_Diabetes_Mellitus{
    label: "Uncontrolled Both"
    type: sum
    filters: [citizen_diagnosis_name:  "Hypertension (BP)",citizen_control_ht_status : "uncontrolled"]
    filters: [citizen_control_dm_status:  "uncontrolled",citizen_dm_status: "Uncontrolled DM"]
    sql: ${TABLE}.total_screening_count ;;
    html:
    {% if value >= 0 %}
    <div style="color:white; background-color: #75ccca; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [citizen_district_name,Controlled_Hypertension]
  }

  measure: DM_Percent {
    type: number
    label: "Diabetes %"
    sql: 100.00 * COALESCE(${Controlled_Diabetes_Mellitus} / NULLIF(${Confirmed_Diabetes_mellitus}, 0),0) ;;
    value_format: "0\%"
    html:
    <div style="color:white; background-color: #6fabe8; text-align:center; font-weight : bold">{{ rendered_value }}</div>;;
  }

  measure: HT_Percent {
    type: number
    label: "Hypertension %"
    sql: 100.00 * COALESCE(${Controlled_Hypertension} / NULLIF(${Confirmed_Hypertension}, 0),0) ;;
    value_format: "0\%"
    html:
    <div style="color:white; background-color: #75ccca; text-align:center; font-weight : bold">{{ rendered_value }}</div>;;
  }

  measure: HTDM_Percent {
    type: number
    label: "Both %"
    sql: 100.00 * COALESCE(${Controlled_Hypertension_and_Diabetes_Mellitus} / NULLIF(${Confirmed_Hypertension_and_DiabetesMellitus}, 0),0) ;;
    value_format: "0\%"
    html:
    <div style="color:white; background-color: #e6649a; text-align:center; font-weight : bold">{{ rendered_value }}</div>;;
  }


  filter: toggle_IR {
    label: "Toggle Screening"
    type: string
    suggestions: ["Individuals","Visits"]
  }


  measure: toggle_check {
    type: string
    sql: CASE
      WHEN {% condition toggle_IR %} 'Individuals' {% endcondition %}       THEN ${unique_screenings}
      WHEN {% condition toggle_IR %} 'Visits' {% endcondition %}       THEN ${Total_screenings}
      ELSE 0
      END;;
  }

  measure: screened_only_once {
    type: count
    filters: [citizen_screening_visits:  "%screened only once%"]
  }

  measure: multiple_times_screened {
    type:   count
    filters: [citizen_screening_visits:  "%multiple times screened%"]
  }
  measure: Facility_Individual_screening_last_24_hours{
    type: count_distinct
    filters: [screened_date: "1 days ago for 1 days",user_facility_name: "-NULL",is_citizen_screened: "new screening"]
    sql: ${TABLE}.total_screening_count ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #d8dee0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: Facility_Individual_screening_last_48_hours{
    type: count_distinct
    filters: [screened_date: "2 days ago for 2 days",user_facility_name: "-NULL",is_citizen_screened: "new screening"]
    sql: ${TABLE}.total_screening_count ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #d8dee0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: Facility_Individual_screening_last_30_days{
    type: count_distinct
    filters: [screened_date: "30 days ago for 30 days",user_facility_name: "-NULL",is_citizen_screened: "new screening"]
    sql: ${TABLE}.total_screening_count ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #d8dee0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: Facility_Individual_screening_last_60_days{
    type: count_distinct
    filters: [screened_date: "60 days ago for 60 days",user_facility_name: "-NULL",is_citizen_screened: "new screening"]
    sql: ${TABLE}.total_screening_count ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #d8dee0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: Facility_avg_Individual_screening {
    type: number
    label: "Facility Individual Average Screening"
    sql: ${Facility_Individual_screening_last_30_days}/30;;
    value_format: "0.0#"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #d8dee0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: Facility_avg_Individual_screening_last_60_days{
    type: number
    label: "Facility Individual Average Screening last 60 days"
    sql: ${Facility_Individual_screening_last_60_days}/60;;
    value_format: "0.0#"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #d8dee0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: Street_count_undelivered_services {
    label: "Streets with undelivered services"
    type: count_distinct
    filters: [citizen_service_name: "NULL"]
    sql: ${citizen_street_gid} ;;
  }

  measure: Street_count_undelivered_services_90_days {
    label: "Streets with undelivered services in last 90 days"
    type: count_distinct
    filters: [citizen_service_name: "NULL"]
    filters: [screened_date: "90 days ago for 90 days"]
    sql: ${citizen_street_gid} ;;
  }

  measure: Street_count_delivered_services {
    label: "Streets with services delivered"
    type: count_distinct
    filters: [citizen_service_name: "-NULL"]
    sql: ${citizen_street_gid} ;;
  }

  measure: Street_count_no_screening_90_days {
    label: "Streets with no screenings in last 90 days"
    type: count_distinct
    filters: [total_screening_count: "0"]
    filters: [screened_date: "90 days ago for 90 days"]
    sql: ${citizen_street_gid} ;;
  }



  measure: suspected_Hypertension {
    type: sum
    filters: [citizen_ht_status:  "%Suspected hypertension%"]
    sql: ${TABLE}.total_screening_count ;;
  }

  measure: Confirmed_Hypertension_no_html {
    type: sum
    filters: [citizen_ht_status :  "%Known HT%"]
    sql: ${TABLE}.total_screening_count ;;
  }

  measure: suspected_Diabetes {
    type: sum
    filters: [citizen_dm_status:  "%Suspected DM%"]
    sql: ${TABLE}.total_screening_count ;;
  }

  measure: Confirmed_Diabetes_mellitus_no_html {
    type: sum
    filters: [citizen_dm_status:  "%Known DM%"]
    sql: ${TABLE}.total_screening_count ;;
  }

  measure: till_prev_day_screening_count{
    type: sum
    filters: [screened_date: "before 1 day ago"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: till_prev_day_suspected_count {
    type: sum
    filters: [screened_date: "before 1 day ago"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: till_prev_day_confirmed_count{
    type: sum
    filters: [screened_date: "before 1 day ago"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: till_prev_day_Drugs_count{
    type: sum
    filters: [screened_date: "before 1 day ago"]
    filters: [is_citizen_drug_delivered: "yes"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_drugs_count {
    type: sum
    filters: [is_citizen_drug_delivered: "yes"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Confirmed_cervical_cancer {
    type: sum
    filters: [is_cervical_cancer :  "%confirmed cervial cancer%"]
    sql: ${TABLE}.total_screening_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Confirmed_breast_cancer {
    type: sum
    filters: [is_breast_cancer:  "%confirmed breast cancer%"]
    sql: ${TABLE}.total_screening_count ;;
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
      citizen_diagnosis_name,
      role_name,
      citizen_village_name,
      user_block_name,
      user_parent_facility_name,
      user_owner_name,
      citizen_block_name,
      user_department_name,
      citizen_district_name,
      citizen_parent_facility_name,
      user_district_name
    ]
  }
}
