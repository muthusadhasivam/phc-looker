# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: facility_level_master {
#   hidden: yes

#   join: facility_level_master__update_register {
#     view_label: "Facility Level Master Vw: Update Register "
#     sql: LEFT JOIN UNNEST(${facility_level_master.update_register}) as facility_level_master__update_register ;;
#     relationship: one_to_many
#   }
# }

view: facility_level_master {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.facility_level_master`
    ;;

  dimension: category_id {
    type: string
    hidden: yes
    sql: ${TABLE}.category_id ;;
  }

  dimension: directorate_id {
    type: string
    hidden: yes
    sql: ${TABLE}.directorate_id ;;
  }

  dimension: facility_level {
    type: string
    sql: ${TABLE}.facility_level ;;
  }

  dimension: facility_type_id {
    type: string
    hidden: yes
    sql: ${TABLE}.facility_type_id ;;
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

  dimension: level_id {
    type: string
    sql: ${TABLE}.level_id ;;
  }

  dimension: owner_id {
    type: string
    hidden: yes
    sql: ${TABLE}.owner_id ;;
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

  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${owner_id},${directorate_id},${category_id}${facility_type_id},${level_id}) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: facility_level_master__update_register {
  dimension: facility_level_master__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(facility_level_master__update_register, "$.timestamp") ;;
  }
  dimension: facility_level_master__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(facility_level_master__update_register, "$.user_id") ;;
  }
}