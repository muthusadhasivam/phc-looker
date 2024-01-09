# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: user_master_spanner_bq_vw {
#   hidden: yes

#   join: user_master_spanner_bq_vw__updated_register {
#     view_label: "User Master Vw: Updated Register"
#     sql: LEFT JOIN UNNEST(${user_master_spanner_bq_vw.updated_register}) as user_master_spanner_bq_vw__updated_register ;;
#     relationship: one_to_many
#   }

#   join: user_master_spanner_bq_vw__incharge_facility {
#     view_label: "User Master Vw: Incharge Facility"
#     sql: LEFT JOIN UNNEST(${user_master_spanner_bq_vw.incharge_facility}) as user_master_spanner_bq_vw__incharge_facility ;;
#     relationship: one_to_many
#   }
# }


view: user_master_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.user_master_spanner_bq_vw`
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

  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
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

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: has_displinary_action {
    type: yesno
    sql: ${TABLE}.has_displinary_action ;;
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

  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
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
    sql: ${TABLE}.sub_facility_details_department_name ;;
  }

  dimension: sub_facility_details_department_unit {
    type: string
    sql: ${TABLE}.sub_facility_details_department_unit ;;
  }

  dimension: sub_facility_id {
    type: string
    sql: ${TABLE}.sub_facility_id ;;
  }

  dimension: updated_register {
    hidden: yes
    sql: ${TABLE}.updated_register ;;
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
}

view: user_master_spanner_bq_vw__updated_register {
  dimension: user_master_spanner_bq_vw__updated_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(user_master_spanner_bq_vw__updated_register, "$.timestamp") ;;
  }
  dimension: user_master_spanner_bq_vw__updated_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(user_master_spanner_bq_vw__updated_register, "$.user_id") ;;
  }
}

view: user_master_spanner_bq_vw__incharge_facility {
  dimension: user_master_spanner_bq_vw__incharge_facility {
    type: string
    sql: user_master_spanner_bq_vw__incharge_facility ;;
  }
}
