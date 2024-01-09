# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

# explore: health_lab_tests_master {
#   hidden: yes

#   join: health_lab_tests_master__update_register_timestamp {
#     view_label: "Health Lab Tests Master Vw: Update Register Timestamp"
#     sql: LEFT JOIN UNNEST(${health_lab_tests_master.update_register_timestamp}) as health_lab_tests_master__update_register_timestamp ;;
#     relationship: one_to_many
#   }
# }

view: health_lab_tests_master {
  sql_table_name: `cobalt-catalyst-318208.TNPHR.health_lab_tests_master`
    ;;

  dimension: facility_level {
    type: string
    hidden: yes
    sql: ${TABLE}.facility_level ;;
  }

  dimension: lab_test_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.lab_test_id ;;
  }

  dimension: lab_test_name {
    type: string
    sql: ${TABLE}.lab_test_name ;;
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

  dimension: result_entry_type {
    type: string
    sql: ${TABLE}.result_entry_type ;;
  }

  dimension: specimen_type {
    type: string
    sql: ${TABLE}.specimen_type ;;
  }

  dimension: specimen_type_id {
    type: number
    sql: ${TABLE}.specimen_type_id ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  measure: count {
    type: count
    drill_fields: [lab_test_name]
  }
}

view: health_lab_tests_master__update_register {
  dimension: health_lab_tests_master__update_register_timestamp {
    type: string
    label: "Updated Timestamp"
    sql: JSON_VALUE(health_lab_tests_master__update_register, "$.timestamp") ;;
  }
  dimension: health_lab_tests_master__update_register_user_id {
    type: string
    label: "Updated By User Id"
    sql: JSON_VALUE(health_lab_tests_master__update_register, "$.user_id") ;;
  }
}
