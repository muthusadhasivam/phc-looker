# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: address_hud_master_spanner_bq_vw {
  hidden: yes

  join: address_hud_master_spanner_bq_vw__update_register {
    view_label: "Address Hud Master Vw: Update Register"
    sql: LEFT JOIN UNNEST(${address_hud_master_spanner_bq_vw.update_register}) as address_hud_master_spanner_bq_vw__update_register ;;
    relationship: one_to_many
  }
}

view: address_hud_master_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.address_hud_master_spanner_bq_vw`
    ;;

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

  dimension: hud_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hud_gid ;;
  }

  dimension: hud_id {
    type: string
    sql: ${TABLE}.hud_id ;;
  }

  dimension: hud_local_name {
    type: string
    sql: ${TABLE}.hud_local_name ;;
  }

  dimension: hud_name {
    type: string
    sql: ${TABLE}.hud_name ;;
  }

  dimension: hud_short_code {
    type: string
    sql: ${TABLE}.hud_short_code ;;
  }

  dimension: hud_type {
    type: string
    sql: ${TABLE}.hud_type ;;
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
    hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${country_id},${state_id},${district_id},${hud_id}) ;;
  }

  measure: count {
    type: count
    drill_fields: [hud_name, hud_local_name]
  }
}

view: address_hud_master_spanner_bq_vw__update_register {
  dimension: address_hud_master_spanner_bq_vw__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(address_hud_master_spanner_bq_vw__update_register, "$.timestamp") ;;
  }
  dimension: address_hud_master_spanner_bq_vw__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(address_hud_master_spanner_bq_vw__update_register, "$.user_id") ;;
  }
}
