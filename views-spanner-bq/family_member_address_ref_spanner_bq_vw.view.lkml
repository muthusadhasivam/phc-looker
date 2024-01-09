# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: family_member_address_ref_spanner_bq_vw {
  hidden: yes

  join: family_member_address_ref_spanner_bq_vw__update_register {
    view_label: "Family Member Address Ref Spanner Bq Vw: Update Register"
    sql: LEFT JOIN UNNEST(${family_member_address_ref_spanner_bq_vw.update_register}) as family_member_address_ref_spanner_bq_vw__update_register ;;
    relationship: one_to_many
  }
}

view: family_member_address_ref_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.family_member_address_ref_spanner_bq_vw`
    ;;

  dimension: address_id {
    type: string
    sql: ${TABLE}.address_id ;;
  }

  dimension: address_type {
    type: string
    sql: ${TABLE}.address_type ;;
  }

  dimension: apartment_name {
    type: string
    sql: ${TABLE}.apartment_name ;;
  }

  dimension: area_id {
    type: string
    sql: ${TABLE}.area_id ;;
  }

  dimension: block_id {
    type: string
    sql: ${TABLE}.block_id ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: district_id {
    type: string
    sql: ${TABLE}.district_id ;;
  }

  dimension: door_no {
    type: string
    sql: ${TABLE}.door_no ;;
  }

  dimension: family_id {
    type: string
    sql: ${TABLE}.family_id ;;
  }

  dimension: family_socio_economic_id {
    type: string
    sql: ${TABLE}.family_socio_economic_id ;;
  }

  dimension: habitation_id {
    type: string
    sql: ${TABLE}.habitation_id ;;
  }

  dimension: hud_id {
    type: string
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

  dimension: member_id {
    type: string
    sql: ${TABLE}.member_id ;;
  }

  dimension: pincode {
    type: number
    sql: ${TABLE}.pincode ;;
  }

  dimension: postal_address {
    type: string
    sql: ${TABLE}.postal_address ;;
  }

  dimension: rev_village_id {
    type: string
    sql: ${TABLE}.rev_village_id ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.state_id ;;
  }

  dimension: street_id {
    type: string
    sql: ${TABLE}.street_id ;;
  }

  dimension: taluk_id {
    type: string
    sql: ${TABLE}.taluk_id ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  dimension: village_id {
    type: string
    sql: ${TABLE}.village_id ;;
  }

  dimension: ward_id {
    type: string
    sql: ${TABLE}.ward_id ;;
  }

  measure: count {
    type: count
    drill_fields: [apartment_name]
  }
}

view: family_member_address_ref_spanner_bq_vw__update_register {
  dimension: family_member_address_ref_spanner_bq_vw__update_register {
    type: string
    sql: family_member_address_ref_spanner_bq_vw__update_register ;;
  }
}
