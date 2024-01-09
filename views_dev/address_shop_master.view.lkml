# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: address_shop_master {
  hidden: yes

  join: address_shop_master__update_register {
    view_label: "Address Shop Master Vw: Update Register"
    sql: LEFT JOIN UNNEST(${address_shop_master.update_register}) as address_shop_master__update_register ;;
    relationship: one_to_many
  }
}

view: address_shop_master {
  sql_table_name: `cobalt-catalyst-318208.TNPHR.address_shop_master`
    ;;

  dimension: district {
    type: string
    sql: ${TABLE}.district ;;
  }

  dimension: hsc_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hsc_gid ;;
  }

  dimension: hsc_name {
    type: string
    sql: ${TABLE}.hsc_name ;;
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
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: shop_code {
    type: string

    sql: ${TABLE}.shop_code ;;
  }

  dimension: shop_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.shop_id ;;
  }

  dimension: shop_name {
    type: string
    sql: ${TABLE}.shop_name ;;
  }

  dimension: street_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.street_gid ;;
  }

  dimension: street_name {
    type: string
    sql: ${TABLE}.street_name ;;
  }

  dimension: taluk {
    type: string
    sql: ${TABLE}.taluk ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  dimension: village {
    type: string
    sql: ${TABLE}.village ;;
  }

  measure: count {
    type: count
    drill_fields: [shop_name, street_name, hsc_name]
  }
}

view: address_shop_master__update_register {
  dimension: address_shop_master__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(address_shop_master__update_register, "$.timestamp") ;;
  }
  dimension: address_shop_master__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(address_shop_master__update_register, "$.user_id") ;;
  }
}
