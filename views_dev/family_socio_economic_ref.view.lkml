# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

# explore: family_socio_economic_ref {
#   hidden: yes

#   join: family_socio_economic_ref__update_register {
#     view_label: "Family Socio Economic Ref Vw: Update Register"
#     sql: LEFT JOIN UNNEST(${family_socio_economic_ref.update_register}) as family_socio_economic_ref__update_register_timestamp ;;
#     relationship: one_to_many
#   }
# }

view: family_socio_economic_ref {
  sql_table_name: `cobalt-catalyst-318208.TNPHR.family_socio_economic_ref`
    ;;

  dimension: bank_details {
    type: string
    sql: ${TABLE}.bank_details ;;
  }

  dimension: economic_details {
    type: string
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

  dimension: social_details {
    type: string
    hidden: yes
    sql: ${TABLE}.social_details ;;
  }

  dimension: social_details_cooking_fuel {
    type: string
    sql: JSON_QUERY(social_details, "$.cooking_fuel") ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${family_id},${family_socio_economic_id}) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  dimension: social_details_drink_water_source {
    type: string
    sql: JSON_QUERY(social_details, "$.drink_water_source") ;;
  }

  dimension: social_details_electricity_connection {
    type: string
    sql: JSON_QUERY(social_details, "$.electricity_connection") ;;
  }

  dimension: social_details_house_type {
    type: string
    sql: JSON_QUERY(social_details, "$.house_type") ;;
  }

  dimension: social_details_toilet_facility {
    type: string
    sql: JSON_QUERY(social_details, "$.toilet_facility") ;;
  }
}


view: family_socio_economic_ref__update_register {
  dimension: family_socio_economic_ref__update_register_timestamp {
    type: string
    label: "Updated Timestamp"
    sql: JSON_VALUE(family_socio_economic_ref__update_register, "$.timestamp") ;;
  }
  dimension: family_socio_economic_ref__update_register_user_id {
    type: string
    label: "Updated By User Id"
    sql: JSON_VALUE(family_socio_economic_ref__update_register, "$.user_id") ;;
  }
}
