view: user {
  sql_table_name: `staging-tnphr.KPI.user`
    ;;

  dimension: is_user_active {
    type: yesno
    sql: ${TABLE}.is_user_active ;;
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

  dimension: user_count {
    type: number
    sql: ${TABLE}.user_count ;;
  }

  dimension_group: user_created {
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
    sql: ${TABLE}.user_created_date ;;
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

  dimension: user_facility_name {
    type: string
    sql: ${TABLE}.user_facility_name ;;
  }

  dimension: user_facility_type_name {
    type: string
    sql: ${TABLE}.user_facility_type_name ;;
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

  dimension: user_role_name {
    type: string
    sql: ${TABLE}.user_role_name ;;
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

  dimension_group: user_last_sync {
    type: time
    timeframes: [
      raw,
      date,
      time,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.user_last_sync_date ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: synced_last_24_hours {
    type: sum
    filters: [user_last_sync_date: "last 24 hours"]
    sql: ${TABLE}.user_count ;;
  }

  measure: synced_in_less_than_48_hours{
    type: sum
    filters: [user_last_sync_date: "48 hours"]
    sql: ${TABLE}.user_count ;;
  }

  measure:synced_last_30_days{
    type: sum
    filters: [user_last_sync_date: "30 days"]
    sql: ${TABLE}.user_count ;;
  }

  measure: synced_last_more_than_48_hrs{
    type: sum
    filters: [user_last_sync_date: "before 2 days ago"]
    sql: ${TABLE}.user_count ;;
  }
  measure: facility_synced_in_last_24_hours{
    type: count_distinct
    filters:[user_last_sync_date: "1 days ago for 1 days",user_facility_name: "-NULL"]
    sql: ${TABLE}.user_facility_gid ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #a4bced; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: facility_synced_in_last_48_hours{
    type: count_distinct
    filters:[user_last_sync_date: "2 days ago for 2 days",user_facility_name: "-NULL"]
    sql: ${TABLE}.user_facility_gid ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #a4bced; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: facility_synced_in_last_30_days{
    type: count_distinct
    filters:[user_last_sync_date: "30 days ago for 30 days",user_facility_name: "-NULL"]
    sql: ${TABLE}.user_facility_gid ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #a4bced; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: facility_synced_in_last_60_days{
    type: count_distinct
    filters:[user_last_sync_date: "60 days ago for 60 days",user_facility_name: "-NULL"]
    sql: ${TABLE}.user_facility_gid ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #a4bced; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }

  measure: Average_facilities_synced{
    type: number
    sql: ${facility_synced_in_last_30_days}/30 ;;
    value_format: "0.0#"
    html:
              {% if value >= 0 %}
              <a href="#drillmenu"><div style="background-color: #a4bced; text-align:center">{{ rendered_value }}</div>
              {% endif %}
              </a>;;
  }

  measure: Average_facilities_synced_last_60_days{
    type: number
    sql: ${facility_synced_in_last_60_days}/60 ;;
    value_format: "0.0#"
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #a4bced; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
  }
  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      user_facility_name,
      user_facility_type_name,
      user_state_name,
      user_role_name,
      user_hud_name,
      user_department_name,
      user_block_name,
      user_parent_facility_name,
      user_district_name
    ]
  }
}
