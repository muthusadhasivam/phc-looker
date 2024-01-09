# explore: family_member_master {
#   hidden: yes

#   join: family_member_master__update_register {
#     view_label: "Family Member Master: Update Register"
#     sql: LEFT JOIN UNNEST(${family_member_master.update_register}) as family_member_master__update_register ;;
#     relationship: one_to_many
#   }
# }

view: family_member_master {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.family_member_master`
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
    hidden: yes
  }

  dimension: alt_mobile_number {
    type: number
    sql: ${TABLE}.alt_mobile_number ;;
    hidden: yes
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
    drill_fields: [hud_name]
  }

  dimension: eligible_couple_id {
    type: string
    sql: ${TABLE}.eligible_couple_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
    hidden: yes
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
    drill_fields: [block_name]
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
    hidden: yes
  }

  dimension: member_name {
    type: string
    sql: ${TABLE}.member_name ;;
    hidden: yes
  }

  dimension: mobile_number {
    type: number
    sql: ${TABLE}.mobile_number ;;
    hidden: yes
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
    sql:  if (${TABLE}.village_type is null, "Other", ${TABLE}.village_type);;
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
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
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

  measure:Member_With_mobile_number  {
    type: count_distinct
    filters: [mobile_number: ">0"]
    sql: ${member_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: resident_status_resident {
    type: count_distinct
    label: "Resident Count"
    filters: [resident_status: "Resident,resident"]
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <div style="color:black; background-color: #12B5CB; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    drill_fields:[district_name,resident_status_resident]
  }

  measure: resident_status_migrated {
    type: count_distinct
    label: "Migrated Count"
    filters: [resident_status: "migrated_out,Migrated out,Migrant"]
    sql: ${TABLE}.member_id ;;
    html:
    {% if value >= 0 %}
    <div style="color:black; background-color: #faba23; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    drill_fields:[district_name,resident_status_migrated]
  }

  measure: resident_status_pending {
    type: count_distinct
    label: "Pending Count"
    hidden: yes
    filters: [resident_status: "PENDING"]
    sql: ${TABLE}.member_id ;;
  }

  measure: resident_status_death {
    type: count_distinct
    label: "Death Count"
    filters: [resident_status: "Dead,Death"]
    sql: ${TABLE}.member_id ;;
    html:
    {% if value >= 0 %}
    <div style="color:black;  background-color:#c3ccd1; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    drill_fields:[district_name,resident_status_death]
  }

  measure: resident_status_death_no_html {
    type: count_distinct
    label: "Death Count no html"
    filters: [resident_status: "Dead,Death"]
    sql: ${TABLE}.member_id ;;
    drill_fields:[district_name,resident_status_death]
  }

  measure: resident_status_resident_no_html {
    type: count_distinct
    label: "Resident Count no html"
    filters: [resident_status: "Resident,resident"]
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields:[district_name,resident_status_resident]
  }

  measure: resident_status_duplicate {
    type: count_distinct
    label: "Duplicate Count"
    filters: [resident_status: "Duplicate"]
    sql: ${TABLE}.member_id ;;
    html:
    {% if value >= 0 %}
    <div style="color:black; background-color:#ff7c54; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    drill_fields:[district_name,resident_status_duplicate]

  }

  measure: resident_status_non_traceable {
    type: count_distinct
    label: "NT Count"
    filters: [resident_status: "Non traceable,Non-traceable"]
    sql: ${TABLE}.member_id ;;
    html:
    {% if value >= 0 %}
    <div style="color:black; background-color: #b06bf5; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    drill_fields:[district_name,resident_status_non_traceable]
  }

  measure: Population_age_gt_45 {
    type: count_distinct
    filters: [age: ">45"]
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"

  }

  measure: Population_age_between_18_and_45 {
    type: count_distinct
    filters: [age: ">=18 AND <=45"]
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Population_age_above_18 {
    type: count_distinct
    filters: [age: ">=18"]
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Male_Population{
    type: count_distinct
    filters: [gender: "Male"]
    sql: CONCAT(${TABLE}.family_id, ${TABLE}.member_id  ) ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [district_name,Male_Population]
  }

  measure: Members_count_more_than_10{
    type: count_distinct
    filters: [family_member_master__update_register.family_member_master__update_register_user_id: "-System",]
    sql: ${member_id} ;;
  }


  measure: Female_Population{
    type: count_distinct
    filters: [gender: "Female"]
    sql: CONCAT(${TABLE}.family_id, ${TABLE}.member_id  )  ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [district_name,Female_Population]
  }

  measure: Other_Population{
    type: count_distinct
    filters: [gender: "Other,Transgender"]
    sql: CONCAT(${TABLE}.family_id, ${TABLE}.member_id  )  ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [district_name,Other_Population]
  }


  measure: prev_day_member_count{
    type: count_distinct
    #hidden: yes
    filters: [last_update_date: "yesterday"]
    sql: ${TABLE}.member_id  ;;
  }

  measure: Population_verified{
    type: count_distinct
    label: "Population Verified in past 4 weeks"
    filters: [resident_status: "-Null"]
    filters: [last_update_date: "last 4 weeks"]
  sql: ${TABLE}.member_id  ;;
  value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
}

  measure: total_population_verified{
    type: count_distinct
    label: "Population Verified"
    filters: [resident_status: "-Null"]
    sql: ${TABLE}.member_id  ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_population_non_verified{
    type: count_distinct
    label: "Population Non Verified"
    filters: [resident_status: "Null"]
    sql: ${TABLE}.member_id  ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }


  measure: Members_count {
    type: count_distinct
    hidden: yes
    sql: ${TABLE}.member_id  ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure:Population_allocated_to_street{
    type: count_distinct
    filters: [street_name: "-NULL"]
    sql: ${TABLE}.member_id  ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure:Population_unallocated_to_street{
    type: count_distinct
    filters: [street_name: "NULL,%Unallocated%,EMPTY"]
    sql: ${TABLE}.member_id  ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure:Population_unallocated_to_facility{
    type: count_distinct
    filters: [facility_name:"NULL,%Unallocated%,EMPTY"]
    sql: ${TABLE}.member_id  ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure:Unallocated_street_in_screened{
    type: count_distinct
    filters: [street_name: "%Unallocated%"]
    sql: ${TABLE}.member_id;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure:Unallocated_facility_in_screened{
    type: count_distinct
    filters: [facility_name:"%Unallocated%"]
    sql: ${TABLE}.member_id  ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }



 measure:Population_given_consent{
    type: count_distinct
    filters: [consent_status: "RECEIVED"]
    sql: ${TABLE}.member_id  ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
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
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: New_Families {
    type: number
    sql: ${Family_count}-${prev_day_family_count} ;;
  }

  measure: Aadhaar_linked_members {
    type: count_distinct
    filters: [aadhaar_number: ">0"]
    sql: ${TABLE}.member_id;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: UHID_tagged {
    type: count_distinct
    filters: [unique_health_id: "-NULL"]
    sql: ${TABLE}.member_id;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }


  dimension: age_tier_1_to_100 {
    type: tier
    tiers: [0,11,21,31,41,51,61,71,81,91,101]
    style: integer
    sql: ${age} ;;
  }

  dimension: Child_Health{
    type: tier
    tiers: [0,2,6,13]
    style: integer
    sql: ${age} ;;
  }

  dimension: School_Health_Target{
    type: tier
    tiers: [3,7,10,20]
    style: integer
    sql: ${age} ;;
  }

  dimension: MTM_Target{
    type: tier
    tiers: [18,46,60]
    style: integer
    sql: ${age} ;;
  }
  dimension: Eligible_Couple{
    type: tier
    tiers: [15,50]
    style: integer
    sql: ${age} ;;
  }

  dimension: age_interval {
    type: tier
    tiers: [18,46]
    style: integer
    sql: ${age} ;;
  }

  dimension: age_interval2 {
    type: tier
    tiers: [18,30]
    style: integer
    sql: ${age} ;;
  }

  dimension: age_interval3 {
    type: tier
    tiers: [10,20,30,40,50,60,70,80]
    style: integer
    sql: ${age} ;;
  }



  measure: Population_WithoutDOB{
    type: count_distinct
    filters: [birth_date: "Null"]
    sql: CONCAT(${TABLE}.family_id, ${TABLE}.member_id ) ;;
  }

  measure: member_count {
    label: "Member Count"
    type: count_distinct
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }



  # filter: age_filter_child_health {

  #   label: "age filter child health"

  #   # default_value: “Actual”

  #   type: string

  #   suggestions: ["0 to 1", "0 to 5","0 to 12"]

  # }

  # measure: Child_Health {
  #   type: string
  #   sql: CASE
  #   WHEN {% condition age_filter_child_health %} "0 to 1" {% endcondition %}
  #   THEN count(distinct(${member_id}))
  #   WHEN {% condition age_filter_child_health %} "0 to 5" {% endcondition %}
  #   THEN count(distinct(${member_id}))
  #   WHEN {% condition age_filter_child_health %} "0 to 12" {% endcondition %}
  #   THEN count(distinct(${member_id}))
  #   ELSE count(distinct(${member_id})) END;;
  # }



}


  view: family_member_master__update_register {
    dimension: family_member_master__update_register_timestamp {
      type: string
      label: "Updated Timestamp"
      sql: JSON_VALUE(family_member_master__update_register, "$.timestamp") ;;
    }
    dimension: family_member_master__update_register_user_id {
      type: string
      label: "Updated By User Id"
      sql: JSON_VALUE(family_member_master__update_register, "$.user_id") ;;
    }
}
