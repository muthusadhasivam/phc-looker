# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: facility_owner_master {
  hidden: yes

  join: facility_owner_master__update_register {
    view_label: "Facility Owner Master Vw: Update Register "
    sql: LEFT JOIN UNNEST(${facility_owner_master.update_register}) as facility_owner_master__update_register ;;
    relationship: one_to_many
  }
}

view: facility_owner_master {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.facility_owner_master`
    ;;

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

  dimension: owner_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.owner_id ;;
  }

  dimension: owner_name {
    type: string
    sql: ${TABLE}.owner_name ;;
  }

  dimension: reference_id {
    type: number
    hidden: yes
    sql: ${TABLE}.reference_id ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }


  measure: count {
    type: count
    drill_fields: [owner_name]
  }
}

view: facility_owner_master__update_register {
  dimension: facility_owner_master__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(facility_owner_master__update_register, "$.timestamp") ;;
  }
  dimension: facility_owner_master__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(facility_owner_master__update_register, "$.user_id") ;;
  }
}
