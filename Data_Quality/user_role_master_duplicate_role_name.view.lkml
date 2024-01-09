view: user_role_master_duplicate_role_name {
  sql_table_name: `staging-tnphr.DATAQUALITY.user_role_master_Duplicate_role_name`
    ;;

  dimension: duplicate_role_name {
    type: number
    sql: ${TABLE}.Duplicate_role_name ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  measure: count {
    type: count
    drill_fields: [role_name, duplicate_role_name]
  }
}
