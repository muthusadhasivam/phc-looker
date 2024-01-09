view: drugs {
  sql_table_name: `milky-way-galaxy-2707.KPI.drugs`
    ;;

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

  dimension: citizen_district_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_district_gid ;;
  }

  dimension: citizen_district_name {
    type: string
    sql: ${TABLE}.citizen_district_name ;;
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

  dimension: citizen_hud_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.citizen_hud_gid ;;
  }

  dimension: citizen_hud_name {
    type: string
    sql: ${TABLE}.citizen_hud_name ;;
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

  dimension_group: citizen_screened {
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
    sql: ${TABLE}.citizen_screened_date ;;
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

  dimension: citizen_village_type {
    type: string
    sql: if (${TABLE}.citizen_village_type is null, "Other", ${TABLE}.citizen_village_type);;
  }

  dimension: drug_name {
    type: string
    sql: ${TABLE}.drug_name ;;
  }

  dimension: drug_type {
    type: string
    sql: ${TABLE}.drug_type ;;
  }

  dimension: is_user_facility_hwc {
    type: string
    sql: ${TABLE}.is_user_facility_hwc ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: total_drugs_count {
    type: number
    sql: ${TABLE}.total_drugs_count ;;
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

  dimension: user_state_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.user_state_gid ;;
  }

  dimension: user_state_name {
    type: string
    sql: ${TABLE}.user_state_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: Date_count {
    type: count_distinct
    sql: ${TABLE}.citizen_screened_date ;;

  }
  measure: facility_count {
    type: count_distinct
    sql: ${user_facility_name} ;;
  }

  measure: total_drugs_issued {
    label: "Total drugs issued"
    type: sum
    sql: ${TABLE}.total_drugs_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_drugs_issued_24_hours {
    label: "Total drugs issued 24 hours"
    filters: [citizen_screened_date: "1 days ago for 1 days"]
    type: sum
    sql: ${TABLE}.total_drugs_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: total_drugs_issued_30_days {
    label: "Total drugs issued 30 days"
    filters: [citizen_screened_date: "30 days ago for 30 days"]
    type: sum
    sql: ${TABLE}.total_drugs_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Average_Drugs_delivered_last_30_days{
    label: "Average drugs delieverd 30 days"
    type: number
    sql: (${total_drugs_issued_30_days}/30) ;;
    value_format: "0.0#"
    drill_fields:[citizen_district_name]
  }


  measure: mtm_beneficiaries_received_drugs{
    label: "MTM Beneficiaries received drugs"
    type: sum
    sql: ${TABLE}.citizen_mtm_total_count ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  measure: Facility_Drugs_delivered_last_24_hours{
    type: count_distinct
    filters: [citizen_screened_date: "1 days ago for 1 days",user_facility_name: "-NULL"]
    sql: ${TABLE}.total_drugs_count ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #bce8e0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: Facility_Drugs_delivered_last_48_hours{
    type: count_distinct
    filters: [citizen_screened_date: "2 days ago for 2 days",user_facility_name: "-NULL"]
    sql: ${TABLE}.total_drugs_count ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #bce8e0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: Facility_Drugs_delivered_last_30_days{
    type: count_distinct
    filters: [citizen_screened_date: "30 days ago for 30 days",user_facility_name: "-NULL"]
    sql: ${TABLE}.total_drugs_count ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #bce8e0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: Facility_Drugs_delivered_last_60_days{
    type: count_distinct
    filters: [citizen_screened_date: "60 days ago for 60 days",user_facility_name: "-NULL"]
    sql: ${TABLE}.total_drugs_count ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #bce8e0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
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
  }

  measure: Average_Facility_Drugs_60_days {
    type: number
    sql: ${Facility_Drugs_delivered_last_60_days}/60 ;;
    value_format: "0.0#"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #bce8e0; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      citizen_state_name,
      user_category_name,
      user_owner_name,
      citizen_block_name,
      citizen_hud_name,
      user_hud_name,
      drug_name,
      citizen_facility_name,
      user_facility_name,
      citizen_street_name,
      user_state_name,
      role_name,
      citizen_district_name,
      citizen_village_name,
      user_block_name,
      user_parent_facility_name,
      citizen_parent_facility_name,
      user_district_name
    ]
  }
}
