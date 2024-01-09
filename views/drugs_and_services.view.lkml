# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: drugs_and_services {
  hidden: yes

  join: drugs_and_services__drugs {
    view_label: "Drugs And Services: Drugs"
    sql: LEFT JOIN UNNEST(${drugs_and_services.drugs}) as drugs_and_services__drugs ;;
    relationship: one_to_many
  }

  join: drugs_and_services__diseases_disease_list {
    view_label: "Drugs And Services: Diseases Disease List"
    sql: LEFT JOIN UNNEST(${drugs_and_services.diseases_disease_list}) as drugs_and_services__diseases_disease_list ;;
    relationship: one_to_many
  }
}

view: drugs_and_services {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.drugs_and_services`
    ;;

  dimension: compliance {
    type: number
    sql: ${TABLE}.compliance ;;
  }

  dimension: diseases_disease_list {
    hidden: yes
    sql: ${TABLE}.diseases_disease_list ;;
  }

  dimension: drugs {
    hidden: yes
    sql: ${TABLE}.drugs ;;
  }

  dimension_group: health_screening_last_update {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.health_screening_last_update_date ;;
  }

  dimension: health_screening_member_id {
    type: string
    sql: ${TABLE}.health_screening_member_id ;;
  }

  dimension: health_screening_outcome_follow_up {
    type: string
    sql: ${TABLE}.health_screening_outcome_follow_up ;;
  }

  dimension_group: health_screening_outcome_follow_up {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.health_screening_outcome_follow_up_date ;;
  }

  dimension_group: prev_health_screening_last_update {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.prev_health_screening_last_update_date ;;
  }

  dimension_group: prev_health_screening_outcome_follow_up {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.prev_health_screening_outcome_follow_up_date ;;
  }

  dimension: screening_counting {
    type: number
    sql: ${TABLE}.screening_counting ;;
  }

  dimension: screening_id {
    type: string
    sql: ${TABLE}.screening_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Treatment_compliance_MTM_Beneficiary {
    type: count_distinct
    sql: ${health_screening_member_id} ;;
  }
}

view: drugs_and_services__drugs {
  dimension: drugs_and_services__drugs {
    type: string
    sql: drugs_and_services__drugs ;;
  }
}

view: drugs_and_services__diseases_disease_list {
  dimension: drugs_and_services__diseases_disease_list {
    type: string
    sql: drugs_and_services__diseases_disease_list ;;
  }
}
