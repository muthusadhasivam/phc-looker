# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: family_master {
#   hidden: yes

#   join: family_master__update_register {
#     view_label: "Family Master: Update Register"
#     sql: LEFT JOIN UNNEST(${family_master.update_register}) as family_master__update_register ;;
#     relationship: one_to_many
#   }

#   join: family_master__family_insurances_insurance {
#     view_label: "Family Master: Family Insurances Insurance"
#     sql: LEFT JOIN UNNEST(${family_master.family_insurances_insurance}) as family_master__family_insurances_insurance ;;
#     relationship: one_to_many
#   }

#   join: family_master__family_insurances_insurance_private {
#     view_label: "Family Master: Family Insurances Insurance Private"
#     sql: LEFT JOIN UNNEST(${family_master.family_insurances_insurance_private}) as family_master__family_insurances_insurance_private ;;
#     relationship: one_to_many
#   }
# }

view: family_master {
  sql_table_name: `cobalt-catalyst-318208.TNPHR.family_master`
    ;;

  dimension: apartment_name {
    type: string
    sql: ${TABLE}.apartment_name ;;
  }

  dimension: area_id {
    type: string
    sql: ${TABLE}.area_id ;;
  }

  dimension: area_name {
    type: string
    sql: ${TABLE}.area_name ;;
  }

  dimension: block_id {
    type: string
    sql: ${TABLE}.block_id ;;
  }

  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
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

  dimension: door_no {
    type: string
    sql: ${TABLE}.door_no ;;
  }

  dimension: facility_id {
    type: string
    sql: ${TABLE}.facility_id ;;
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}.facility_name ;;
  }

  dimension: family_head {
    type: string
    sql: ${TABLE}.family_head ;;
  }

  dimension: family_id {
    type: string
    sql: ${TABLE}.family_id ;;
  }

  dimension: family_insurances_insurance {
    hidden: yes
    sql: ${TABLE}.family_insurances_insurance ;;
  }

  dimension: family_insurances_insurance_private {
    hidden: yes
    sql: ${TABLE}.family_insurances_insurance_private ;;
  }

  dimension: family_members_count {
    type: number
    sql: ${TABLE}.family_members_count ;;
  }

  dimension: habitation_id {
    type: string
    sql: ${TABLE}.habitation_id ;;
  }

  dimension: habitation_name {
    type: string
    sql: ${TABLE}.habitation_name ;;
  }

  dimension: hhg_id {
    type: string
    sql: ${TABLE}.hhg_id ;;
  }

  dimension: hhg_name {
    type: string
    sql: ${TABLE}.hhg_name ;;
  }

  dimension: hsc_unit_id {
    type: string
    sql: ${TABLE}.hsc_unit_id ;;
  }

  dimension: hsc_unit_name {
    type: string
    sql: ${TABLE}.hsc_unit_name ;;
  }

  dimension: hud_id {
    type: string
    sql: ${TABLE}.hud_id ;;
  }

  dimension: hud_name {
    type: string
    sql: ${TABLE}.hud_name ;;
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

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: pds_old_card_id {
    type: string
    sql: ${TABLE}.pds_old_card_id ;;
  }

  dimension: pds_smart_card_id {
    type: number
    sql: ${TABLE}.pds_smart_card_id ;;
  }

  dimension: phr_family_id {
    type: number
    sql: ${TABLE}.phr_family_id ;;
  }

  dimension: pincode {
    type: number
    sql: ${TABLE}.pincode ;;
  }

  dimension: postal_address {
    type: string
    sql: ${TABLE}.postal_address ;;
  }

  dimension: reside_status {
    type: string
    sql: ${TABLE}.reside_status ;;
  }

  dimension: rev_village_id {
    type: string
    sql: ${TABLE}.rev_village_id ;;
  }

  dimension: rev_village_name {
    type: string
    sql: ${TABLE}.rev_village_name ;;
  }

  dimension: shop_id {
    type: string
    sql: ${TABLE}.shop_id ;;
  }

  dimension: shop_name {
    type: string
    sql: ${TABLE}.shop_name ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      area_name,
      hsc_unit_name,
      state_name,
      hud_name,
      shop_name,
      facility_name,
      street_name,
      hhg_name,
      district_name,
      block_name,
      ward_name,
      country_name,
      taluk_name,
      apartment_name,
      habitation_name,
      village_name,
      rev_village_name
    ]
  }
}

view: family_master__update_register {
  dimension: family_master__update_register_timestamp {
    type: string
    label: "Updated Timestamp"
    sql: JSON_VALUE(family_master__update_register, "$.timestamp") ;;
  }
  dimension: family_master__update_register_user_id {
    type: string
    label: "Updated By User Id"
    sql: JSON_VALUE(family_master__update_register, "$.user_id") ;;
  }
}

view: family_master__family_insurances_insurance {
  dimension: family_master__family_insurances_insurance_id {
    type: string
    label: "Insurance ID"
    sql: JSON_VALUE(family_master__family_insurances_insurance, "$.id") ;;
  }
  dimension: family_master__family_insurances_insurance_type {
    type: string
    label: "Insurance Type"
    sql: JSON_VALUE(family_master__family_insurances_insurance, "$.type") ;;
  }
}

view: family_master__family_insurances_insurance_private {
  dimension: family_master__family_insurances_insurance_private_id {
    type: string
    label: "Insurance Private ID"
    sql: JSON_VALUE(family_master__family_insurances_insurance_private, "$.id") ;;
  }
  dimension: family_master__family_insurances_insurance_private_provider {
    type: string
    label: "Insurance Private Provider"
    sql: JSON_VALUE(family_master__family_insurances_insurance_private, "$.provider") ;;
  }
}
