view: whv_monitoring_view {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.WHV_Monitoring_view`
    ;;

  dimension: count_whv_monitoring_view {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  dimension: timestamp_concat {
    type: string
    label: "timestamp_concat"
    sql: CASE
        WHEN ${TABLE}.timestamp = "11:00:00PM to 12:00:00AM" THEN "23:00:00 to 00:00:00"
        WHEN ${TABLE}.timestamp = "10:00:00PM to 11:00:00PM" THEN "22:00:00 to 23:00:00"
        WHEN ${TABLE}.timestamp = "09:00:00PM to 10:00:00PM" THEN "21:00:00 to 22:00:00"
        WHEN ${TABLE}.timestamp = "08:00:00PM to 09:00:00PM" THEN "20:00:00 to 21:00:00"
        WHEN ${TABLE}.timestamp = "07:00:00PM to 08:00:00PM" THEN "19:00:00 to 20:00:00"
        WHEN ${TABLE}.timestamp = "06:00:00PM to 07:00:00PM" THEN "18:00:00 to 19:00:00"
        WHEN ${TABLE}.timestamp = "05:00:00PM to 06:00:00PM" THEN "17:00:00 to 18:00:00"
        WHEN ${TABLE}.timestamp = "04:00:00PM to 05:00:00PM" THEN "16:00:00 to 17:00:00"
        WHEN ${TABLE}.timestamp = "03:00:00PM to 04:00:00PM" THEN "15:00:00 to 16:00:00"
        WHEN ${TABLE}.timestamp = "02:00:00PM to 03:00:00PM" THEN "14:00:00 to 15:00:00"
        WHEN ${TABLE}.timestamp = "01:00:00PM to 02:00:00PM" THEN "13:00:00 to 14:00:00"
        WHEN ${TABLE}.timestamp = "12:00:00PM to 1:00:00PM" THEN "12:00:00 to 13:00:00"
        WHEN ${TABLE}.timestamp = "11:00:00AM to 12:00:00AM" THEN "11:00:00 to 12:00:00"
        WHEN ${TABLE}.timestamp = "10:00:00AM to 11:00:00AM" THEN "10:00:00 to 11:00:00"
        WHEN ${TABLE}.timestamp = "09:00:00AM to 10:00:00AM" THEN "09:00:00 to 10:00:00"
        WHEN ${TABLE}.timestamp = "08:00:00AM to 09:00:00AM" THEN "08:00:00 to 09:00:00"
        WHEN ${TABLE}.timestamp = "07:00:00AM to 08:00:00AM" THEN "07:00:00 to 08:00:00"
        WHEN ${TABLE}.timestamp = "06:00:00AM to 07:00:00AM" THEN "06:00:00 to 07:00:00"
        WHEN ${TABLE}.timestamp = "05:00:00AM to 06:00:00AM" THEN "05:00:00 to 06:00:00"
        WHEN ${TABLE}.timestamp = "04:00:00AM to 05:00:00AM" THEN "04:00:00 to 05:00:00"
        WHEN ${TABLE}.timestamp = "03:00:00AM to 04:00:00AM" THEN "03:00:00 to 04:00:00"
        WHEN ${TABLE}.timestamp = "02:00:00AM to 03:00:00AM" THEN "02:00:00 to 03:00:00"
        WHEN ${TABLE}.timestamp = "01:00:00AM to 02:00:00AM" THEN "01:00:00 to 02:00:00"
        WHEN ${TABLE}.timestamp = "12:00:00AM to 01:00:00AM" THEN "00:00:00 to 01:00:00"
        ELSE ${TABLE}.timestamp
        END ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
