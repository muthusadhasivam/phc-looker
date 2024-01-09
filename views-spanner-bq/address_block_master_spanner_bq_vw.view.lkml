#Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: address_block_master_spanner_bq_vw {
  hidden: yes

  join: address_block_master_spanner_bq_vw__update_register {
    view_label: "Address Block Master Vw: Update Register"
    sql: LEFT JOIN UNNEST(${address_block_master_spanner_bq_vw.update_register}) as address_block_master_spanner_bq_vw__update_register ;;
    relationship: one_to_many
  }
}

view: address_block_master_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.address_block_master_spanner_bq_vw`
    ;;

  dimension: block_385_report_id {
    type: number
    sql: ${TABLE}.block_385_report_id ;;
  }

  dimension: block_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.block_gid ;;
  }

  dimension: block_health_main_phc_local_name {
    type: string
    sql: ${TABLE}.block_health_main_phc_local_name ;;
  }

  dimension: block_health_main_phc_name {
    type: string
    sql: ${TABLE}.block_health_main_phc_name ;;
  }

  dimension: block_hmis_code {
    type: number
    sql: ${TABLE}.block_hmis_code ;;
  }

  dimension: block_id {
    type: string
    sql: ${TABLE}.block_id ;;
  }

  dimension: block_lgd_code {
    type: number
    sql: ${TABLE}.block_lgd_code ;;
  }

  dimension: block_local_name {
    type: string
    sql: ${TABLE}.block_local_name ;;
  }

  dimension: block_mpco_report_id {
    type: number
    sql: ${TABLE}.block_mpco_report_id ;;
  }

  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }

  dimension: block_picme_id {
    type: number
    sql: ${TABLE}.block_picme_id ;;
  }

  dimension: block_rd_code {
    type: number
    sql: ${TABLE}.block_rd_code ;;
  }

  dimension: block_type {
    type: string
    sql: ${TABLE}.block_type ;;
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

  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${country_id},${state_id},${district_id},${hud_id},${block_id}) ;;
  }

  measure: count {
    type: count
    drill_fields: [block_health_main_phc_local_name, block_name, block_local_name, block_health_main_phc_name]
  }
}

view: address_block_master_spanner_bq_vw__update_register {
  dimension: address_block_master_spanner_bq_vw__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(address_block_master_spanner_bq_vw__update_register, "$.timestamp") ;;
  }
  dimension: address_block_master_spanner_bq_vw__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(address_block_master_spanner_bq_vw__update_register, "$.user_id") ;;
  }
}
