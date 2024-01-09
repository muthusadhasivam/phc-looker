view: family_member_master_facility_id_null {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_member_master_facility_id_null`
    ;;

  dimension: facility_id_null {
    type: number
    value_format_name: id
    sql: ${TABLE}.facility_id_null ;;
  }

  dimension: member_id {
    type: string
    sql: ${TABLE}.member_id ;;
  }

  dimension: member_local_name {
    type: string
    sql: ${TABLE}.member_local_name ;;
  }

  dimension: member_name {
    type: string
    sql: ${TABLE}.member_name ;;
  }

  measure: count {
    type: count
    drill_fields: [member_local_name, member_name]
  }
}
