# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: address_village_master {
  hidden: yes

  join: address_village_master__update_register {
    view_label: "Address Village Master Vw: Update Register"
    sql: LEFT JOIN UNNEST(${address_village_master.update_register}) as address_village_master__update_register ;;
    relationship: one_to_many
  }
}

view: address_village_master {
  sql_table_name: `cobalt-catalyst-318208.TNPHR.address_village_master`
    ;;

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

  dimension: state_id {
    type: string
    hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  dimension: village_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.village_gid ;;
  }

  dimension: village_id {
    type: string
    sql: ${TABLE}.village_id ;;
  }

  dimension: village_lgd_code {
    type: number
    sql: ${TABLE}.village_lgd_code ;;
  }

  dimension: village_local_body_code {
    type: number
    sql: ${TABLE}.village_local_body_code ;;
  }

  dimension: village_local_name {
    type: string
    sql: ${TABLE}.village_local_name ;;
  }

  dimension: village_name {
    type: string
    sql: ${TABLE}.village_name ;;
  }

  dimension: village_type {
    type: string
    sql: ${TABLE}.village_type ;;
  }

  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${country_id},${state_id},${district_id},${hud_id},${block_id},${village_id}) ;;
  }

  measure: count {
    type: count
    drill_fields: [village_name, village_local_name]
  }
}

view: address_village_master__update_register {
  dimension: address_village_master__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(address_village_master__update_register, "$.timestamp") ;;
  }
  dimension: address_village_master__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(address_village_master__update_register, "$.user_id") ;;
  }
}
