# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: address_street_master_spanner_bq_vw {
#   hidden: yes

#   join: address_street_master_spanner_bq_vw__update_register {
#     view_label: "Address Street Master Vw: Update Register"
#     sql: LEFT JOIN UNNEST(${address_street_master_spanner_bq_vw.update_register}) as address_street_master_spanner_bq_vw__update_register ;;
#     relationship: one_to_many
#   }
# }

view: address_street_master_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.address_street_master_spanner_bq_vw`
    ;;

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: area_id {
    type: string
    hidden: yes
    sql: ${TABLE}.area_id ;;
  }

  dimension: assembly_constituency_id {
    type: string
    sql: ${TABLE}.assembly_constituency_id ;;
  }

  dimension: assembly_constituency_local_name {
    type: string
    sql: ${TABLE}.assembly_constituency_local_name ;;
  }

  dimension: assembly_constituency_name {
    type: string
    sql: ${TABLE}.assembly_constituency_name ;;
  }

  dimension: block_id {
    type: string
    hidden: yes
    sql: ${TABLE}.block_id ;;
  }

  dimension: census_village_code {
    type: number
    sql: ${TABLE}.census_village_code ;;
  }

  dimension: coastal_area {
    type: yesno
    sql: ${TABLE}.coastal_area ;;
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

  dimension: facility_id {
    type: string
    hidden: yes
    sql: ${TABLE}.facility_id ;;
  }

  dimension: forest_area {
    type: yesno
    sql: ${TABLE}.forest_area ;;
  }

  dimension: habitation_id {
    type: string
    hidden: yes
    sql: ${TABLE}.habitation_id ;;
  }

  dimension: hilly_area {
    type: yesno
    sql: ${TABLE}.hilly_area ;;
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

  dimension: parlimentary_constituency_id {
    type: string
    sql: ${TABLE}.parlimentary_constituency_id ;;
  }

  dimension: parlimentary_constituency_local_name {
    type: string
    sql: ${TABLE}.parlimentary_constituency_local_name ;;
  }

  dimension: parlimentary_constituency_name {
    type: string
    sql: ${TABLE}.parlimentary_constituency_name ;;
  }

  dimension: picme_village_code {
    type: number
    sql: ${TABLE}.picme_village_code ;;
  }

  dimension: pincode {
    type: number
    sql: ${TABLE}.pincode ;;
  }

  dimension: rev_village_id {
    type: string
    hidden: yes
    sql: ${TABLE}.rev_village_id ;;
  }

  dimension: state_id {
    type: string
    hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  dimension: street_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.street_gid ;;
  }

  dimension: street_id {
    type: string
    sql: ${TABLE}.street_id ;;
  }

  dimension: street_latitude {
    type: string
    sql: ${TABLE}.street_latitude ;;
  }

  dimension: street_local_name {
    type: string
    sql: ${TABLE}.street_local_name ;;
  }

  dimension: street_longitude {
    type: string
    sql: ${TABLE}.street_longitude ;;
  }

  dimension: street_name {
    type: string
    sql: ${TABLE}.street_name ;;
  }

  dimension: street_population {
    type: number
    sql: ${TABLE}.street_population ;;
  }

  dimension: tribal_area {
    type: yesno
    sql: ${TABLE}.tribal_area ;;
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

  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${country_id},${state_id},${district_id},${hud_id},${block_id},${village_id},${street_id}) ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      street_local_name,
      street_name,
      parlimentary_constituency_local_name,
      parlimentary_constituency_name,
      assembly_constituency_name,
      assembly_constituency_local_name
    ]
  }
}

view: address_street_master_spanner_bq_vw__update_register {
  dimension: address_street_master_spanner_bq_vw__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(address_street_master_spanner_bq_vw__update_register, "$.timestamp") ;;
  }
  dimension: address_street_master_spanner_bq_vw__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(address_street_master_spanner_bq_vw__update_register, "$.user_id") ;;
  }
}
