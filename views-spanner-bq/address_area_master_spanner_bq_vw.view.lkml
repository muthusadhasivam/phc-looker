# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: address_area_master_spanner_bq_vw {
#   hidden: yes

#   join: address_area_master_spanner_bq_vw__update_register {
#     view_label: "Address Area Master Vw: Update Register"
#     sql: LEFT JOIN UNNEST(${address_area_master.update_register}) as address_area_master__update_register ;;
#     relationship: one_to_many
#   }
# }

view: address_area_master_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.address_area_master_spanner_bq_vw`
    ;;

  dimension: area_gid {
    type: string
    sql: ${TABLE}.area_gid ;;
  }

  dimension: area_id {
    type: string
    sql: ${TABLE}.area_id ;;
  }

  dimension: area_local_name {
    type: string
    sql: ${TABLE}.area_local_name ;;
  }

  dimension: area_name {
    type: string
    sql: ${TABLE}.area_name ;;
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

  dimension: state_id {
    type: string
    sql: ${TABLE}.state_id ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  dimension: village_id {
    type: string
    sql: ${TABLE}.village_id ;;
  }

  measure: count {
    type: count
    drill_fields: [area_name, area_local_name]
  }
}

view: address_area_master_spanner_bq_vw__update_register {
  dimension: address_area_master_spanner_bq_vw__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(address_area_master_spanner_bq_vw__update_register, "$.timestamp") ;;
  }
  dimension: address_area_master_spanner_bq_vw__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(address_area_master_spanner_bq_vw__update_register, "$.user_id") ;;
  }
}
