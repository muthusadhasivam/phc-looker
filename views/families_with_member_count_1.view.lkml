view: families_with_member_count_1 {
  derived_table: {
    sql: (select family_id,count(distinct(member_id)) as count from TNPHR.family_member_master
      group by 1
       having count(distinct(member_id)) = 1
      order by 2 desc)
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
  }

  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }

  dimension: village_name {
    type: string
    sql: ${TABLE}.village_name ;;
  }

  dimension: family_id {
    type: string
    sql: ${TABLE}.family_id ;;
  }

  dimension: count_ {
    type: number
    sql: ${TABLE}.count ;;
  }

  measure: family_count {
    type: count_distinct
    sql: ${family_id} ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"

  }

  set: detail {
    fields: [district_name, block_name, village_name, family_id, count_]
  }
}
