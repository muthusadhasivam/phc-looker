view: compliance {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.compliance`
    ;;
  dimension: member_id {
      type: string
      sql: ${TABLE}.member_id ;;
    }
    dimension: compliance {
        type: number
        sql: ${TABLE}.compliance_count ;;
   }

  measure: compliance_count {
    type:  count_distinct
    filters: [compliance:"1"]
    sql: ${member_id} ;;
  }

  # dimension: compliance {
  #   type: number
  #   sql: ${TABLE}.compliance ;;
  # }



  # dimension_group: health_screening_last_update {
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}.health_screening_last_update_date ;;
  # }

  # dimension: health_screening_member_id {
  #   type: string
  #   sql: ${TABLE}.health_screening_member_id ;;
  # }

  # dimension: health_screening_outcome_follow_up {
  #   type: string
  #   sql: ${TABLE}.health_screening_outcome_follow_up ;;
  # }

  # dimension_group: health_screening_outcome_follow_up {
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}.health_screening_outcome_follow_up_date ;;
  # }

  # dimension_group: prev_health_screening_last_update {
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}.prev_health_screening_last_update_date ;;
  # }

  # dimension_group: prev_health_screening_outcome_follow_up {
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}.prev_health_screening_outcome_follow_up_date ;;
  # }

  # measure: count {
  #   type: count
  #   drill_fields: []
  # }

}
