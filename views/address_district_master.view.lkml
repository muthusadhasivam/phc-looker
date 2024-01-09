# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: address_district_master {
  hidden: yes

  # join: address_district_master__regions {
  #   view_label: "Address District Master Vw: Regions"
  #   sql: LEFT JOIN UNNEST(${address_district_master.regions}) as address_district_master__regions ;;
  #   relationship: one_to_many
  # }

  join: address_district_master__update_register {
    view_label: "Address District Master Vw: Update Register"
    sql: LEFT JOIN UNNEST(${address_district_master.update_register}) as address_district_master__update_register ;;
    relationship: one_to_many
  }
}

view: address_district_master {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.address_district_master`
    ;;

  dimension: country_id {
    type: string
    hidden: yes
    sql: ${TABLE}.country_id ;;
  }

  dimension: district_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.district_gid ;;
  }

  dimension: district_id {
    type: string
    sql: ${TABLE}.district_id ;;
  }

  dimension: district_lgd_code {
    type: number
    sql: ${TABLE}.district_lgd_code ;;
  }

  dimension: district_local_name {
    type: string
    sql: ${TABLE}.district_local_name ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
  }

  dimension: district_picme_code {
    type: number
    sql: ${TABLE}.district_picme_code ;;
  }

  dimension: district_rd_code {
    type: number
    sql: ${TABLE}.district_rd_code ;;
  }

  dimension: district_rev_code {
    type: number
    sql: ${TABLE}.district_rev_code ;;
  }

  dimension: district_short_code {
    type: string
    sql: ${TABLE}.district_short_code ;;
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

  dimension: regions {
    hidden: yes
    sql: ${TABLE}.regions ;;
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
    sql: CONCAT(${country_id},${state_id},${district_id}) ;;
  }

  measure: count {
    type: count
    drill_fields: [district_local_name, district_name]
  }
}

view: address_district_master__regions {
  dimension: address_district_master__regions {
    type: string
    sql: address_district_master__regions ;;
  }
}

view: address_district_master__update_register {
  dimension: address_district_master__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(address_district_master__update_register, "$.timestamp") ;;
  }
  dimension: address_district_master__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(address_district_master__update_register, "$.user_id") ;;
  }
}
