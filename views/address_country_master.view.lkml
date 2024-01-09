# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: address_country_master {
#   hidden: yes

#   join: address_country_master__update_register {
#     view_label: "Address Country Master Vw: Update Register"
#     sql: LEFT JOIN UNNEST(${address_country_master.update_register}) as address_country_master__update_register ;;
#     relationship: one_to_many
#   }
# }

view: address_country_master {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.address_country_master`
    ;;

  dimension: continent {
    type: string
    sql: ${TABLE}.continent ;;
  }

  dimension: continent_id {
    type: number
    sql: ${TABLE}.continent_id ;;
  }

  dimension: country_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.country_gid ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: country_local_name {
    type: string
    sql: ${TABLE}.country_local_name ;;
  }

  dimension: country_name {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country_name ;;
  }

  dimension: country_short_code {
    type: string
    sql: ${TABLE}.country_short_code ;;
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

  dimension: un_member {
    type: yesno
    sql: ${TABLE}.un_member ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name, country_local_name]
  }
}

view: address_country_master__update_register {
  dimension: address_country_master__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(address_country_master__update_register, "$.timestamp") ;;
  }
  dimension: address_country_master__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(address_country_master__update_register, "$.user_id") ;;
  }
}
