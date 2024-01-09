view: population {
  sql_table_name: `staging-tnphr.KPI.population`
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
    drill_fields: [citizen_village_name]
  }

  dimension: citizen_block_type {
    type: string
    sql: ${TABLE}.citizen_block_type ;;
  }

  dimension: citizen_congenital_anomaly {
    type: string
    sql: ${TABLE}.citizen_congenital_anomaly ;;
  }

  dimension: citizen_consent_status {
    type: string
    sql: ${TABLE}.citizen_consent_status ;;
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

  dimension_group: citizen_created {
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
    sql: ${TABLE}.citizen_created_date ;;
  }

  dimension: citizen_disability {
    type: yesno
    sql: ${TABLE}.citizen_disability ;;
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

  dimension: citizen_gender {
    type: string
    sql: CASE
    WHEN ${TABLE}.citizen_gender = "Other" THEN "Transgender"
    ELSE ${TABLE}.citizen_gender
    END ;;
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

  dimension: citizen_marriage_age {
    type: string
    sql: ${TABLE}.citizen_marriage_age ;;
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

  dimension: is_citizen_aadhaar_number {
    type: string
    sql: ${TABLE}.is_citizen_aadhaar_number ;;
  }

  dimension: is_citizen_birth_date {
    type: string
    sql: ${TABLE}.is_citizen_birth_date ;;
  }

  dimension: is_citizen_mobile_number {
    type: string
    sql: ${TABLE}.is_citizen_mobile_number ;;
  }

  dimension: is_citizen_screened {
    type: string
    sql: ${TABLE}.is_citizen_screened ;;
  }

  dimension: is_citizen_udid {
    type: string
    sql: ${TABLE}.is_citizen_udid ;;
  }

  dimension: is_citizen_unique_health_id {
    type: string
    sql: ${TABLE}.is_citizen_unique_health_id ;;
  }

  dimension: is_citizen_updated {
    type: string
    sql: ${TABLE}.is_citizen_updated ;;
  }

  dimension: population_count {
    type: number
    sql: ${TABLE}.population_count ;;
  }

  dimension: user_created_by {
    type: string
    sql: ${TABLE}.user_created_by ;;
  }

  dimension: user_directorate {
    type: string
    sql: ${TABLE}.user_directorate ;;
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

  dimension: user_owner {
    type: string
    sql: ${TABLE}.user_owner ;;
  }

  dimension: user_parent_facility {
    type: string
    sql: ${TABLE}.user_parent_facility ;;
  }

  dimension: user_phr_role {
    type: string
    sql: ${TABLE}.user_phr_role ;;
  }

  dimension: user_role {
    type: string
    sql: ${TABLE}.user_role ;;
  }

  dimension: citizen_village_type {
    type: string
    #sql: if (${TABLE}.citizen_village_type is null, "Other", ${TABLE}.citizen_village_type);;
    sql: if (${TABLE}.citizen_village_type is null or ${TABLE}.citizen_village_type = "OT" , "Other", ${TABLE}.citizen_village_type);;
  }

  dimension: age_tier_1_to_100 {
    type: tier
    tiers: [0,11,21,31,41,51,61,71,81,91,101]
    style: integer
    sql: ${citizen_age} ;;
  }

  dimension: Child_Health{
    type: tier
    tiers: [0,2,6,13]
    style: integer
    sql: ${citizen_age} ;;
  }

  dimension: School_Health_Target{
    type: tier
    tiers: [3,7,10,20]
    style: integer
    sql: ${citizen_age} ;;
  }

  dimension: MTM_Target{
    type: tier
    tiers: [18,46,60]
    style: integer
    sql: ${citizen_age} ;;
  }

  dimension: NCD_Age {
    type: tier
    tiers: [18,30]
    style: integer
    sql: ${citizen_age} ;;
  }

  dimension: age_interval_population {
    type: tier
    tiers: [18,46]
    style: integer
    sql: ${citizen_age} ;;
  }

  dimension: citizen_resident_status_concat {
    type: string
    label: "Citizen Resident status concat"
    sql: CASE
        WHEN ${TABLE}.citizen_resident_status = "resident" THEN "Resident"
        WHEN ${TABLE}.citizen_resident_status = "Migrant" THEN "Migrated out"
        WHEN ${TABLE}.citizen_resident_status = "Dead" THEN "Death"
        WHEN ${TABLE}.citizen_resident_status = "Non traceable" THEN "Non-traceable"
        ELSE ${TABLE}.citizen_resident_status
        END ;;
  }

  dimension: Eligible_Couple{
    type: tier
    tiers: [15,50]
    style: integer
    sql: ${citizen_age} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure:Population_given_consent{
    type: sum
    filters: [citizen_consent_status: "RECEIVED"]
    sql: ${TABLE}.population_count   ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_Population_given_consent*"
    # }
  }

  # set: DRILL_FIELD_Community_Population_given_consent{
  #   fields: [
  #     citizen_district_name
  #     ,Population_given_consent
  #   ]
  # }

  measure:Population_allocated_to_street{
    type: sum
    label: "Population mapped to Streets"
    filters: [citizen_street_name: "-NULL"]
    sql: ${TABLE}.population_count   ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_Population_allocated_to_street*"
    # }
  }

  # set: DRILL_FIELD_Community_Population_allocated_to_street{
  #   fields: [
  #     citizen_district_name
  #     ,Population_allocated_to_street
  #   ]
  # }

  measure:Population_allocated_to_street_Unallocated{
    type: sum
    label: "Population mapped to unallocated Streets"
    filters: [citizen_street_name: "-NULL,Unallocated Street -%"]
    sql: ${TABLE}.population_count   ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_Population_allocated_to_street_Unallocated*"
    # }
  }

  # set: DRILL_FIELD_Community_Population_allocated_to_street_Unallocated{
  #   fields: [
  #     citizen_district_name
  #     ,Population_allocated_to_street_Unallocated
  #   ]
  # }

  measure:Population_allocated_to_street_minus_Unallocated{
    type: sum
    label: "Population mapped to allocated Streets"
    filters: [citizen_street_name: "-NULL,-Unallocated Street -%"]
    sql: ${TABLE}.population_count   ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_Population_allocated_to_street_minus_Unallocated*"
    # }
  }

  # set: DRILL_FIELD_Community_Population_allocated_to_street_minus_Unallocated{
  #   fields: [
  #     citizen_district_name
  #     ,Population_allocated_to_street_minus_Unallocated
  #   ]
  # }

  measure: total_population {
    type: sum
    label: "Total Population"
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_population*"
    # }
  }

  # set: DRILL_FIELD_Community_total_population{
  #   fields: [
  #     citizen_district_name
  #     ,total_population
  #   ]
  # }

  measure: total_members_added {
    type: sum
    label: "Total Members Added"
    filters: [user_created_by: "user"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_members_added*"
    # }
  }

  # set: DRILL_FIELD_Community_total_members_added{
  #   fields: [
  #     citizen_district_name
  #     ,total_members_added
  #   ]
  # }

  measure: total_population_Corporation {
    type: sum
    label: "Total Population : Corporation"
    filters: [citizen_village_type: "CO"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_population_Corporation*"
    # }
  }

  # set: DRILL_FIELD_Community_total_population_Corporation{
  #   fields: [
  #     citizen_district_name
  #     ,total_population_Corporation
  #   ]
  # }

  measure: total_population_Municipality {
    type: sum
    label: "Total Population : Municipality"
    filters: [citizen_village_type: "MP"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_population_Municipality*"
    # }
  }

  # set: DRILL_FIELD_Community_total_population_Municipality{
  #   fields: [
  #     citizen_district_name
  #     ,total_population_Municipality
  #   ]
  # }

  measure: total_population_Town_Panchayat {
    type: sum
    label: "Total Population : Town Panchayat"
    filters: [citizen_village_type: "TP"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_population_Town_Panchayat*"
    # }
  }

  # set: DRILL_FIELD_Community_total_population_Town_Panchayat{
  #   fields: [
  #     citizen_district_name
  #     ,total_population_Town_Panchayat
  #   ]
  # }

  measure: total_population_Village_Panchayat {
    type: sum
    label: "Total Population : Village Panchayat"
    filters: [citizen_village_type: "VP"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_population_Village_Panchayat*"
    # }
  }

  # set: DRILL_FIELD_Community_total_population_Village_Panchayat{
  #   fields: [
  #     citizen_district_name
  #     ,total_population_Village_Panchayat
  #   ]
  # }

  measure: total_population_Village_Type_Other {
    type: sum
    label: "Total Population : Village Type Other"
    filters: [citizen_village_type: "Other"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_population_Village_Type_Other*"
    # }
  }

  # set: DRILL_FIELD_Community_total_population_Village_Type_Other{
  #   fields: [
  #     citizen_district_name
  #     ,total_population_Village_Type_Other
  #   ]
  # }

  measure: total_population_Urban {
    type: sum
    label: "Total Urban Population"
    filters: [citizen_village_type: "CO,MP"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_population_Urban*"
    # }
  }

  # set: DRILL_FIELD_Community_total_population_Urban{
  #   fields: [
  #     citizen_district_name
  #     ,total_population_Urban
  #   ]
  # }

  measure: total_population_Rural {
    type: sum
    label: "Total Rural Population"
    filters: [citizen_village_type: "VP,TP"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_population_Rural*"
    # }
  }

  # set: DRILL_FIELD_Community_total_population_Rural{
  #   fields: [
  #     citizen_district_name
  #     ,total_population_Rural
  #   ]
  # }


  measure: total_Urban_male_population {
      type: sum
      label: "Total Urban Male Population"
      filters: [citizen_village_type: "CO,MP"]
      filters: [citizen_gender: "Male"]
      sql: ${TABLE}.population_count ;;
      value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
      # link: {
      #   label: "Community"
      #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_Urban_male_population*"
      # }
    }

    # set: DRILL_FIELD_Community_total_Urban_male_population{
    #   fields: [
    #     citizen_district_name
    #     ,total_Urban_male_population
    #   ]
    # }

  measure: total_Urban_female_population {
    type: sum
    label: "Total Urban Female Population"
    filters: [citizen_village_type: "CO,MP"]
    filters: [citizen_gender: "Female"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_Urban_female_population*"
    # }
  }

  # set: DRILL_FIELD_Community_total_Urban_female_population{
  #   fields: [
  #     citizen_district_name
  #     ,total_Urban_female_population
  #   ]
  # }

  measure: total_Urban_Transgender_population {
    type: sum
    label: "Total Urban Transgender Population"
    filters: [citizen_village_type: "CO,MP"]
    filters: [citizen_gender: "Transgender"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_Urban_Transgender_population*"
    # }
  }

  # set: DRILL_FIELD_Community_total_Urban_Transgender_population{
  #   fields: [
  #     citizen_district_name
  #     ,total_Urban_Transgender_population
  #   ]
  # }


  measure: total_Rural_male_population {
    type: sum
    label: "Total Rural Male Population"
    filters: [citizen_village_type: "VP,TP"]
    filters: [citizen_gender: "Male"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_Rural_male_population*"
    # }
  }

  # set: DRILL_FIELD_Community_total_Rural_male_population{
  #   fields: [
  #     citizen_district_name
  #     ,total_Rural_male_population
  #   ]
  # }

  measure: total_Rural_female_population {
    type: sum
    label: "Total Rural Female Population"
    filters: [citizen_village_type: "VP,TP"]
    filters: [citizen_gender: "Female"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_Rural_female_population*"
    # }
  }

  # set: DRILL_FIELD_Community_total_Rural_female_population{
  #   fields: [
  #     citizen_district_name
  #     ,total_Rural_female_population
  #   ]
  # }

  measure: total_Rural_Transgender_population {
    type: sum
    label: "Total Rural Transgender Population"
    filters: [citizen_village_type: "VP,TP"]
    filters: [citizen_gender: "Transgender"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_Rural_Transgender_population*"
    # }
  }

  # set: DRILL_FIELD_Community_total_Rural_Transgender_population{
  #   fields: [
  #     citizen_district_name
  #     ,total_Rural_Transgender_population
  #   ]
  # }

   measure: total_male_population_Village_Type_Other {
    type: sum
    label: "Total Male Population : Village Type Other"
    filters: [citizen_village_type: "Other"]
    filters: [citizen_gender: "Male"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_male_population_Village_Type_Other*"
    # }
  }

  # set: DRILL_FIELD_Community_total_male_population_Village_Type_Other{
  #   fields: [
  #     citizen_district_name
  #     ,total_male_population_Village_Type_Other
  #   ]
  # }

  measure: total_female_population_Village_Type_Other {
    type: sum
    label: "Total Female Population : Village Type Other"
    filters: [citizen_village_type: "Other"]
    filters: [citizen_gender: "Female"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_female_population_Village_Type_Other*"
    # }
  }

  # set: DRILL_FIELD_Community_total_female_population_Village_Type_Other{
  #   fields: [
  #     citizen_district_name
  #     ,total_female_population_Village_Type_Other
  #   ]
  # }

  measure: total_Transgender_population_Village_Type_Other {
    type: sum
    label: "Total Transgender Population : Village Type Other"
    filters: [citizen_village_type: "Other"]
    filters: [citizen_gender: "Transgender"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url:"/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_Transgender_population_Village_Type_Other*"
    # }
  }

  # set: DRILL_FIELD_Community_total_Transgender_population_Village_Type_Other{
  #   fields: [
  #     citizen_district_name
  #     ,total_Transgender_population_Village_Type_Other
  #   ]
  # }



    measure: UHID_Tagged {
      type: sum
      filters: [is_citizen_unique_health_id: "yes"]
      sql: ${TABLE}.population_count;;
      value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    }

  measure: Population_age_between_18_and_29 {
    type: sum
    filters: [citizen_age: ">=18 AND <=29"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Population_age_gt_30 {
    label: "Population>=30"
    type: sum
    filters: [citizen_age: ">=30"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Population_age_gt_18 {
    label: "Population>=18"
    type: sum
    filters: [citizen_age: ">=18"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Population_age_below_18 {
    label: "Population<18"
    type: sum
    filters: [citizen_age: "<18"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_Population_age_below_18*"
    # }
  }

  # set: DRILL_FIELD_Community_Population_age_below_18{
  #   fields: [
  #     citizen_district_name
  #     ,Population_age_below_18
  #   ]
  # }

  measure: Population_age_between_18_and_45 {
    type: sum
    filters: [citizen_age: ">=18 AND <=45"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_Population_age_between_18_and_45*"
    # }
  }

  # set: DRILL_FIELD_Community_Population_age_between_18_and_45{
  #   fields: [
  #     citizen_district_name
  #     ,Population_age_between_18_and_45
  #   ]
  # }

  measure: Population_age_gt_46 {
    label: "Population>=46"
    type: sum
    filters: [citizen_age: ">=46"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_Population_age_gt_46*"
    # }
  }

  # set: DRILL_FIELD_Community_Population_age_gt_46{
  #   fields: [
  #     citizen_district_name
  #     ,Population_age_gt_46
  #   ]
  # }

  measure: male_population {
    type: sum
    filters: [citizen_gender: "Male"]
    label: "Male Population"
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_male_population*"
    # }
  }

  # set: DRILL_FIELD_Community_male_population{
  #   fields: [
  #     citizen_district_name
  #     ,male_population
  #   ]
  # }

  measure: female_population {
    type: sum
    filters: [citizen_gender: "Female"]
    label: "Female Population"
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_female_population*"
    # }
  }

  # set: DRILL_FIELD_Community_female_population{
  #   fields: [
  #     citizen_district_name
  #     ,female_population
  #   ]
  # }

  measure: other_population {
    type: sum
    filters: [citizen_gender: "Transgender"]
    label: "Other Population"
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_other_population*"
    # }
  }

  # set: DRILL_FIELD_Community_other_population{
  #   fields: [
  #     citizen_district_name
  #     ,other_population
  #   ]
  # }

  measure: Aadhaar_linked_members {
    type: sum
    filters: [is_citizen_aadhaar_number: "yes"]
    sql: ${TABLE}.population_count;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_Aadhaar_linked_members*"
    # }
  }

  # set: DRILL_FIELD_Community_Aadhaar_linked_members{
  #   fields: [
  #     citizen_district_name
  #     ,Aadhaar_linked_members
  #   ]
  # }

  measure: total_congenital_anomaly {
    type: sum
    filters: [citizen_congenital_anomaly: "True,1"]
    sql: ${TABLE}.population_count;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  # link: {
  #   label: "Community"
  #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_total_congenital_anomaly*"
  # }
}

# set: DRILL_FIELD_Community_total_congenital_anomaly{
#   fields: [
#     citizen_district_name
#     ,total_congenital_anomaly
#   ]
# }

  measure: total_disability_beneficiary {
    type: sum
    filters: [citizen_disability: "Yes"]
    sql: ${TABLE}.population_count;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: citizen_with_udid {
    type: sum
    filters: [is_citizen_udid: "yes"]
    sql: ${TABLE}.population_count;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_citizen_with_udid*"
    # }
  }

  # set: DRILL_FIELD_Community_citizen_with_udid{
  #   fields: [
  #     citizen_district_name
  #     ,citizen_with_udid
  #   ]
  # }

  measure: verified_population{
    label: "Verified Population"
    type: sum
    filters: [citizen_resident_status: "-Null"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_verified_population*"
    # }
  }

  # set: DRILL_FIELD_Community_verified_population{
  #   fields: [
  #     citizen_district_name
  #     ,verified_population
  #   ]
  # }

  measure: non_verified_population{
    label: "Non Verified Population"
    type: sum
    filters: [citizen_resident_status: "Null"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_non_verified_population*"
    # }
  }

  # set: DRILL_FIELD_Community_non_verified_population{
  #   fields: [
  #     citizen_district_name
  #     ,non_verified_population
  #   ]
  # }

  measure: resident_status_Visitor{
    label: "Visitor Count"
    type: sum
    filters: [citizen_resident_status_concat: "Visitor"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <div style="color:black; background-color: #a1fcc9; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_resident_status_Visitor*"
    # }
  }

  # set: DRILL_FIELD_Community_resident_status_Visitor{
  #   fields: [
  #     citizen_district_name
  #     ,resident_status_Visitor
  #   ]
  # }


  measure: verified_population_in_past_4_weeks{
    type: sum
    label: "Population Verified in past 4 weeks"
    filters: [citizen_resident_status: "-Null"]
    filters: [citizen_created_date: "last 4 weeks"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: resident_status_resident {
    type: sum
    label: "Resident Count"
    filters: [citizen_resident_status_concat: "Resident"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <div style="color:black; background-color: #12B5CB; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_resident_status_resident*"
    # }
  }

  # set: DRILL_FIELD_Community_resident_status_resident{
  #   fields: [
  #     citizen_district_name
  #     ,resident_status_resident
  #   ]
  # }


  measure: resident_status_resident_no_html {
    type: sum
    label: "Resident Count no html"
    filters: [citizen_resident_status_concat: "Resident"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_resident_status_resident_no_html*"
    # }
  }

  # set: DRILL_FIELD_Community_resident_status_resident_no_html{
  #   fields: [
  #     citizen_district_name
  #     ,resident_status_resident_no_html
  #   ]
  # }

  measure: resident_status_migrated {
    type: sum
    label: "Migrated Count"
    filters: [citizen_resident_status_concat: "Migrated out"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <div style="color:black; background-color: #faba23; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_resident_status_migrated*"
    # }
  }

  # set: DRILL_FIELD_Community_resident_status_migrated{
  #   fields: [
  #     citizen_district_name
  #     ,resident_status_migrated
  #   ]
  # }

  measure: resident_status_death {
    type: sum
    label: "Death Count"
    filters: [citizen_resident_status_concat: "Death"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <div style="color:black;  background-color:#c3ccd1; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_resident_status_death*"
    # }
  }

  # set: DRILL_FIELD_Community_resident_status_death{
  #   fields: [
  #     citizen_district_name
  #     ,resident_status_death
  #   ]
  # }

 measure: resident_status_death_no_html{
    type: sum
    label: "Death Count no html"
    filters: [citizen_resident_status_concat: "Death"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: resident_status_duplicate {
    type: sum
    label: "Duplicate Count"
    filters: [citizen_resident_status_concat: "Duplicate"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <div style="color:black; background-color:#ff7c54; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_resident_status_duplicate*"
    # }
  }

  # set: DRILL_FIELD_Community_resident_status_duplicate{
  #   fields: [
  #     citizen_district_name
  #     ,resident_status_duplicate
  #   ]
  # }

  measure: resident_status_non_traceable {
    type: sum
    label: "Non-traceable Count"
    filters: [citizen_resident_status_concat: "Non-traceable"]
    sql: ${TABLE}.population_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <div style="color:black; background-color: #b06bf5; text-align:center; font-weight : bold">{{ rendered_value }}</div>
    {% endif %};;
    # link: {
    #   label: "Community"
    #   url: "/explore/tnphr_kpi/population?fields=population.DRILL_FIELD_Community_resident_status_non_traceable*"
    # }
  }

  # set: DRILL_FIELD_Community_resident_status_non_traceable{
  #   fields: [
  #     citizen_district_name
  #     ,resident_status_non_traceable
  #   ]
  # }

  measure: Population_Without_DOB{
    type: count
    filters: [is_citizen_birth_date: "no"]
    }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      citizen_state_name,
      citizen_block_name,
      citizen_hud_name,
      citizen_facility_name,
      user_facility_name,
      citizen_street_name,
      citizen_district_name,
      citizen_village_name,
      citizen_parent_facility_name
    ]
  }
}
