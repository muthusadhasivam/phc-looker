# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

#explore: user_role_master_spanner_bq_vw {
#hidden: yes

#join: user_role_master_spanner_bq_vw__update_register {
# view_label: "User Role Master Vw: Update Register"
# sql: LEFT JOIN UNNEST(${user_role_master_spanner_bq_vw.update_register}) as user_role_master_spanner_bq_vw__update_register ;;
#  relationship: one_to_many
# }
#}

view: user_role_master_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.user_role_master_spanner_bq_vw`
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

  dimension: reference_id {
    type: number
    hidden: yes
    sql: ${TABLE}.reference_id ;;
  }

  dimension: role_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.role_id ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  measure: count {
    type: count
    drill_fields: [role_name]
  }
}

view: user_role_master_spanner_bq_vw__update_register {
  dimension: user_role_master_spanner_bq_vw__update_register_timestamp {
    type: string
    label: "Updated Timestamp"
    sql: JSON_VALUE(user_role_master_spanner_bq_vw__update_register, "$.timestamp") ;;
  }
  dimension: user_role_master_spanner_bq_vw__update_register_user_id {
    type: string
    label: "Updated By User Id"
    sql: JSON_VALUE(user_role_master_spanner_bq_vw__update_register, "$.user_id") ;;
  }
}
