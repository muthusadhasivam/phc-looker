# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

# explore: health_diagnosis_master {
#   hidden: yes

#   join: health_diagnosis_master__update_register_timestamp {
#     view_label: "Health Diagnosis Master Vw: Update Register Timestamp"
#     sql: LEFT JOIN UNNEST(${health_diagnosis_master.update_register_timestamp}) as health_diagnosis_master__update_register_timestamp ;;
#     relationship: one_to_many
#   }
# }

view: health_diagnosis_master {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.health_diagnosis_master`
    ;;

  dimension: default_drug_id {
    type: number
    hidden: yes
    sql: ${TABLE}.default_drug_id ;;
  }

  dimension: diagnosis_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.diagnosis_id ;;
  }

  dimension: diagnosis_name {
    type: string
    sql: ${TABLE}.diagnosis_name ;;
  }

  dimension: duration_of_illness {
    type: yesno
    sql: ${TABLE}.duration_of_illness ;;
  }

  dimension: icd_block_code {
    type: string
    sql: ${TABLE}.ICD_block_code ;;
  }

  dimension: icd_block_name {
    type: string
    sql: ${TABLE}.ICD_block_name ;;
  }

  dimension: icd_block_number {
    type: number
    sql: ${TABLE}.ICD_block_number ;;
  }

  dimension: icd_code {
    type: string
    sql: ${TABLE}.ICD_Code ;;
  }

  dimension: ihip_pd_id {
    type: number
    sql: ${TABLE}.IHIP_pd_id ;;
  }

  dimension: ihip_pd_name {
    type: string
    sql: ${TABLE}.IHIP_pd_name ;;
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

  dimension: reference_id {
    type: number
    hidden: yes
    sql: ${TABLE}.reference_id ;;
  }

  dimension: revisit_days {
    type: number
    sql: ${TABLE}.revisit_days ;;
  }

  dimension: service_id {
    type: number
    hidden: yes
    sql: ${TABLE}.service_id ;;
  }

  dimension: service_name {
    type: string
    sql: ${TABLE}.service_name ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  measure: count {
    type: count
    drill_fields: [service_name, icd_block_name, diagnosis_name, ihip_pd_name]
  }
}

view: health_diagnosis_master__update_register {
  dimension: health_diagnosis_master__update_register_timestamp {
    type: string
    label: "Updated Timestamp"
    sql: JSON_VALUE(health_diagnosis_master__update_register, "$.timestamp") ;;
  }
  dimension: health_diagnosis_master__update_register_user_id {
    type: string
    label: "Updated By User Id"
    sql: JSON_VALUE(health_diagnosis_master__update_register, "$.user_id") ;;
  }
}
