# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

# explore: family_member_master_spanner_bq_vw {
#   hidden: yes

#   join: family_member_master_spanner_bq_vw__update_register_timestamp {
#     view_label: "Family Member Master Vw: Update Register Timestamp"
#     sql: LEFT JOIN UNNEST(${family_member_master_spanner_bq_vw.update_register_timestamp}) as family_member_master_spanner_bq_vw__update_register_timestamp ;;
#     relationship: one_to_many
#   }
# }

view: family_member_master_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.family_member_master_spanner_bq_vw`
    ;;

  dimension: aadhaar_number {
    type: number
    sql: ${TABLE}.aadhaar_number ;;
  }

  dimension: alt_email {
    type: string
    sql: ${TABLE}.alt_email ;;
  }

  dimension: alt_mobile_number {
    type: number
    sql: ${TABLE}.alt_mobile_number ;;
  }

  dimension: area_id {
    type: string
    hidden: yes
    sql: ${TABLE}.area_id ;;
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
    hidden: yes
    sql: ${TABLE}.block_id ;;
  }

  dimension: consent_details {
    type: string
    sql: ${TABLE}.consent_details ;;
  }

  dimension: consent_status {
    type: string
    sql: ${TABLE}.consent_status ;;
  }

  dimension: country_id {
    type: string
    hidden: yes
    sql: ${TABLE}.country_id ;;
  }

  dimension: district_id {
    type: string
    hidden: yes
    sql: ${TABLE}.district_id ;;
  }

  dimension: eligible_couple_id {
    type: string
    sql: ${TABLE}.eligible_couple_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: facility_id {
    type: string
    sql: ${TABLE}.facility_id ;;
  }

  dimension: family_id {
    type: string
    sql: ${TABLE}.family_id ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: habitation_id {
    type: string
    hidden: yes
    sql: ${TABLE}.habitation_id ;;
  }

  dimension: hud_id {
    type: string
    hidden: yes
    sql: ${TABLE}.hud_id ;;
  }

  dimension: insurances {
    type: string
    sql: ${TABLE}.insurances ;;
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

  dimension: makkal_number {
    type: string
    sql: ${TABLE}.makkal_number ;;
  }

  dimension: member_id {
    type: string
    sql: ${TABLE}.member_id ;;
  }

  dimension: member_local_name {
    type: string
    sql: ${TABLE}.member_local_name ;;
  }

  dimension: member_name {
    type: string
    sql: ${TABLE}.member_name ;;
  }

  dimension: mobile_number {
    type: number
    sql: ${TABLE}.mobile_number ;;
  }

  dimension: ndhm_id {
    type: string
    sql: ${TABLE}.ndhm_id ;;
  }

  dimension: phr_family_id {
    type: number
    sql: ${TABLE}.phr_family_id ;;
  }

  dimension: program_ids {
    type: string
    sql: ${TABLE}.program_ids ;;
  }

  dimension: relationship {
    type: string
    sql: ${TABLE}.relationship ;;
  }

  dimension: relationship_with {
    type: string
    sql: ${TABLE}.relationshipWith ;;
  }

  dimension: resident_status {
    type: string
    sql: ${TABLE}.resident_status ;;
  }

  dimension: resident_status_details {
    type: string
    sql: ${TABLE}.resident_status_details ;;
  }

  dimension: rev_village_id {
    type: string
    hidden: yes
    sql: ${TABLE}.rev_village_id ;;
  }

  dimension: state_id {
    type: string
    hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  dimension: street_id {
    type: string
    hidden: yes
    sql: ${TABLE}.street_id ;;
  }

  dimension: taluk_id {
    type: string
    hidden: yes
    sql: ${TABLE}.taluk_id ;;
  }

  dimension: unique_health_id {
    type: string
    sql: ${TABLE}.unique_health_id ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  dimension: village_id {
    type: string
    hidden: yes
    sql: ${TABLE}.village_id ;;
  }

  dimension: voter_id {
    type: string
    sql: ${TABLE}.voter_id ;;
  }

  dimension: ward_id {
    type: string
    hidden: yes
    sql: ${TABLE}.ward_id ;;
  }

  dimension: welfare_beneficiary_ids {
    type: string
    sql: ${TABLE}.welfare_beneficiary_ids ;;
  }

  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${member_id},${family_id}) ;;
  }

  measure: count {
    type: count
    drill_fields: [member_name, member_local_name]
  }

  dimension: Age {
    type: number
    sql:  DATE_DIFF( CURRENT_DATE(), ${birth_date}, YEAR) ;;
  }

  dimension: age_tier {
    type: tier
    tiers: [1,5,10,20,30,40,50,60,70,80]
    style: integer
    sql: ${Age} ;;
  }


  dimension: age_interval {
    type: tier
    tiers: [18,45]
    style: integer
    sql: ${Age} ;;
  }

  dimension: resident_status_concat {
    type: string
    label: "Resident"
    sql: CASE
        WHEN ${TABLE}.resident_status = "resident" THEN "Resident"
        ELSE ${TABLE}.resident_status
        END ;;
  }


  measure: resident_status_resident {
    type: count_distinct
    label: "Resident Count"
    filters: [resident_status: "Resident,resident"]
    sql: ${TABLE}.member_id ;;
  }

  measure: resident_status_migrated {
    type: count_distinct
    label: "Migrated Count"
    filters: [resident_status: "migrated_out"]
    sql: ${TABLE}.member_id ;;
  }

  measure: Population_age_gt_45 {
    type: count_distinct
    filters: [Age: ">45"]
    sql: ${TABLE}.member_id ;;

  }

  measure: Population_age_between_18_and_45 {
    type: count_distinct
    filters: [Age: ">=18 AND <=45"]
    sql: ${TABLE}.member_id ;;
  }

  measure: Male_Population{
    type: count_distinct
    filters: [gender: "Male"]
    sql: CONCAT(${TABLE}.family_id, ${TABLE}.member_id  ) ;;
  }

  measure: Female_Population{
    type: count_distinct
    filters: [gender: "Female"]
    sql: CONCAT(${TABLE}.family_id, ${TABLE}.member_id  )  ;;
  }

  measure: Other_Population{
    type: count_distinct
    filters: [gender: "Other,Transgender"]
    sql: CONCAT(${TABLE}.family_id, ${TABLE}.member_id  )  ;;
  }


  measure: prev_day_member_count{
    type: count_distinct
    hidden: yes
    filters: [last_update_date: "before 2021/11/11"]
    sql: ${TABLE}.member_id  ;;
  }

  measure: Members_count {
    type: count_distinct
    hidden: yes
    sql: ${TABLE}.member_id  ;;
  }

  measure: New_members {
    type: number
    sql: ${Members_count}-${prev_day_member_count} ;;
  }

  measure: prev_day_family_count{
    type: count_distinct
    filters: [last_update_date: "before 2021/11/11"]
    sql: ${TABLE}.family_id  ;;
  }

  measure: Family_count {
    type: count_distinct
    sql: ${TABLE}.family_id  ;;
  }

  measure: New_Families {
    type: number
    sql: ${Family_count}-${prev_day_family_count} ;;
  }

}


view: family_member_master_spanner_bq_vw__update_register {
  dimension: family_member_master_spanner_bq_vw__update_register_timestamp {
    type: string
    label: "Updated Timestamp"
    sql: JSON_VALUE(family_member_master_spanner_bq_vw__update_register, "$.timestamp") ;;
  }
  dimension: family_member_master_spanner_bq_vw__update_register_user_id {
    type: string
    label: "Updated By User Id"
    sql: JSON_VALUE(family_member_master_spanner_bq_vw__update_register, "$.user_id") ;;
  }
}
