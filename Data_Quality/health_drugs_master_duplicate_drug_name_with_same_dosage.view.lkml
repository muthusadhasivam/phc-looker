view: health_drugs_master_duplicate_drug_name_with_same_dosage {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_drugs_master_duplicate_drug_name_with_same_dosage`
    ;;

  dimension: dosage {
    type: string
    sql: ${TABLE}.dosage ;;
  }

  dimension: drug_name {
    type: string
    sql: ${TABLE}.drug_name ;;
  }

  dimension: duplicate_drug_name_with_same_dosage {
    type: number
    sql: ${TABLE}.duplicate_drug_name_with_same_dosage ;;
  }

  measure: count {
    type: count
    drill_fields: [drug_name]
  }
}
