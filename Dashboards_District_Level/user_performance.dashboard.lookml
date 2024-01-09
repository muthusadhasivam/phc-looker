- dashboard: user_performance_d
  title: User Performance D
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - name: Individual screenings last 30 days
    title: Individual screenings last 30 days
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.screening_individual_last_30_days]
      limit: 5000
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Unique_Screening]
      filters:
        health_screening.last_update_date: 60 days ago for 30 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Last 30 days
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d8dee0",
        font_color: "#9334E6", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    hidden_fields: [q1_health_screening__update_register.health_screening__update_register_user_id,
      health_screening.Unique_Screening, calculation_1]
    series_types: {}
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(${health_screening.screening_individual_last_30_days}-${health_screening.Unique_Screening})",
        label: Screenings last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: screenings_last_30_days,
        _type_hint: number}]
    listen:
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    row: 3
    col: 10
    width: 4
    height: 2
  - name: "<H3> User Synced</H3>"
    type: text
    title_text: "<H3> User Synced</H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 5
    col: 20
    width: 4
    height: 2
  - name: "<H3>Individual Screening</H3>"
    type: text
    title_text: "<H3>Individual Screening</H3>"
    body_text: ''
    row: 3
    col: 20
    width: 4
    height: 2
  - name: "<H3>Family Screenings</H3>"
    type: text
    title_text: "<H3>Family Screenings</H3>"
    body_text: ''
    row: 7
    col: 20
    width: 4
    height: 2
  - name: "<H3>Drug Delivery</H3>"
    type: text
    title_text: "<H3>Drug Delivery</H3>"
    body_text: ''
    row: 9
    col: 20
    width: 4
    height: 2
  - name: Family screenings  of last 30 days
    title: Family screenings  of last 30 days
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.screening_family_last_30_days, health_screening.screening_family_last_60_days_for_30_days]
      limit: 5000
      dynamic_fields: [{category: table_calculation, expression: "(${health_screening.screening_family_last_30_days}-${health_screening.screening_family_last_60_days_for_30_days})",
          label: Screening count, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
            ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
          table_calculation: screening_count, _type_hint: number}]
      join_fields: []
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    custom_color_enabled: true
    custom_color: "#170a09"
    show_single_value_title: false
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Last 30 days
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: "#EA4335", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    hidden_fields: [today_cumulative_screenings_individual, health_screening.screening_family_last_60_days_for_30_days]
    series_types: {}
    column_limit: 50
    listen:
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    row: 7
    col: 10
    width: 4
    height: 2
  - name: Individual Screening Last 24Hrs
    title: Individual Screening Last 24Hrs
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.screening_individual_last_24_hours]
      limit: 5000
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Unique_Screening]
      filters:
        health_screening.last_update_date: 48 hours ago for 24 hours
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Last 24 hours
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d8dee0",
        font_color: "#9334E6", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    hidden_fields: [q1_health_screening.Unique_Screening, health_screening.Unique_Screening,
      calculation_1]
    series_types: {}
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.screening_individual_last_24_hours}-${health_screening.Unique_Screening}",
        label: Screening count, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: screening_count,
        _type_hint: number}]
    listen:
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    row: 3
    col: 6
    width: 4
    height: 2
  - name: Synced in last 30 days
    title: Synced in last 30 days
    merged_queries:
    - model: tnphr_district_level
      explore: facility_registry
      type: table
      fields: [user_master.synced_in_last_30_days]
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_district_level
      explore: facility_registry
      type: table
      fields: [user_master.user_count]
      filters:
        user_master.last_login_date: 60 days ago for 30 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Last 30 days
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: "#E8710A", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [q1_user_master.user_count, user_master.user_count, calculation_1]
    series_types: {}
    type: single_value
    sorts: [synced_count desc]
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(${user_master.synced_in_last_30_days}-${user_master.user_count})",
        label: Synced count, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: synced_count,
        _type_hint: number}]
    listen:
    - Date: user_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Huds: facility_registry.hud_name
      Blocks: facility_registry.block_name
    - Directorate Name: facility_directorate_master.directorate_name
      Huds: facility_registry.hud_name
      Blocks: facility_registry.block_name
    row: 5
    col: 10
    width: 4
    height: 2
  - name: Family Screenings last 24 hours
    title: Family Screenings last 24 hours
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.screening_family_last_24_hours, health_screening.family_id]
      sorts: [health_screening.screening_family_last_24_hours desc]
      limit: 5000
      join_fields: []
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.family_id]
      filters:
        health_screening.last_update_date: 24 hours ago for 24 hours
        health_screening.screening_id: "-NULL,-EMPTY"
        health_screening__update_register.health_screening__update_register_user_id: "-EMPTY,-NULL"
      sorts: [health_screening.family_id]
      limit: 5000
      dynamic_fields: [{table_calculation: screening_count_of_more_than_24_hrs_for_24_hrs,
          label: Screening count of more than 24 hrs for  24 hrs, expression: 'count_distinct(${health_screening.family_id})',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: health_screening.family_id
        source_field_name: health_screening.family_id
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Last 24 hours
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [q1_health_screening.family_id, health_screening.screening_family_last_24_hours,
      screening_count_of_more_than_24_hrs_for_24_hrs, health_screening.family_id]
    type: single_value
    series_types: {}
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'sum(${health_screening.screening_family_last_24_hours})',
        label: New Calculation, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: new_calculation, _type_hint: number},
      {category: table_calculation, expression: "(${new_calculation}-${screening_count_of_more_than_24_hrs_for_24_hrs})",
        label: Screening count, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: screening_count,
        _type_hint: number}]
    listen:
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    row: 7
    col: 6
    width: 4
    height: 2
  - name: Drugs Delivered in last 24 hours
    title: Drugs Delivered in last 24 hours
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Drugs_count]
      filters:
        health_screening.last_update_time: 24 hours
      limit: 5000
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Drugs_count]
      filters:
        health_screening.last_update_date: 48 hours ago for 24 hours
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Last 24 hours
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#cfe8d6",
        font_color: "#9334E6", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    type: single_value
    hidden_fields: [q1_health_screening.Drugs_count, calculation_1]
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(${health_screening.Drugs_count}-${q1_health_screening.Drugs_count})",
        label: Drugs Delivered, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: drugs_delivered,
        _type_hint: number}]
    listen:
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    row: 9
    col: 6
    width: 4
    height: 2
  - name: Drugs delivered in last 30 days
    title: Drugs delivered in last 30 days
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Drugs_count]
      filters:
        health_screening.last_update_time: 30 days
      limit: 5000
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Drugs_count]
      filters:
        health_screening.last_update_date: 60 days ago for 30 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Last 30 days
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#cfe8d6",
        font_color: "#9334E6", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    type: single_value
    hidden_fields: [q1_health_screening.Drugs_count, calculation_1]
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(${health_screening.Drugs_count}-${q1_health_screening.Drugs_count})",
        label: Drugs Delivered, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: drugs_delivered,
        _type_hint: number}]
    listen:
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    row: 9
    col: 10
    width: 4
    height: 2
  - name: Average of Screening Individual
    title: Average of Screening Individual
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Unique_Screening]
      filters:
        health_screening.last_update_date: 30 days
      limit: 5000
      dynamic_fields: [{table_calculation: average_screening_per_day, label: Average
            Screening per day, expression: "(${health_screening.Unique_Screening}/30)",
          value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
          _type_hint: number}, {table_calculation: calculation_2, label: Calculation
            2, expression: row(), value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: number}]
      join_fields: []
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Unique_Screening]
      filters:
        health_screening.last_update_date: last 31 days
        health_screening.Unique_Screening: NOT NULL
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_2
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Unique_Screening]
      filters:
        health_screening.last_update_date: today
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_2
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Avg Screening per day
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d8dee0",
        font_color: "#9334E6", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [health_screening.Unique_Screening, q1_health_screening.Unique_Screening,
      q2_health_screening.Unique_Screening, screening_in_last_30_days_from_yesterday,
      average, average_of_screening_in_last_30_days_from_yesterday, average_screening_per_day,
      calculation_2]
    sorts: [difference_of_average desc]
    column_limit: 50
    dynamic_fields: [{table_calculation: screening_in_last_30_days_from_yesterday,
        label: Screening in last 30 days from yesterday, expression: "(${q1_health_screening.Unique_Screening}-${q2_health_screening.Unique_Screening})",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: average_of_screening_in_last_30_days_from_yesterday,
        label: Average of  Screening in last 30 days from yesterday, expression: "${screening_in_last_30_days_from_yesterday}/30",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_4, label: Calculation
          4, expression: 'round(${average_screening_per_day},1)', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: difference_of_average, label: Difference of average, expression: "(${average_screening_per_day}-${average_of_screening_in_last_30_days_from_yesterday})",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    listen:
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    row: 3
    col: 14
    width: 6
    height: 2
  - name: Average screenings per day families
    title: Average screenings per day families
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Family_Screening_count]
      filters:
        health_screening.last_update_date: 30 days
      limit: 5000
      dynamic_fields: [{table_calculation: average_of_screenings_per_day, label: Average
            of screenings per day, expression: "${health_screening.Family_Screening_count}/30",
          value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
          _type_hint: number}, {table_calculation: calculation_2, label: Calculation
            2, expression: row(), value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: number}]
      join_fields: []
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Family_Screening_count]
      filters:
        health_screening.last_update_date: 31 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_2
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Family_Screening_count]
      filters:
        health_screening.last_update_date: today
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_2
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Avg screenings per day
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [health_screening.Family_Screening_count, q1_health_screening.Family_Screening_count,
      q2_health_screening.Family_Screening_count, screening_data_of_30_days_from_yesterday,
      average_of_screening_data_of_30_days_from_yesterday, average_of_screenings_per_day,
      calculation_2]
    column_limit: 50
    dynamic_fields: [{table_calculation: screening_data_of_30_days_from_yesterday,
        label: Screening data of 30 days from yesterday, expression: "(${q1_health_screening.Family_Screening_count}-${q2_health_screening.Family_Screening_count})",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: average_of_screening_data_of_30_days_from_yesterday,
        label: Average of  Screening data of 30 days from yesterday, expression: "${screening_data_of_30_days_from_yesterday}/30",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_4, label: Calculation
          4, expression: 'round(${average_of_screenings_per_day},1)', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: difference_between_averages, label: Difference between
          averages, expression: "${average_of_screenings_per_day}-${average_of_screening_data_of_30_days_from_yesterday}",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    listen:
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    row: 7
    col: 14
    width: 6
    height: 2
  - name: Average Drugs Delivered per Day
    title: Average Drugs Delivered per Day
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Drugs_count]
      filters:
        health_screening.last_update_time: 30 days
      limit: 5000
      dynamic_fields: [{table_calculation: average_drugs_delivered_per_day_individual,
          label: 'Average Drugs Delivered per Day  [Individual]', expression: "${health_screening.Drugs_count}/30",
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}, {table_calculation: calculation_2, label: Calculation
            2, expression: row(), value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: number}]
      join_fields: []
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Drugs_count]
      filters:
        health_screening.last_update_date: 31 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_2
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Drugs_count]
      filters:
        health_screening.last_update_date: today
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_2
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Avg Drugs Delivered per day
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#cfe8d6",
        font_color: "#9334E6", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [health_screening.Drugs_count, q1_health_screening.Drugs_count,
      q2_health_screening.Drugs_count, drugs_delivered_in_last_30_days_from_yesterday,
      average_of_drugs_delivered_in_last_30_days_from_yesterday, average_drugs_delivered_per_day_individual,
      calculation_2]
    column_limit: 50
    dynamic_fields: [{table_calculation: drugs_delivered_in_last_30_days_from_yesterday,
        label: Drugs delivered in last 30 days from yesterday, expression: "${q1_health_screening.Drugs_count}-${q2_health_screening.Drugs_count}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: average_of_drugs_delivered_in_last_30_days_from_yesterday,
        label: Average of Drugs delivered in last 30 days from yesterday, expression: "${drugs_delivered_in_last_30_days_from_yesterday}/30",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_4, label: Calculation
          4, expression: 'round(${average_drugs_delivered_per_day_individual},1)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: difference_between_averages, label: Difference
          between averages, expression: "${average_drugs_delivered_per_day_individual}-${average_of_drugs_delivered_in_last_30_days_from_yesterday}",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    listen:
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    - Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    row: 9
    col: 14
    width: 6
    height: 2
  - name: Average synced per day
    title: Average synced per day
    merged_queries:
    - model: tnphr_district_level
      explore: facility_registry
      type: table
      fields: [user_master.synced_in_last_30_days]
      limit: 500
      dynamic_fields: [{table_calculation: average_synced_in_last_30_days, label: Average
            Synced in last 30 days, expression: "${user_master.synced_in_last_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: calculation_2, label: Calculation
            2, expression: row(), value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: number}]
      join_fields: []
    - model: tnphr_district_level
      explore: facility_registry
      type: table
      fields: [user_master.user_count]
      filters:
        user_master.last_login_date: 60 days ago for 30 days
      limit: 500
      dynamic_fields: [{table_calculation: average_synced_count_before_30_days, label: Average
            synced count before 30 days, expression: 'round(${user_master.user_count}/30,2)',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
          _type_hint: number}, {table_calculation: calculation_2, label: Calculation
            2, expression: row(), value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: number}]
      join_fields:
      - field_name: calculation_2
        source_field_name: calculation_2
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: false
    value_format: "#,##0.00"
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Avg Synced per day
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: "#E8710A", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [q1_user_master.user_count, user_master.user_count, user_master.synced_in_last_30_days,
      calculation_2]
    series_types: {}
    type: single_value
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${average_synced_in_last_30_days}-${average_synced_count_before_30_days}",
        label: Average Synced per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_synced_per_day, _type_hint: number}]
    listen:
    - Date: user_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Huds: facility_registry.hud_name
      Blocks: facility_registry.block_name
    - Directorate Name: facility_directorate_master.directorate_name
      Huds: facility_registry.hud_name
      Blocks: facility_registry.block_name
    row: 5
    col: 14
    width: 6
    height: 2
  - title: User Performance
    name: User Performance
    model: tnphr_district_level
    explore: family_member_master
    type: looker_bar
    fields: [health_screening.role_name, health_screening.screening_count]
    filters: {}
    sorts: [health_screening.screening_count desc]
    limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    listen:
      Role Name: health_screening.role_name
      Directorate Name: facility_directorate_master.directorate_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      District Name: health_screening.district_name
    row: 3
    col: 0
    width: 6
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/DPHLogo.png" width="90" height="90" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/NHMLogo.png" width="90" height="90" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://devadmin.tnphr.in/assets/images/TamilNadu_Logo.png" width="90" height="90" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/UHC_Logo.png" width="90" height="90" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/MTM_logo.png" width="90" height="90" />
    row: 0
    col: 0
    width: 24
    height: 3
  - name: Hud Wise
    title: Hud Wise
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.screening_individual_last_24_hours, health_screening.screening_individual_last_30_days,
        family_member_master.hud_name]
      sorts: [health_screening.screening_individual_last_24_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: average_individual_screenings, label: Average
            Individual  Screenings, expression: "${health_screening.screening_individual_last_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_district_level
      explore: facility_registry
      type: looker_grid
      fields: [user_master.synced_in_last_24_hours, user_master.synced_in_less_than_48_hours,
        user_master.synced_in_more_than_48_hours, user_master.hud_name]
      filters:
        user_master.district_name: "-NULL"
      sorts: [user_master.synced_in_last_24_hours desc]
      limit: 5000
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      series_types: {}
      join_fields:
      - field_name: user_master.hud_name
        source_field_name: family_member_master.hud_name
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.screening_family_last_24_hours, health_screening.screening_family_last_30_days,
        family_member_master.hud_name]
      sorts: [health_screening.screening_family_last_24_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: average_family_screening, label: Average
            family screening, expression: "${health_screening.screening_family_last_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Drugs_count_24_hours, health_screening.Drugs_count_last_30_days,
        health_screening.Average_Drugs_count_last_30_days, family_member_master.hud_name]
      sorts: [health_screening.Drugs_count_24_hours desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    - model: tnphr_district_level
      explore: facility_registry
      type: table
      fields: [user_master.synced_in_more_than_48_hours, user_master.user_count, user_master.hud_name]
      sorts: [user_master.synced_in_more_than_48_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: users_not_synced_more_than_48hrs, label: Users
            not synced more than 48hrs, expression: "${user_master.user_count}-${user_master.synced_in_more_than_48_hours}",
          value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: user_master.hud_name
        source_field_name: family_member_master.hud_name
    type: table
    listen:
    - District Name: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    -
    - District Name: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    - District Name: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    -
    row: 16
    col: 0
    width: 24
    height: 6
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.screening_individual_last_24_hours, health_screening.screening_individual_last_30_days,
        family_member_master.block_name]
      sorts: [health_screening.screening_individual_last_24_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: average_individual_screenings, label: Average
            Individual  Screenings, expression: "${health_screening.screening_individual_last_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_district_level
      explore: facility_registry
      type: looker_grid
      fields: [user_master.synced_in_last_24_hours, user_master.synced_in_less_than_48_hours,
        user_master.synced_in_more_than_48_hours, user_master.block_name]
      filters:
        user_master.district_name: "-NULL"
      sorts: [user_master.synced_in_last_24_hours desc]
      limit: 5000
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      series_types: {}
      join_fields:
      - field_name: user_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.screening_family_last_24_hours, health_screening.screening_family_last_30_days,
        family_member_master.block_name]
      sorts: [health_screening.screening_family_last_24_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: average_family_screening, label: Average
            family screening, expression: "${health_screening.screening_family_last_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Drugs_count_24_hours, health_screening.Drugs_count_last_30_days,
        health_screening.Average_Drugs_count_last_30_days, health_screening.block_name]
      sorts: [health_screening.Drugs_count_24_hours desc]
      limit: 500
      join_fields:
      - field_name: health_screening.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr_district_level
      explore: facility_registry
      type: table
      fields: [user_master.synced_in_more_than_48_hours, user_master.user_count, user_master.block_name]
      sorts: [user_master.synced_in_more_than_48_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: users_not_synced_more_than_48hrs, label: Users
            not synced more than 48hrs, expression: "${user_master.user_count}-${user_master.synced_in_more_than_48_hours}",
          value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: user_master.block_name
        source_field_name: family_member_master.block_name
    type: table
    listen:
    - District Name: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    -
    - District Name: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    - District Name: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    -
    row: 22
    col: 0
    width: 24
    height: 5
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.screening_individual_last_24_hours, health_screening.screening_individual_last_30_days,
        family_member_master.district_name]
      sorts: [health_screening.screening_individual_last_24_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: average_individual_screenings, label: Average
            Individual  Screenings, expression: "${health_screening.screening_individual_last_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_district_level
      explore: facility_registry
      type: looker_grid
      fields: [user_master.synced_in_last_24_hours, user_master.synced_in_less_than_48_hours,
        user_master.synced_in_more_than_48_hours, user_master.district_name]
      filters:
        user_master.district_name: "-NULL"
      sorts: [user_master.synced_in_last_24_hours desc]
      limit: 5000
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      series_types: {}
      join_fields:
      - field_name: user_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.screening_family_last_24_hours, health_screening.screening_family_last_30_days,
        family_member_master.district_name]
      sorts: [health_screening.screening_family_last_24_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: average_family_screening, label: Average
            family screening, expression: "${health_screening.screening_family_last_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Drugs_count_24_hours, health_screening.Drugs_count_last_30_days,
        health_screening.Average_Drugs_count_last_30_days, family_member_master.district_name]
      sorts: [health_screening.Drugs_count_24_hours desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr_district_level
      explore: facility_registry
      type: table
      fields: [user_master.synced_in_more_than_48_hours, user_master.user_count, user_master.district_name]
      sorts: [user_master.synced_in_more_than_48_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: users_not_synced_more_than_48hrs, label: Users
            not synced more than 48hrs, expression: "${user_master.user_count}-${user_master.synced_in_more_than_48_hours}",
          value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
          _type_hint: number}]
      hidden_fields: [user_master.user_count]
      join_fields:
      - field_name: user_master.district_name
        source_field_name: family_member_master.district_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, user_master.synced_in_last_24_hours,
      user_master.synced_in_less_than_48_hours, q4_user_master.synced_in_more_than_48_hours,
      users_not_synced_more_than_48hrs, health_screening.screening_individual_last_24_hours,
      health_screening.screening_individual_last_30_days, average_individual_screenings,
      health_screening.screening_family_last_24_hours, health_screening.screening_family_last_30_days,
      average_family_screening, health_screening.Drugs_count_24_hours, health_screening.Drugs_count_last_30_days,
      health_screening.Average_Drugs_count_last_30_days]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      health_screening.screening_individual_last_24_hours: Screening individual  24
        Hrs
      health_screening.screening_individual_last_30_days: Screening individual  30
        days
    series_cell_visualizations:
      health_screening.screening_individual_last_24_hours:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [user_master.user_count, user_master.synced_in_more_than_48_hours]
    type: looker_grid
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    query_fields:
      measures:
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Screening Individual Last 24 Hours
        label_from_parameter:
        label_short: Screening Individual Last 24 Hours
        map_layer:
        name: health_screening.screening_individual_last_24_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count_distinct
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Screening Individual Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.screening_individual_last_24_hours
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1647"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hour
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Screening Individual Last 30 Days
        label_from_parameter:
        label_short: Screening Individual Last 30 Days
        map_layer:
        name: health_screening.screening_individual_last_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count_distinct
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Screening Individual Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.screening_individual_last_30_days
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1634"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: last 30 days
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: average_individual_screenings
        label: Average Individual  Screenings
        value_format: "#,##0.00"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: User Synced In Last 24 Hours
        label_from_parameter:
        label_short: Synced In Last 24 Hours
        map_layer:
        name: user_master.synced_in_last_24_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count_distinct
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user_master
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user_master
        dimension_group:
        error:
        field_group_variant: Synced In Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user_master
        suggest_dimension: user_master.synced_in_last_24_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fuser_master.view.lkml?line=408"
        permanent: true
        source_file: views/user_master.view.lkml
        source_file_path: looker-tnphr/views/user_master.view.lkml
        sql: "${TABLE}.user_id "
        sql_case:
        filters:
        - field: user_master.last_login_date
          condition: 24 hours
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: User Synced In Less Than 48 Hours
        label_from_parameter:
        label_short: Synced In Less Than 48 Hours
        map_layer:
        name: user_master.synced_in_less_than_48_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count_distinct
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user_master
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user_master
        dimension_group:
        error:
        field_group_variant: Synced In Less Than 48 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user_master
        suggest_dimension: user_master.synced_in_less_than_48_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fuser_master.view.lkml?line=454"
        permanent: true
        source_file: views/user_master.view.lkml
        source_file_path: looker-tnphr/views/user_master.view.lkml
        sql: "${TABLE}.user_id  "
        sql_case:
        filters:
        - field: user_master.last_login_date
          condition: 48 hours
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: User Synced In More Than 48 Hours
        label_from_parameter:
        label_short: Synced In More Than 48 Hours
        map_layer:
        name: user_master.synced_in_more_than_48_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count_distinct
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user_master
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user_master
        dimension_group:
        error:
        field_group_variant: Synced In More Than 48 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user_master
        suggest_dimension: user_master.synced_in_more_than_48_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fuser_master.view.lkml?line=438"
        permanent: true
        source_file: views/user_master.view.lkml
        source_file_path: looker-tnphr/views/user_master.view.lkml
        sql: "${TABLE}.user_id  "
        sql_case:
        filters:
        - field: user_master.last_login_date
          condition: before 2 days ago
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Screening Family Last 24 Hours
        label_from_parameter:
        label_short: Screening Family Last 24 Hours
        map_layer:
        name: health_screening.screening_family_last_24_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count_distinct
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Screening Family Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.screening_family_last_24_hours
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1695"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hour
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Screening Family Last 30 Days
        label_from_parameter:
        label_short: Screening Family Last 30 Days
        map_layer:
        name: health_screening.screening_family_last_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count_distinct
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Screening Family Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.screening_family_last_30_days
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1660"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: last 30 days
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: average_family_screening
        label: Average family screening
        value_format: "#,##0.00"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Drugs Count 24 Hours
        label_from_parameter:
        label_short: Drugs Count 24 Hours
        map_layer:
        name: health_screening.Drugs_count_24_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count_distinct
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Drugs Count 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Drugs_count_24_hours
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1760"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'CONCAT(${member_id},${screening_id},${drugs_id}) '
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Drugs Count Last 30 Days
        label_from_parameter:
        label_short: Drugs Count Last 30 Days
        map_layer:
        name: health_screening.Drugs_count_last_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count_distinct
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Drugs Count Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Drugs_count_last_30_days
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1747"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'CONCAT(${member_id},${screening_id},${drugs_id}) '
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: last 30 days
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Average Drugs Count Last 30 Days
        label_from_parameter:
        label_short: Average Drugs Count Last 30 Days
        map_layer:
        name: health_screening.Average_Drugs_count_last_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Average Drugs Count Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Average_Drugs_count_last_30_days
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1773"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "(${Drugs_count_last_30_days}/30) "
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: User Synced In More Than 48 Hours
        label_from_parameter:
        label_short: Synced In More Than 48 Hours
        map_layer:
        name: q4_user_master.synced_in_more_than_48_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count_distinct
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user_master
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user_master
        dimension_group:
        error:
        field_group_variant: Synced In More Than 48 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user_master
        suggest_dimension: user_master.synced_in_more_than_48_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fuser_master.view.lkml?line=438"
        permanent: true
        source_file: views/user_master.view.lkml
        source_file_path: looker-tnphr/views/user_master.view.lkml
        sql: "${TABLE}.user_id  "
        sql_case:
        filters:
        - field: user_master.last_login_date
          condition: before 2 days ago
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: User User Count
        label_from_parameter:
        label_short: User Count
        map_layer:
        name: user_master.user_count
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count_distinct
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: user_master
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user_master
        dimension_group:
        error:
        field_group_variant: User Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user_master
        suggest_dimension: user_master.user_count
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fuser_master.view.lkml?line=489"
        permanent: true
        source_file: views/user_master.view.lkml
        source_file_path: looker-tnphr/views/user_master.view.lkml
        sql: "${user_id} "
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: users_not_synced_more_than_48hrs
        label: Users not synced more than 48hrs
        value_format:
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      dimensions:
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Family member Master District Name
        label_from_parameter:
        label_short: District Name
        map_layer:
        name: family_member_master.district_name
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.district_name
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=98"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.district_name "
        sql_case:
        filters:
        times_used: 0
      table_calculations: []
      pivots: []
    listen:
    - District Name: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    -
    - District Name: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    - District Name: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    -
    row: 11
    col: 0
    width: 24
    height: 5
  - name: Last 24 hours
    title: Last 24 hours
    merged_queries:
    - model: tnphr_district_level
      explore: facility_registry
      type: single_value
      fields: [user_master.synced_in_last_24_hours]
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: change
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: true
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      color_application:
        collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
        palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      custom_color: "#9334E6"
      conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
          font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
          strikethrough: false, fields: !!null ''}]
      defaults_version: 1
    - model: tnphr_district_level
      explore: facility_registry
      type: table
      fields: [user_master.user_count]
      filters:
        user_master.last_login_date: 48 hours ago for 24 hours
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Last 24 hours
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: "#E8710A", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    hidden_fields: [user_master.user_count, calculation_1]
    series_types: {}
    dynamic_fields: [{category: table_calculation, expression: "(${user_master.synced_in_last_24_hours}-${user_master.user_count})",
        label: Synced count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: synced_count, _type_hint: number}]
    row: 5
    col: 6
    width: 4
    height: 2
  filters:
  - name: Directorate Name
    title: Directorate Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr_district_level
    explore: facility_registry
    listens_to_filters: []
    field: facility_directorate_master.directorate_name
  - name: District Name
    title: District Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: inline
      options: []
    model: tnphr_district_level
    explore: family_member_master
    listens_to_filters: []
    field: family_member_master.district_name
  - name: Huds
    title: Huds
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr_district_level
    explore: family_member_master
    listens_to_filters: []
    field: family_member_master.hud_name
  - name: Blocks
    title: Blocks
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr_district_level
    explore: family_member_master
    listens_to_filters: []
    field: family_member_master.block_name
  - name: Role Name
    title: Role Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: tnphr_district_level
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.role_name
  - name: Date
    title: Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tnphr_district_level
    explore: facility_registry
    listens_to_filters: []
    field: user_master.last_update_date
