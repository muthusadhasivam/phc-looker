# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: facility_directorate_master_spanner_bq_vw {
  hidden: yes

  join: facility_directorate_master_spanner_bq_vw__update_register {
    view_label: "Facility Directorate Master Vw: Update Register "
    sql: LEFT JOIN UNNEST(${facility_directorate_master_spanner_bq_vw.update_register}) as facility_directorate_master_spanner_bq_vw__update_register ;;
    relationship: one_to_many
  }
}

view: facility_directorate_master_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.facility_directorate_master_spanner_bq_vw`
    ;;

  dimension: directorate_id {
    type: string
    sql: ${TABLE}.directorate_id ;;
  }

  dimension: directorate_name {
    type: string
    sql: ${TABLE}.directorate_name ;;
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
    sql: CONCAT(${owner_id},${directorate_id}) ;;
  }


  measure: count {
    type: count
    drill_fields: [directorate_name]
  }
}

view: facility_directorate_master_spanner_bq_vw__update_register {
  dimension: facility_directorate_master_spanner_bq_vw__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(facility_directorate_master_spanner_bq_vw__update_register, "$.timestamp") ;;
  }
  dimension: facility_directorate_master_spanner_bq_vw__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(facility_directorate_master_spanner_bq_vw__update_register, "$.user_id") ;;
  }
}
