view: family {
  sql_table_name: `milky-way-galaxy-2707.KPI.family`
    ;;

  dimension: avg_family_size {
    type: number
    sql: ${TABLE}.avg_family_size ;;
  }

  dimension: families_count {
    type: number
    sql: ${TABLE}.families_count ;;
  }

  dimension: family_block_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.family_block_gid ;;
  }

  dimension: family_block_name {
    type: string
    sql: ${TABLE}.family_block_name ;;
  }

  dimension: family_block_type {
    type: string
    sql: ${TABLE}.family_block_type ;;
  }

  dimension_group: family_created {
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
    convert_tz: no
    datatype: date
    sql: ${TABLE}.family_created_date ;;
  }

  dimension: family_district_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.family_district_gid ;;
  }

  dimension: family_district_name {
    type: string
    sql: ${TABLE}.family_district_name ;;
  }

  dimension: family_facility_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.family_facility_gid ;;
  }

  dimension: family_facility_name {
    type: string
    sql: ${TABLE}.family_facility_name ;;
  }

  dimension: family_hud_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.family_hud_gid ;;
  }

  dimension: family_hud_name {
    type: string
    sql: ${TABLE}.family_hud_name ;;
  }

  dimension: family_parent_facility_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.family_parent_facility_gid ;;
  }

  dimension: family_parent_facility_name {
    type: string
    sql: ${TABLE}.family_parent_facility_name ;;
  }

  dimension: family_pds_smart_card_id {
    type: number
    sql: ${TABLE}.family_pds_smart_card_id ;;
  }

  dimension: family_reside_status {
    type: string
    sql: ${TABLE}.family_reside_status ;;
  }

  dimension: family_state_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.family_state_gid ;;
  }

  dimension: family_state_name {
    type: string
    sql: ${TABLE}.family_state_name ;;
  }

  dimension: family_street_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.family_street_gid ;;
  }

  dimension: family_street_name {
    type: string
    sql: ${TABLE}.family_street_name ;;
  }

  dimension: family_village_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.family_village_gid ;;
  }

  dimension: family_village_name {
    type: string
    sql: ${TABLE}.family_village_name ;;
  }

  dimension: is_citizen_govt_insurance {
    type: string
    sql: ${TABLE}.is_citizen_govt_insurance ;;
  }

  dimension: is_family_updated {
    type: string
    sql: ${TABLE}.is_family_updated ;;
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

  dimension: is_family_screened {
    type: string
    sql: ${TABLE}.is_family_screened ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_families {
    label: "Total Families"
    type: sum
    sql: ${TABLE}.families_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: facility_family_last_24_hours{
    type: count_distinct
    filters: [family_created_date: "1 days ago for 1 days",family_facility_gid: "NOT NULL"]
    sql: ${TABLE}.families_count ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #e6c5e1; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [facility_family_last_24_hours,family_district_name]
  }


  measure: facility_family_last_48_hours{
    type: count_distinct
    filters: [family_created_date: "48 hours ago for 24 hours",family_facility_gid: "NOT NULL"]
    sql: ${families_count} ;;
  }

  measure: facility_family_last_30_days{
    type: count_distinct
    filters: [family_created_date: "30 days",family_facility_gid: "NOT NULL"]
    sql: ${families_count} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #e6c5e1; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields: [facility_family_last_30_days,family_district_name]
  }
  measure: change_facility_family_last_60_days{
    type: count_distinct
    filters: [family_created_date: "60 days",family_facility_gid: "NOT NULL"]
    sql: ${families_count} ;;
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
    drill_fields: [Facility_avg_family_screening,family_district_name]
  }

  measure: change_Facility_avg_family_screening {
    type: number
    label: " Change Facility Average Family Screening"
    sql: ${change_facility_family_last_60_days}/30;;
    value_format: "0.0#"
  }

  measure: family_size {
    type: average
    sql: ${TABLE}.avg_family_size ;;
    value_format: "0.0"
  }

  measure: total_families_24_hrs {
    type: sum
    filters: [family_created_date: "24 hours"]
    sql: ${TABLE}.families_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_families_30_days{
    type: sum
    filters: [family_created_date: "30 days"]
    sql: ${TABLE}.families_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Average_total_families_30_days{
    type: number
    sql: ${total_families_30_days}/30 ;;
    value_format: "0.0#"
  }

  measure: CMCHIS_Beneficiaries {
    type: sum
    filters: [is_citizen_govt_insurance: "yes"]
    sql: ${TABLE}.families_count;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      family_parent_facility_name,
      family_state_name,
      family_street_name,
      family_village_name,
      family_facility_name,
      user_facility_name,
      family_block_name,
      family_district_name,
      family_hud_name
    ]
  }
}
