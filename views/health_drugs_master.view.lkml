# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

# explore: health_drugs_master {
#   hidden: yes

#   join: health_drugs_master__update_register_timestamp {
#     view_label: "Health Drugs Master Vw: Update Register Timestamp"
#     sql: LEFT JOIN UNNEST(${health_drugs_master.update_register_timestamp}) as health_drugs_master__update_register_timestamp ;;
#     relationship: one_to_many
#   }
# }

view: health_drugs_master {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.health_drugs_master`
    ;;

  dimension: dosage {
    type: string
    sql: ${TABLE}.dosage ;;
  }

  dimension: drug_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.drug_id ;;
  }

  dimension: drug_name {
    type: string
    sql: ${TABLE}.drug_name ;;
  }

  dimension: drug_type {
    type: string
    sql: ${TABLE}.drug_type ;;
  }

  dimension: drug_usage_type {
    type: string
    sql: ${TABLE}.drug_usage_type ;;
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

  dimension: tnmsc_code {
    type: string
    sql: ${TABLE}.tnmsc_code ;;
  }

  dimension: treatment {
    type: yesno
    sql: ${TABLE}.treatment ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  measure: count {
    type: count
    drill_fields: [drug_name]
  }
}

view: health_drugs_master__update_register {

  dimension: health_drugs_master__update_register_timestamp {
    type: string
    label: "Updated Timestamp"
    sql: JSON_VALUE(health_drugs_master__update_register, "$.timestamp") ;;
  }
  dimension: health_drugs_master__update_register_user_id {
    type: string
    label: "Updated By User Id"
    sql: JSON_VALUE(health_drugs_master__update_register, "$.user_id") ;;
  }
}
