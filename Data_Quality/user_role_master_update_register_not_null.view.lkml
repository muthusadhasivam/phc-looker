view: user_role_master_update_register_not_null {
  sql_table_name: `staging-tnphr.DATAQUALITY.user_role_master_update_register_not_null`
    ;;

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: update_register_not_null {
    type: number
    sql: ${TABLE}.update_register_not_null ;;
  }

  measure: count {
    type: count
    drill_fields: [role_name]
  }
}
