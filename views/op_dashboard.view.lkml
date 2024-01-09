view: op_dashboard {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.OP_Dashboard`
    ;;

  dimension: facility_directorate_master_directorate_name {
    type: string
    sql: ${TABLE}.facility_directorate_master_directorate_name ;;
  }

  dimension: facility_registry_facility_name {
    type: string
    sql: ${TABLE}.facility_registry_facility_name ;;
  }

  dimension: facility_registry_facility_type_name {
    type: string
    sql: ${TABLE}.facility_registry_facility_type_name ;;
  }

  dimension: health_screening_adult_op_count_female_1 {
    type: number
    sql: ${TABLE}.health_screening_adult_op_count_female_1 ;;
  }

  dimension: health_screening_adult_op_count_male_1 {
    type: number
    sql: ${TABLE}.health_screening_adult_op_count_male_1 ;;
  }

  dimension: health_screening_adult_op_count_transgender_1 {
    type: number
    sql: ${TABLE}.health_screening_adult_op_count_transgender_1 ;;
  }

  dimension: health_screening_children_op_count_female_1 {
    type: number
    sql: ${TABLE}.health_screening_children_op_count_female_1 ;;
  }

  dimension: health_screening_children_op_count_male_1 {
    type: number
    sql: ${TABLE}.health_screening_children_op_count_male_1 ;;
  }

  dimension: health_screening_children_op_count_transgender_1 {
    type: number
    sql: ${TABLE}.health_screening_children_op_count_transgender_1 ;;
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

  dimension: health_screening_op_count_1 {
    type: number
    sql: ${TABLE}.health_screening_op_count_1 ;;
  }

  dimension: health_screening_user_department_name {
    type: string
    sql: ${TABLE}.health_screening_user_department_name ;;
  }

  dimension: parent_facility_name {
    type: string
    sql: ${TABLE}.parent_facility_name ;;
  }

  dimension: user_facility_id {
    type: string
    sql: ${TABLE}.user_facility_id ;;
  }

  dimension: user_master_block_name {
    type: string
    sql: ${TABLE}.user_master_block_name ;;
  }

  dimension: user_master_district_name {
    type: string
    sql: ${TABLE}.user_master_district_name ;;
  }

  dimension: user_master_hud_name {
    type: string
    sql: ${TABLE}.user_master_hud_name ;;
  }

  dimension: user_is_hwc{
    type: string
    sql: ${TABLE}.user_facility_hwc ;;

  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }
  measure: health_screening_adult_op_count_male_1_test {
    type: sum
    sql: ${TABLE}.health_screening_adult_op_count_male_1 ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      facility_registry_facility_type_name,
      user_master_district_name,
      facility_directorate_master_directorate_name,
      health_screening_user_department_name,
      facility_registry_facility_name,
      user_master_block_name,
      parent_facility_name,
      user_master_hud_name
    ]
  }
}
