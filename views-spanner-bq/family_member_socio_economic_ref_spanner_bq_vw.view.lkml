# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

#explore: family_member_socio_economic_ref_spanner_bq_vw {
# hidden: yes
#   join: family_member_socio_economic_ref__update_register_ {
#     view_label: "Family Member Socio Economic Ref Vw: Update Register "
#     sql: LEFT JOIN UNNEST(${family_member_socio_economic_ref.update_register}) as family_member_socio_economic_ref__update_register_timestamp ;;
#     relationship: one_to_many
#   }
# }

view: family_member_socio_economic_ref_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.family_member_socio_economic_ref_spanner_bq_vw`
    ;;

  dimension: bank_details {
    type: string
    sql: ${TABLE}.bank_details ;;
  }

  dimension: economic_details {
    type: string
    hidden: yes
    sql: ${TABLE}.economic_details ;;
  }

  dimension: family_id {
    type: string
    hidden: yes
    sql: ${TABLE}.family_id ;;
  }

  dimension: family_socio_economic_id {
    type: string
    sql: ${TABLE}.family_socio_economic_id ;;
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

  dimension: member_id {
    type: string
    hidden: yes
    sql: ${TABLE}.member_id ;;
  }

  dimension: social_details {
    type: string
    hidden: yes
    sql: ${TABLE}.social_details ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${member_id},${family_id},${family_socio_economic_id}) ;;
  }

  dimension: economic_details_anual_income {
    type: string
    sql: JSON_QUERY(economic_details, "$.annual_income") ;;
  }

  dimension: social_details_community {
    type: string
    sql: JSON_QUERY(social_details, "$.community") ;;
  }

  dimension: social_details_educational_qualification {
    type: string
    sql: JSON_QUERY(social_details, "$.educational_qualification") ;;
  }

  dimension: social_details_marital_status {
    type: string
    sql: JSON_QUERY(social_details, "$.marital_status") ;;
  }

  dimension: social_details_occupation {
    type: string
    sql: JSON_QUERY(social_details, "$.occupation") ;;
  }

  dimension: social_details_religion {
    type: string
    sql: JSON_QUERY(social_details, "$.religion") ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}


view: family_member_socio_economic_ref_spanner_bq_vw__update_register {
  dimension: family_member_socio_economic_ref_spanner_bq_vw__update_register_timestamp {
    type: string
    label: "Updated Timestamp"
    sql: JSON_VALUE(family_member_socio_economic_ref_spanner_bq_vw__update_register, "$.timestamp") ;;
  }
  dimension: family_socio_economic_ref_spanner_bq_vw__update_register_user_id {
    type: string
    label: "Updated By User Id"
    sql: JSON_VALUE(family_member_socio_economic_ref_spanner_bq_vw__update_register, "$.user_id") ;;
  }
}
