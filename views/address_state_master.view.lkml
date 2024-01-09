# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: address_state_master {
  hidden: yes

  join: address_state_master__update_register {
    view_label: "Address State Master Vw: Update Register"
    sql: LEFT JOIN UNNEST(${address_state_master.update_register}) as address_state_master__update_register ;;
    relationship: one_to_many
  }
}

view: address_state_master {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.address_state_master`
    ;;

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
  }

  dimension: country_region_id {
    type: number
    sql: ${TABLE}.country_region_id ;;
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

  dimension: state_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.state_gid ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.state_id ;;
  }

  dimension: state_lgd_code {
    type: number
    sql: ${TABLE}.state_lgd_code ;;
  }

  dimension: state_local_name {
    type: string
    sql: ${TABLE}.state_local_name ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: state_short_code {
    type: string
    sql: ${TABLE}.state_short_code ;;
  }

  dimension: state_type {
    type: string
    sql: ${TABLE}.state_type ;;
  }

  dimension: state_type_id {
    type: number
    sql: ${TABLE}.state_type_id ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  measure: count {
    type: count
    drill_fields: [state_local_name, state_name]
  }
}

view: address_state_master__update_register {
  dimension: address_state_master__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(address_state_master__update_register, "$.timestamp") ;;
  }
  dimension: address_state_master__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(address_state_master__update_register, "$.user_id") ;;
  }
}
