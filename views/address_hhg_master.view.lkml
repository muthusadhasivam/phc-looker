# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: address_hhg_master {
#   hidden: yes

#   join: address_hhg_master__update_register {
#     view_label: "Address Hhg Master Vw: Update Register"
#     sql: LEFT JOIN UNNEST(${address_hhg_master.update_register}) as address_hhg_master__update_register ;;
#     relationship: one_to_many
#   }
# }

view: address_hhg_master {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.address_hhg_master`
    ;;

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

  dimension: habitation_id {
    type: string
    sql: ${TABLE}.habitation_id ;;
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
    drill_fields: [hhg_name]
  }
}

view: address_hhg_master__update_register {
  dimension: address_hhg_master__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(address_hhg_master__update_register, "$.timestamp") ;;
  }
  dimension: address_hhg_master__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(address_hhg_master__update_register, "$.user_id") ;;
  }
}
