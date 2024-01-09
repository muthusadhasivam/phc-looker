# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: family_member_master {
#   hidden: yes

#   join: family_member_master__update_register {
#     view_label: "Family Member Master: Update Register"
#     sql: LEFT JOIN UNNEST(${family_member_master.update_register}) as family_member_master__update_register ;;
#     relationship: one_to_many
#   }
# }

view: family_member_master {
  sql_table_name: `cobalt-catalyst-318208.TNPHR.family_member_master`
    ;;

  dimension: aadhaar_number {
    type: number
    sql: ${TABLE}.aadhaar_number ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
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
    sql: ${TABLE}.country_id ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: district_id {
    type: string
    sql: ${TABLE}.district_id ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
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

  dimension: facility_name {
    type: string
    sql: ${TABLE}.facility_name ;;
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
    sql: ${TABLE}.habitation_id ;;
  }

  dimension: habitation_name {
    type: string
    sql: ${TABLE}.habitation_name ;;
  }

  dimension: hud_id {
    type: string
    sql: ${TABLE}.hud_id ;;
  }

  dimension: hud_name {
    type: string
    sql: ${TABLE}.hud_name ;;
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

  dimension: voter_id {
    type: string
    sql: ${TABLE}.voter_id ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      area_name,
      hud_name,
      state_name,
      facility_name,
      member_local_name,
      street_name,
      block_name,
      district_name,
      ward_name,
      country_name,
      taluk_name,
      member_name,
      habitation_name,
      village_name,
      rev_village_name
    ]
  }
  dimension: resident_status_concat {
    type: string
    label: "Resident"
    sql: CASE
        WHEN ${TABLE}.resident_status = "resident" THEN "Resident"
        WHEN ${TABLE}.resident_status = "migrated_out" THEN "Migrated out"
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
    filters: [resident_status: "migrated_out,Migrated out"]
    sql: ${TABLE}.member_id ;;
  }

  measure: resident_status_pending {
    type: count_distinct
    label: "Pending Count"
    filters: [resident_status: "PENDING"]
    sql: ${TABLE}.member_id ;;
  }

  measure: Population_age_gt_45 {
    type: count_distinct
    filters: [age: ">45"]
    sql: ${TABLE}.member_id ;;

  }

  measure: Population_age_between_18_and_45 {
    type: count_distinct
    filters: [age: ">=18 AND <=45"]
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
    #hidden: yes
    filters: [last_update_date: "yesterday"]
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
    filters: [last_update_date: "yesterday"]
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

  dimension: age_tier {
    type: tier
    tiers: [1,5,10,20,30,40,50,60,70,80]
    style: integer
    sql: ${age} ;;
  }


  dimension: age_interval {
    type: tier
    tiers: [18,45]
    style: integer
    sql: ${age} ;;
  }

  measure: Drugs_count {
    type: count_distinct
    sql: concat(${member_id},${health_drugs_master.drug_name})  ;;
  }

}

view: family_member_master__update_register {
  dimension: family_member_master__update_register {
    type: string
    sql: family_member_master__update_register ;;
  }
}
