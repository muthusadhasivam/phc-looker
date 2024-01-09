# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: user_master {
#   hidden: yes

#   join: user_master__update_register {
#     view_label: "User Master: Update Register"
#     sql: LEFT JOIN UNNEST(${user_master.update_register}) as user_master__update_register ;;
#     relationship: one_to_many
#   }

#   join: user_master__incharge_facility {
#     view_label: "User Master: Incharge Facility"
#     sql: LEFT JOIN UNNEST(${user_master.incharge_facility}) as user_master__incharge_facility ;;
#     relationship: one_to_many
#   }
# }

view: user_master {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.user_master`
    ;;

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: alt_email {
    type: string
    sql: ${TABLE}.alt_email ;;
  }

  dimension: alt_mobile_number {
    type: number
    sql: ${TABLE}.alt_mobile_number ;;
  }

  dimension: assigned_jurisdiction_primary_block {
    type: string
    sql: REPLACE(${TABLE}.assigned_jurisdiction_primary_block,'"' ,'') ;;
  }

  dimension: auth_token_otp_key {
    type: string
    label: "OTP_KEY"
    sql: JSON_VALUE(${TABLE}.auth_token, "$.otp_key") ;;
  }

  dimension: auth_token_otp_ts {
    type: string
    label: "OTP_TS"
    sql: JSON_VALUE(${TABLE}.auth_token, "$.otp_ts") ;;
  }

  dimension: auth_token_key {
    type: string
    label: "TOKEN_KEY"
    sql: JSON_VALUE(${TABLE}.auth_token, "$.token_key") ;;
  }

  dimension: auth_token_ts {
    type: string
    label: "TOKEN_TS"
    sql: JSON_VALUE(${TABLE}.auth_token, "$.token_ts") ;;
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
  dimension_group: date_of_joining {
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
    sql: ${TABLE}.date_of_joining ;;
  }

  dimension: block_id {
    type: string
    sql: ${TABLE}.block_id ;;
  }

  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: user_facility_block_type {
    label: "User block type"
    type: string
    sql: ${TABLE}.user_facility_block_type ;;
  }

  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
  }

  dimension: directorate_id {
    type: string
    sql: ${TABLE}.directorate_id ;;
  }

  dimension: directorate_name {
    type: string
    sql: ${TABLE}.directorate_name ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: employee_id_type {
    type: string
    sql: ${TABLE}.employee_id_type ;;
  }

  dimension: employee_type {
    type: string
    sql: ${TABLE}.employee_type ;;
  }

  dimension: esign_required {
    type: yesno
    sql: ${TABLE}.esign_required ;;
  }

  dimension: facility_id {
    type: string
    sql: ${TABLE}.facility_id ;;
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}.facility_name ;;
  }

  dimension: facility_type_id {
    type: string
    sql: ${TABLE}.facility_type_id ;;
  }

  dimension: facility_type_name {
    type: string
    sql: ${TABLE}.facility_type_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: has_displinary_action {
    type: yesno
    sql: ${TABLE}.has_displinary_action ;;
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

  dimension: incharge_facility {
    hidden: yes
    sql: ${TABLE}.incharge_facility ;;
  }

  dimension_group: last_login {
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
    sql: ${TABLE}.last_login_time ;;
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

  dimension: mobile_number {
    type: number
    sql: ${TABLE}.mobile_number ;;
  }

  dimension: nature_of_work {
    type: string
    sql: ${TABLE}.nature_of_work ;;
  }

  dimension: pay_matrix_number {
    type: string
    sql: ${TABLE}.pay_matrix_number ;;
  }

  dimension: phr_access_list {
    type: string
    sql: ${TABLE}.phr_access_list ;;
  }

  dimension: phr_role {
    type: string
    sql: ${TABLE}.phr_role ;;
  }

  dimension: postal_address {
    type: string
    sql: ${TABLE}.postal_address ;;
  }

  dimension: promotion_hierarchy {
    type: string
    sql: ${TABLE}.promotion_hierarchy ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: role_id {
    type: string
    sql: ${TABLE}.role_id ;;
  }

  dimension: role_in_facility {
    type: string
    sql: ${TABLE}.role_in_facility ;;
  }

  dimension: seniority_id {
    type: string
    sql: ${TABLE}.seniority_id ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.state_id ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: sub_facility_details_clinic_id {
    type: string
    sql: ${TABLE}.sub_facility_details_clinic_id ;;
  }

  dimension: sub_facility_details_clinic_name {
    type: string
    sql: ${TABLE}.sub_facility_details_clinic_name ;;
  }

  dimension: sub_facility_details_clinic_type_id {
    type: string
    sql: ${TABLE}.sub_facility_details_clinic_type_id ;;
  }

  dimension: sub_facility_details_clinic_type_name {
    type: string
    sql: ${TABLE}.sub_facility_details_clinic_type_name ;;
  }

  dimension: sub_facility_details_department_code {
    type: string
    sql: ${TABLE}.sub_facility_details_department_code ;;
  }

  dimension: sub_facility_details_department_id {
    type: string
    sql: ${TABLE}.sub_facility_details_department_id ;;
  }

  dimension: sub_facility_details_department_name {
    type: string
    sql: REPLACE(${TABLE}.sub_facility_details_department_name,'"','') ;;
  }

  dimension: sub_facility_details_department_unit {
    type: string
    sql: ${TABLE}.sub_facility_details_department_unit ;;
  }

  dimension: sub_facility_id {
    type: string
    sql: ${TABLE}.sub_facility_id ;;
  }

  dimension: sub_facility_name {
    type: string
    sql: ${TABLE}.sub_facility_name ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  dimension: user_first_name {
    type: string
    sql: ${TABLE}.user_first_name ;;
  }

  dimension: user_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_last_name {
    type: string
    sql: ${TABLE}.user_last_name ;;
  }

  dimension: user_title {
    type: string
    sql: ${TABLE}.user_title ;;
  }

  measure: count {
    type: count
    drill_fields: [user_last_name, sub_facility_details_department_name, user_first_name, sub_facility_details_clinic_name, sub_facility_details_clinic_type_name]
  }

  measure: facility_id_count{
    type: count_distinct
    sql: ${facility_id};;
  }

  measure: synced_in_last_24_hours{
    type: count_distinct
    #filters: {
    #field: last_login_date
    #value: "24 hours"
    #}
    #sql: ${TABLE}.user_id ;;
    sql: CASE
    WHEN DATE(user_master.last_login_time) = DATE(TIMESTAMP_SUB(CURRENT_TIMESTAMP(),INTERVAL 1 DAY))
    THEN user_master.user_id
    ELSE NULL
    END ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #a4bced; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields:[user_count,district_name]
  }

  measure: synced_in_last_30_days{
    type: count_distinct
    filters: {
      field: last_login_date
      value: "30 Days"
    }
    sql:${TABLE}.user_id  ;;
    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #a4bced; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;
    drill_fields:[user_count,district_name]
   }

  measure: synced_in_more_than_48_hours{
    type: count_distinct
    filters: {
      field: last_login_date
      #value: " 2 days ago  "
      value: "before 2 days ago"
    }
    sql:${TABLE}.user_id  ;;
    drill_fields: [user_count,district_name]
    html:
    {% if value >= 0 %}
    <div style="background-color: #a4bced; text-align:center">{{ rendered_value }}</div>
    {% endif %};;

  }

  measure: synced_in_less_than_48_hours{
    type: count_distinct
    filters: {
      field: last_login_date
      value: "48 hours"
    }
    sql:${TABLE}.user_id  ;;
    drill_fields: [user_count,district_name]
    html:
    {% if value >= 0 %}
    <div style="background-color: #a4bced; text-align:center">{{ rendered_value }}</div>
    {% endif %};;
    }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      category_name,
      sub_facility_details_department_name,
      state_name,
      hud_name,
      directorate_name,
      facility_type_name,
      sub_facility_details_clinic_type_name,
      facility_name,
      sub_facility_name,
      user_last_name,
      district_name,
      block_name,
      user_first_name,
      sub_facility_details_clinic_name,
      country_name
    ]
  }

  measure: user_count {
    type: count_distinct
    sql: ${user_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

}

view: user_master__updated_register {
  dimension: user_master__updated_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(user_master__updated_register, "$.timestamp") ;;
  }
  dimension: user_master__updated_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(user_master__updated_register, "$.user_id") ;;
  }
}

view: user_master__incharge_facility {
  dimension: user_master__incharge_facility {
    type: string
    sql: user_master__incharge_facility ;;
  }
}
