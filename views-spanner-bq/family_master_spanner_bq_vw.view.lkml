# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

# explore: family_master_spanner_bq_vw {
#   hidden: yes

#   join: family_master_spanner_bq_vw__update_register_timestamp {
#     view_label: "Family Master Vw: Update Register Timestamp"
#     sql: LEFT JOIN UNNEST(${family_master_spanner_bq_vw.update_register_timestamp}) as family_master_spanner_bq_vw__update_register_timestamp ;;
#     relationship: one_to_many
#   }

#   join: family_master_spanner_bq_vw__family_insurances_insurance {
#     view_label: "Family Master Vw: Family Insurances Insurance"
#     sql: LEFT JOIN UNNEST(${family_master_spanner_bq_vw.family_insurances_insurance}) as family_master_spanner_bq_vw__family_insurances_insurance ;;
#     relationship: one_to_many
#   }

#   join: family_master_spanner_bq_vw__family_insurances_insurance_private {
#     view_label: "Family Master Vw: Family Insurances Insurance Private"
#     sql: LEFT JOIN UNNEST(${family_master_spanner_bq_vw.family_insurances_insurance_private}) as family_master_spanner_bq_vw__family_insurances_insurance_private ;;
#     relationship: one_to_many
#   }
# }

view: family_master_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.family_master_spanner_bq_vw`
    ;;

  dimension: apartment_name {
    type: string
    sql: ${TABLE}.apartment_name ;;
  }

  dimension: area_id {
    type: string
    hidden: yes
    sql: ${TABLE}.area_id ;;
  }

  dimension: block_id {
    type: string
    hidden: yes
    sql: ${TABLE}.block_id ;;
  }

  dimension: country_id {
    type: string
    hidden: yes
    sql: ${TABLE}.country_id ;;
  }

  dimension: district_id {
    type: string
    hidden: yes
    sql: ${TABLE}.district_id ;;
  }

  dimension: door_no {
    type: string
    sql: ${TABLE}.door_no ;;
  }

  dimension: facility_id {
    type: string
    hidden: yes
    sql: ${TABLE}.facility_id ;;
  }

  dimension: family_head {
    type: string
    sql: ${TABLE}.family_head ;;
  }

  dimension: family_id {
    type: string
    primary_key: yes
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
    hidden: yes
    sql: ${TABLE}.habitation_id ;;
  }

  dimension: hhg_id {
    type: string
    hidden: yes
    sql: ${TABLE}.hhg_id ;;
  }

  dimension: hsc_unit_id {
    type: string
    hidden: yes
    sql: ${TABLE}.hsc_unit_id ;;
  }

  dimension: hud_id {
    type: string
    hidden: yes
    sql: ${TABLE}.hud_id ;;
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
    hidden: yes
    sql: ${TABLE}.rev_village_id ;;
  }

  dimension: shop_id {
    type: string
    hidden: yes
    sql: ${TABLE}.shop_id ;;
  }

  dimension: state_id {
    type: string
    hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  dimension: street_id {
    type: string
    hidden: yes
    sql: ${TABLE}.street_id ;;
  }

  dimension: taluk_id {
    type: string
    hidden: yes
    sql: ${TABLE}.taluk_id ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  dimension: village_id {
    type: string
    hidden: yes
    sql: ${TABLE}.village_id ;;
  }

  dimension: ward_id {
    type: string
    hidden: yes
    sql: ${TABLE}.ward_id ;;
  }

  measure: count {
    type: count
    drill_fields: [apartment_name]
  }
}

view: family_master_spanner_bq_vw__update_register {
  dimension: family_master_spanner_bq_vw__update_register_timestamp {
    type: string
    label: "Updated Timestamp"
    sql: JSON_VALUE(family_master_spanner_bq_vw__update_register, "$.timestamp") ;;
  }
  dimension: family_master_spanner_bq_vw__update_register_user_id {
    type: string
    label: "Updated By User Id"
    sql: JSON_VALUE(family_master_spanner_bq_vw__update_register, "$.user_id") ;;
  }
}

view: family_master_spanner_bq_vw__family_insurances_insurance {
  dimension: family_master_spanner_bq_vw__family_insurances_insurance_id {
    type: string
    label: "Insurance ID"
    sql: JSON_VALUE(family_master_spanner_bq_vw__family_insurances_insurance, "$.id") ;;
  }
  dimension: family_master_spanner_bq_vw__family_insurances_insurance_type {
    type: string
    label: "Insurance Type"
    sql: JSON_VALUE(family_master_spanner_bq_vw__family_insurances_insurance, "$.type") ;;
  }
}

view: family_master_spanner_bq_vw__family_insurances_insurance_private {
  dimension: family_master_spanner_bq_vw__family_insurances_insurance_private_id {
    type: string
    label: "Insurance Private ID"
    sql: JSON_VALUE(family_master_spanner_bq_vw__family_insurances_insurance_private, "$.id") ;;
  }
  dimension: family_master_spanner_bq_vw__family_insurances_insurance_private_provider {
    type: string
    label: "Insurance Private Provider"
    sql: JSON_VALUE(family_master_spanner_bq_vw__family_insurances_insurance_private, "$.provider") ;;
  }
}
