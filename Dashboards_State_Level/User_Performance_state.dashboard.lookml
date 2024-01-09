- dashboard: user_performance_v1_0_6
  title: User Performance v1.0.6
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - name: Individual screenings last 30 days
    title: Individual screenings last 30 days
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.screening_individual_last_30_days]
      limit: 5000
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
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
    - Directorate Name: facility_directorate_master.directorate_name
      Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    - Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    row: 5
    col: 10
    width: 4
    height: 2
  - name: "<H3> User Synced</H3>"
    type: text
    title_text: "<H3> User Synced</H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 3
    col: 20
    width: 4
    height: 2
  - name: "<H3>Individual Screening</H3>"
    type: text
    title_text: "<H3>Individual Screening</H3>"
    body_text: ''
    row: 5
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
    - model: tnphr_state_level
      explore: family_master
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
    - Directorate Name: facility_directorate_master.directorate_name
      Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    row: 7
    col: 10
    width: 4
    height: 2
  - name: Individual Screening Last 24Hrs
    title: Individual Screening Last 24Hrs
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.screening_individual_last_24_hours]
      limit: 5000
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
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
    - Directorate Name: facility_directorate_master.directorate_name
      Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    - Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    row: 5
    col: 6
    width: 4
    height: 2
  - name: Synced in last 30 days
    title: Synced in last 30 days
    merged_queries:
    - model: tnphr_state_level
      explore: facility_registry
      type: table
      fields: [user_master.synced_in_last_30_days]
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
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
    - Directorate Name: facility_directorate_master.directorate_name
      Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    row: 3
    col: 10
    width: 4
    height: 2
  - name: Family Screenings last 24 hours
    title: Family Screenings last 24 hours
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: single_value
      fields: [health_screening.screening_family_last_24_hours]
      limit: 5000
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Family_Screening_count]
      filters:
        health_screening__update_register.health_screening__update_register_user_id: "-EMPTY,-NULL"
        health_screening.screening_id: "-EMPTY,-NULL"
        health_screening.last_update_date: 48 hours ago for 24 hours
      limit: 5000
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
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [q1_health_screening.family_id, calculation_1, health_screening.Family_Screening_count]
    type: single_value
    series_types: {}
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Family_Screening_count}-${health_screening.screening_family_last_24_hours}",
        label: Screening count, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: screening_count,
        _type_hint: number}]
    listen:
    - Directorate Name: facility_directorate_master.directorate_name
      Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    - Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    row: 7
    col: 6
    width: 4
    height: 2
  - name: Drugs Delivered in last 24 hours
    title: Drugs Delivered in last 24 hours
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Drugs_count]
      filters:
        health_screening.last_update_time: 24 hours
      limit: 5000
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
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
    - Directorate Name: facility_directorate_master.directorate_name
      Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    - Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    row: 9
    col: 6
    width: 4
    height: 2
  - name: Drugs delivered in last 30 days
    title: Drugs delivered in last 30 days
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Drugs_count]
      filters:
        health_screening.last_update_time: 30 days
      limit: 5000
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
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
    - Directorate Name: facility_directorate_master.directorate_name
      Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    - Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    row: 9
    col: 10
    width: 4
    height: 2
  - name: Synced in last 24 hours
    title: Synced in last 24 hours
    merged_queries:
    - model: tnphr_state_level
      explore: facility_registry
      type: table
      fields: [user_master.synced_in_last_24_hours]
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
      explore: facility_registry
      type: single_value
      fields: [user_master.user_count]
      filters:
        user_master.last_login_date: 48 hours ago for 24 hours
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
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
    series_types: {}
    hidden_fields: [q1_user_master.user_count, user_master.user_count, calculation_1]
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(${user_master.synced_in_last_24_hours}-${user_master.user_count})",
        label: Synced count, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: synced_count,
        _type_hint: number}]
    listen:
    - Directorate Name: facility_directorate_master.directorate_name
      Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    row: 3
    col: 6
    width: 4
    height: 2
  - name: Average of Screening Individual
    title: Average of Screening Individual
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
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
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Unique_Screening]
      filters:
        health_screening.Unique_Screening: NOT NULL
        health_screening.last_update_date: last 31 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_2
    - model: tnphr_state_level
      explore: family_master
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
        _type_hint: number}, {category: table_calculation, expression: 'round(${average_screening_per_day},1)',
        label: Calculation 4, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: calculation_4, _type_hint: number},
      {table_calculation: difference_of_average, label: Difference of average, expression: "(${average_screening_per_day}-${average_of_screening_in_last_30_days_from_yesterday})",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    listen:
    - Directorate Name: facility_directorate_master.directorate_name
      Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    - Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    - Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    row: 5
    col: 14
    width: 6
    height: 2
  - name: Average screenings per day families
    title: Average screenings per day families
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
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
    - model: tnphr_state_level
      explore: family_master
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
    - model: tnphr_state_level
      explore: family_master
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
    custom_color: "#4276BE"
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
        _type_hint: number}, {category: table_calculation, expression: 'round(${average_of_screenings_per_day},1)',
        label: Calculation 4, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: calculation_4, _type_hint: number},
      {table_calculation: difference_between_averages, label: Difference between averages,
        expression: "${average_of_screenings_per_day}-${average_of_screening_data_of_30_days_from_yesterday}",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    listen:
    - Directorate Name: facility_directorate_master.directorate_name
      Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    - Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    - Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    row: 7
    col: 14
    width: 6
    height: 2
  - name: Average Drugs Delivered per Day
    title: Average Drugs Delivered per Day
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
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
    - model: tnphr_state_level
      explore: family_master
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
    - model: tnphr_state_level
      explore: family_master
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
        _type_hint: number}, {category: table_calculation, expression: 'round(${average_drugs_delivered_per_day_individual},1)',
        label: Calculation 4, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: calculation_4, _type_hint: number},
      {table_calculation: difference_between_averages, label: Difference between averages,
        expression: "${average_drugs_delivered_per_day_individual}-${average_of_drugs_delivered_in_last_30_days_from_yesterday}",
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    listen:
    - Directorate Name: facility_directorate_master.directorate_name
      Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    - Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    - Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
    row: 9
    col: 14
    width: 6
    height: 2
  - name: Average synced per day
    title: Average synced per day
    merged_queries:
    - model: tnphr_state_level
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
    - model: tnphr_state_level
      explore: facility_registry
      type: table
      fields: [user_master.user_count]
      filters:
        user_master.last_login_date: 60 days ago for 30 days
      limit: 500
      dynamic_fields: [{table_calculation: average_synced_count_before_30_days, label: Average
            synced count before 30 days, expression: 'round(${user_master.user_count}/30,2)',
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
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
    - Directorate Name: facility_directorate_master.directorate_name
      Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    row: 3
    col: 14
    width: 6
    height: 2
  - title: User Performance
    name: User Performance
    model: tnphr_state_level
    explore: family_master
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
      Directorate Name: facility_directorate_master.directorate_name
      Blocks: family_master.block_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
      Role Name: health_screening.role_name
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
  - name: HUD Wise
    title: HUD Wise
    merged_queries:
    - model: tnphr_state_level
      explore: facility_registry
      type: table
      fields: [user_master.synced_in_last_24_hours, user_master.hud_name, user_master.synced_in_less_than_48_hours,
        user_master.synced_in_more_than_48_hours]
      sorts: [user_master.synced_in_last_24_hours desc]
      limit: 5000
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.screening_individual_last_24_hours, health_screening.screening_individual_last_30_days,
        health_screening.hud_name, health_screening.avg_screening]
      filters:
        health_screening.hud_name: "-NULL"
      sorts: [health_screening.screening_individual_last_24_hours desc]
      limit: 5000
      dynamic_fields: [{table_calculation: average_screening, label: Average Screening,
          expression: "${health_screening.screening_individual_last_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: health_screening.hud_name
        source_field_name: user_master.hud_name
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.screening_family_last_24_hours, health_screening.screening_family_last_30_days,
        health_screening.hud_name, health_screening.avg_family_screening]
      filters:
        health_screening.hud_name: "-NULL"
      sorts: [health_screening.screening_family_last_24_hours desc]
      limit: 5000
      dynamic_fields: [{table_calculation: average_family_screening, label: Average
            Family Screening, expression: "${health_screening.screening_family_last_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: health_screening.hud_name
        source_field_name: user_master.hud_name
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.screening_count_last_24_hours, health_screening.screening_count_last_30_day,
        health_screening.hud_name, health_screening.average_dd]
      filters:
        health_screening__drugs.health_screening__drugs_drug_id: "-EMPTY,-NULL"
        health_screening.hud_name: "-NULL"
      sorts: [health_screening.screening_count_last_24_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: average_dd, label: Average DD, expression: "${health_screening.screening_count_last_30_day}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: health_screening.hud_name
        source_field_name: user_master.hud_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      health_screening.screening_count_last_24_hours: Drugs Delivered 24 Hrs
      health_screening.screening_count_last_30_day: Drugs Delivered 30 days
      average_dd: Average number of Drugs Delivered
      user_master.synced_in_last_48_hours: Synced  48 Hrs
      health_screening.screening_individual_last_24_hours: Screening Individual 24
        Hrs
      health_screening.screening_individual_last_30_days: Screening Individual 30
        days
      average_screening: Individual Screening Average per Day
      health_screening.screening_family_last_24_hours: Screening Family 24 Hrs
      health_screening.screening_family_last_30_days: Screening Family 30 days
      average_family_screening: Family screening  Average per Day
      user_master.hud_name: Huds
      user_master.synced_in_less_than_48_hours: User Synced < 48 hours
      user_master.synced_in_more_than_48_hours: User Synced > 48 hours
    series_cell_visualizations:
      user_master.synced_in_last_24_hours:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f5fffc"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    type: table
    series_types: {}
    hidden_fields: [average_screening, average_family_screening, average_dd]
    column_limit: 50
    listen:
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    row: 21
    col: 0
    width: 24
    height: 10
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr_state_level
      explore: facility_registry
      type: table
      fields: [user_master.synced_in_last_24_hours, user_master.block_name, user_master.synced_in_less_than_48_hours,
        user_master.synced_in_more_than_48_hours]
      sorts: [user_master.block_name]
      limit: 5000
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.screening_individual_last_24_hours, health_screening.screening_individual_last_30_days,
        health_screening.block_name, health_screening.avg_screening]
      filters:
        health_screening.block_name: "-NULL"
      sorts: [health_screening.block_name]
      limit: 5000
      join_fields:
      - field_name: health_screening.block_name
        source_field_name: user_master.block_name
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.screening_family_last_24_hours, health_screening.screening_family_last_30_days,
        health_screening.block_name, health_screening.avg_family_screening]
      filters:
        health_screening.block_name: "-NULL"
      sorts: [health_screening.block_name]
      limit: 5000
      join_fields:
      - field_name: health_screening.block_name
        source_field_name: user_master.block_name
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.screening_count_last_24_hours, health_screening.screening_count_last_30_day,
        health_screening.block_name, health_screening.average_dd]
      filters:
        health_screening__drugs.health_screening__drugs_drug_id: "-EMPTY,-NULL"
        health_screening.block_name: "-NULL"
      sorts: [health_screening.block_name]
      limit: 5000
      join_fields:
      - field_name: health_screening.block_name
        source_field_name: user_master.block_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", user_master.block_name, user_master.synced_in_last_24_hours,
      user_master.synced_in_less_than_48_hours, user_master.synced_in_more_than_48_hours,
      screening_individual_last_24_hours_1, screening_individual_last_30_days_1, average_screening_1,
      screening_family_last_24_hours_1, screening_family_last_30_days_1, avg_family_screening_1,
      drugs_delivered_24_hours, drugs_delivered_30_days, health_screening.screening_count_last_30_day,
      health_screening.average_dd]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      health_screening.screening_count_last_24_hours: Drugs Delivered 24 Hrs
      health_screening.screening_count_last_30_day: Drugs Delivered 30 days
      average_dd: Average DD
      user_master.synced_in_last_48_hours: Synced 48 Hrs
      health_screening.screening_individual_last_24_hours: Screening Individual 24
        Hrs
      health_screening.screening_individual_last_30_days: Screening Individual 30
        days
      average_screening: Individual Screening Average per Day
      health_screening.screening_family_last_24_hours: Screening Family 24 Hrs
      health_screening.screening_family_last_30_days: Screening Family 30 days
      average_family_screening: Family screening  Average per Day
      user_master.block_name: Blocks
      user_master.synced_in_less_than_48_hours: User Synced < 48 hours
      user_master.synced_in_more_than_48_hours: User Synced > 48 hours
      screening_individual_last_24_hours_1: Screening Individual 24 Hrs
      screening_individual_last_30_days_1: Screening Individual 30 days
      average_screening_2: Average Screening
      average_screening_1: Average Screening
      screening_family_last_24_hours_1: Screening Family 24 Hrs
      screening_family_last_30_days_1: Screening Family 30 days
      avg_family_screening_1: Average Family Screening
    series_cell_visualizations:
      user_master.synced_in_last_24_hours:
        is_active: false
    series_text_format:
      screening_individual_last_24_hours_1:
        align: center
      screening_individual_last_30_days_1:
        align: center
      average_screening_2:
        align: center
      average_screening_1:
        align: center
      screening_family_last_24_hours_1:
        align: center
      screening_family_last_30_days_1:
        align: center
      avg_family_screening_1:
        align: center
      drugs_delivered_24_hours:
        align: center
      drugs_delivered_30_days:
        align: center
      average_dd_1:
        align: center
      average_dd:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_font_color: "#f5fffc"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d8dee0",
        font_color: "#303030", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [screening_individual_last_24_hours_1, screening_individual_last_30_days_1,
          average_screening_1]}, {type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: "#1a1a1a", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [screening_family_last_24_hours_1, screening_family_last_30_days_1,
          avg_family_screening_1]}, {type: not null, value: !!null '', background_color: "#cfe8d6",
        font_color: "#242424", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [drugs_delivered_24_hours, drugs_delivered_30_days,
          average_dd]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
    type: table
    series_types: {}
    hidden_fields: [health_screening.screening_individual_last_24_hours, health_screening.screening_individual_last_30_days,
      health_screening.avg_screening, health_screening.screening_family_last_24_hours,
      health_screening.screening_family_last_30_days, health_screening.avg_family_screening,
      health_screening.screening_count_last_24_hours, health_screening.screening_count_last_30_day,
      health_screening.average_dd]
    query_fields:
      measures:
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        dimension_group:
        error:
        field_group_variant: Synced In Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: user_master
        suggest_dimension: user_master.synced_in_last_24_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fuser_master.view.lkml?line=408"
        permanent: true
        source_file: views/user_master.view.lkml
        source_file_path: looker-tnphr_state_level/views/user_master.view.lkml
        sql: "${TABLE}.user_id "
        sql_case:
        filters:
        - field: user_master.last_login_date
          condition: 24 hours
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        dimension_group:
        error:
        field_group_variant: Synced In Less Than 48 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: user_master
        suggest_dimension: user_master.synced_in_less_than_48_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fuser_master.view.lkml?line=454"
        permanent: true
        source_file: views/user_master.view.lkml
        source_file_path: looker-tnphr_state_level/views/user_master.view.lkml
        sql: "${TABLE}.user_id  "
        sql_case:
        filters:
        - field: user_master.last_login_date
          condition: 48 hours
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        dimension_group:
        error:
        field_group_variant: Synced In More Than 48 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: user_master
        suggest_dimension: user_master.synced_in_more_than_48_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fuser_master.view.lkml?line=438"
        permanent: true
        source_file: views/user_master.view.lkml
        source_file_path: looker-tnphr_state_level/views/user_master.view.lkml
        sql: "${TABLE}.user_id  "
        sql_case:
        filters:
        - field: user_master.last_login_date
          condition: before 2 days ago
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        dimension_group:
        error:
        field_group_variant: Screening Individual Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.screening_individual_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1339"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${TABLE}.member_id"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hour
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        dimension_group:
        error:
        field_group_variant: Screening Individual Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.screening_individual_last_30_days
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1326"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: last 30 days
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Average Screening
        label_from_parameter:
        label_short: Average Screening
        map_layer:
        name: health_screening.avg_screening
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
        dimension_group:
        error:
        field_group_variant: Average Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.avg_screening
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1365"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${health_screening.screening_individual_last_30_days}/30"
        sql_case:
        filters:
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        dimension_group:
        error:
        field_group_variant: Screening Family Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.screening_family_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1387"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hour
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        dimension_group:
        error:
        field_group_variant: Screening Family Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.screening_family_last_30_days
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1352"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: last 30 days
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Average Family Screening
        label_from_parameter:
        label_short: Average Family Screening
        map_layer:
        name: health_screening.avg_family_screening
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
        dimension_group:
        error:
        field_group_variant: Average Family Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.avg_family_screening
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1400"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${health_screening.screening_family_last_30_days}/30"
        sql_case:
        filters:
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Screening Count Last 24 Hours
        label_from_parameter:
        label_short: Screening Count Last 24 Hours
        map_layer:
        name: health_screening.screening_count_last_24_hours
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Screening Count Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.screening_count_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1087"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Screening Count Last 30 Day
        label_from_parameter:
        label_short: Screening Count Last 30 Day
        map_layer:
        name: health_screening.screening_count_last_30_day
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Screening Count Last 30 Day
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.screening_count_last_30_day
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1100"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: last 30 days
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Average DD
        label_from_parameter:
        label_short: Average DD
        map_layer:
        name: health_screening.average_dd
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
        dimension_group:
        error:
        field_group_variant: Average DD
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.average_dd
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1110"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${health_screening.screening_count_last_30_day}/30"
        sql_case:
        filters:
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: average_dd
        label: Average DD
        value_format: "#,##0.00"
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
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: User Block Name
        label_from_parameter:
        label_short: Block Name
        map_layer:
        name: user_master.block_name
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
        view: user_master
        view_label: User
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: user_master
        suggest_dimension: user_master.block_name
        suggest_explore: facility_registry
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fuser_master.view.lkml?line=101"
        permanent: true
        source_file: views/user_master.view.lkml
        source_file_path: looker-tnphr_state_level/views/user_master.view.lkml
        sql: "${TABLE}.block_name "
        sql_case:
        filters:
        sorted:
          desc: false
          sort_index: 0
      table_calculations:
      - label: screening_individual_last_24_hours_1
        name: screening_individual_last_24_hours_1
        expression: if(${health_screening.screening_individual_last_24_hours}>0,${health_screening.screening_individual_last_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: screening_individual_last_30_days_1
        name: screening_individual_last_30_days_1
        expression: if(${health_screening.screening_individual_last_30_days}>0,${health_screening.screening_individual_last_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Average_Screening_1
        name: average_screening_1
        expression: if(${health_screening.avg_screening}>0,${health_screening.avg_screening},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0.00"
        is_numeric: true
      - label: screening_family_last_24_hours_1
        name: screening_family_last_24_hours_1
        expression: if(${health_screening.screening_family_last_24_hours}>0,${health_screening.screening_family_last_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: screening_family_last_30_days_1
        name: screening_family_last_30_days_1
        expression: if(${health_screening.screening_family_last_30_days}>0,${health_screening.screening_family_last_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: avg_family_screening_1
        name: avg_family_screening_1
        expression: if(${health_screening.avg_family_screening}>0,${health_screening.avg_family_screening},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0.00"
        is_numeric: true
      - label: Drugs Delivered 24 hours
        name: drugs_delivered_24_hours
        expression: if(${health_screening.screening_count_last_24_hours}>0,${health_screening.screening_count_last_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Drugs Delivered 30 days
        name: drugs_delivered_30_days
        expression: if(${health_screening.screening_count_last_30_day}>0,${health_screening.screening_count_last_30_day},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      pivots: []
    sorts: [user_master.block_name]
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'if(${health_screening.screening_individual_last_24_hours}>0,${health_screening.screening_individual_last_24_hours},0)',
        label: screening_individual_last_24_hours_1, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_individual_last_24_hours_1,
        _type_hint: number}, {category: table_calculation, expression: 'if(${health_screening.screening_individual_last_30_days}>0,${health_screening.screening_individual_last_30_days},0)',
        label: screening_individual_last_30_days_1, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_individual_last_30_days_1,
        _type_hint: number}, {category: table_calculation, expression: 'if(${health_screening.avg_screening}>0,${health_screening.avg_screening},0)',
        label: Average_Screening_1, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_screening_1, _type_hint: number},
      {category: table_calculation, expression: 'if(${health_screening.screening_family_last_24_hours}>0,${health_screening.screening_family_last_24_hours},0)',
        label: screening_family_last_24_hours_1, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_family_last_24_hours_1,
        _type_hint: number}, {category: table_calculation, expression: 'if(${health_screening.screening_family_last_30_days}>0,${health_screening.screening_family_last_30_days},0)',
        label: screening_family_last_30_days_1, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_family_last_30_days_1, _type_hint: number},
      {category: table_calculation, expression: 'if(${health_screening.avg_family_screening}>0,${health_screening.avg_family_screening},0)',
        label: avg_family_screening_1, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: avg_family_screening_1, _type_hint: number},
      {category: table_calculation, expression: 'if(${health_screening.screening_count_last_24_hours}>0,${health_screening.screening_count_last_24_hours},0)',
        label: Drugs Delivered 24 hours, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: drugs_delivered_24_hours, _type_hint: number},
      {category: table_calculation, expression: 'if(${health_screening.screening_count_last_30_day}>0,${health_screening.screening_count_last_30_day},0)',
        label: Drugs Delivered 30 days, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: drugs_delivered_30_days, _type_hint: number},
      {category: table_calculation, expression: 'if(${health_screening.average_dd}>0,${health_screening.average_dd},0)',
        label: Average dd, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_dd, _type_hint: number}]
    listen:
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    row: 31
    col: 0
    width: 24
    height: 11
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr_state_level
      explore: facility_registry
      type: table
      fields: [user_master.district_name, user_master.synced_in_last_24_hours, user_master.synced_in_less_than_48_hours,
        user_master.synced_in_more_than_48_hours]
      sorts: [user_master.synced_in_last_24_hours desc]
      limit: 5000
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.district_name, health_screening.screening_individual_last_24_hours,
        health_screening.screening_individual_last_30_days, health_screening.avg_screening]
      filters:
        health_screening.district_name: "-NULL"
      sorts: [health_screening.screening_individual_last_24_hours desc]
      limit: 5000
      dynamic_fields: [{table_calculation: average_screening, label: Average Screening,
          expression: "${health_screening.screening_individual_last_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: health_screening.district_name
        source_field_name: user_master.district_name
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.district_name, health_screening.screening_family_last_24_hours,
        health_screening.screening_family_last_30_days, health_screening.avg_family_screening]
      filters:
        health_screening.district_name: "-NULL"
      sorts: [health_screening.screening_family_last_24_hours desc]
      limit: 5000
      dynamic_fields: [{table_calculation: average_family_screening, label: Average
            Family Screening, expression: "${health_screening.screening_family_last_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: health_screening.district_name
        source_field_name: user_master.district_name
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.screening_count_last_24_hours, health_screening.screening_count_last_30_day,
        health_screening.district_name, health_screening.average_dd]
      filters:
        health_screening__drugs.health_screening__drugs_drug_id: "-EMPTY,-NULL"
        health_screening.district_name: "-NULL"
      sorts: [health_screening.screening_count_last_24_hours desc]
      limit: 5000
      dynamic_fields: [{table_calculation: average_dd, label: Average DD, expression: "${health_screening.screening_count_last_30_day}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: health_screening.district_name
        source_field_name: user_master.district_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      user_master.district_name: Districts
      user_master.synced_in_last_48_hours: Synced 48 Hrs
      user_master.synced_in_more_than_48_hours: User Synced > 48 hours
      health_screening.screening_individual_last_24_hours: Screening Individual 24
        Hrs
      health_screening.screening_individual_last_30_days: Screening Individual 30
        Days
      health_screening.screening_family_last_24_hours: Screening Family 24 Hrs
      health_screening.screening_family_last_30_days: Screening  Family 30 days
      health_screening.screening_count_last_24_hours: Drugs Delivered 24 Hrs
      health_screening.screening_count_last_30_day: Drugs delivered 30 days
      user_master.synced_in_less_than_48_hours: User Synced < 48 hours
    series_cell_visualizations:
      user_master.synced_in_last_24_hours:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f5fffc"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    type: table
    series_types: {}
    hidden_fields: [average_screening, average_family_screening, average_dd]
    series_column_widths:
      health_screening.screening_individual_last_30_days: 123
      user_master.district_name: 118.5
    query_fields:
      measures:
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        dimension_group:
        error:
        field_group_variant: Synced In Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: user_master
        suggest_dimension: user_master.synced_in_last_24_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fuser_master.view.lkml?line=408"
        permanent: true
        source_file: views/user_master.view.lkml
        source_file_path: looker-tnphr_state_level/views/user_master.view.lkml
        sql: "${TABLE}.user_id "
        sql_case:
        filters:
        - field: user_master.last_login_date
          condition: 24 hours
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        dimension_group:
        error:
        field_group_variant: Synced In Less Than 48 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: user_master
        suggest_dimension: user_master.synced_in_less_than_48_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fuser_master.view.lkml?line=454"
        permanent: true
        source_file: views/user_master.view.lkml
        source_file_path: looker-tnphr_state_level/views/user_master.view.lkml
        sql: "${TABLE}.user_id  "
        sql_case:
        filters:
        - field: user_master.last_login_date
          condition: 48 hours
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        dimension_group:
        error:
        field_group_variant: Synced In More Than 48 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: user_master
        suggest_dimension: user_master.synced_in_more_than_48_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fuser_master.view.lkml?line=438"
        permanent: true
        source_file: views/user_master.view.lkml
        source_file_path: looker-tnphr_state_level/views/user_master.view.lkml
        sql: "${TABLE}.user_id  "
        sql_case:
        filters:
        - field: user_master.last_login_date
          condition: before 2 days ago
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        dimension_group:
        error:
        field_group_variant: Screening Individual Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.screening_individual_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1339"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${TABLE}.member_id"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hour
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        dimension_group:
        error:
        field_group_variant: Screening Individual Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.screening_individual_last_30_days
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1326"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: last 30 days
        aggregate: true
        sorted:
          desc: true
          sort_index: 0
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Average Screening
        label_from_parameter:
        label_short: Average Screening
        map_layer:
        name: health_screening.avg_screening
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
        dimension_group:
        error:
        field_group_variant: Average Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.avg_screening
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1365"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${health_screening.screening_individual_last_30_days}/30"
        sql_case:
        filters:
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: average_screening
        label: Average Screening
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
        description:
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
        dimension_group:
        error:
        field_group_variant: Screening Family Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.screening_family_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1387"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hour
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        dimension_group:
        error:
        field_group_variant: Screening Family Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.screening_family_last_30_days
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1352"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: last 30 days
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Average Family Screening
        label_from_parameter:
        label_short: Average Family Screening
        map_layer:
        name: health_screening.avg_family_screening
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
        dimension_group:
        error:
        field_group_variant: Average Family Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.avg_family_screening
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1400"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${health_screening.screening_family_last_30_days}/30"
        sql_case:
        filters:
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: average_family_screening
        label: Average Family Screening
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
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Screening Count Last 24 Hours
        label_from_parameter:
        label_short: Screening Count Last 24 Hours
        map_layer:
        name: health_screening.screening_count_last_24_hours
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Screening Count Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.screening_count_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1087"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Screening Count Last 30 Day
        label_from_parameter:
        label_short: Screening Count Last 30 Day
        map_layer:
        name: health_screening.screening_count_last_30_day
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Screening Count Last 30 Day
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.screening_count_last_30_day
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1100"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: last 30 days
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Average DD
        label_from_parameter:
        label_short: Average DD
        map_layer:
        name: health_screening.average_dd
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
        dimension_group:
        error:
        field_group_variant: Average DD
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: health_screening
        suggest_dimension: health_screening.average_dd
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fhealth_screening.view.lkml?line=1110"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr_state_level/views/health_screening.view.lkml
        sql: "${health_screening.screening_count_last_30_day}/30"
        sql_case:
        filters:
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: average_dd
        label: Average DD
        value_format: "#,##0.00"
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
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: User District Name
        label_from_parameter:
        label_short: District Name
        map_layer:
        name: user_master.district_name
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
        view: user_master
        view_label: User
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr_state_level
        scope: user_master
        suggest_dimension: user_master.district_name
        suggest_explore: facility_registry
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr_state_level/files/views%2Fuser_master.view.lkml?line=147"
        permanent: true
        source_file: views/user_master.view.lkml
        source_file_path: looker-tnphr_state_level/views/user_master.view.lkml
        sql: "${TABLE}.district_name "
        sql_case:
        filters:
      table_calculations: []
      pivots: []
    sorts: [health_screening.screening_individual_last_30_days desc]
    column_limit: 50
    listen:
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    - Blocks: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Districts: facility_registry.district_name
    row: 11
    col: 0
    width: 24
    height: 10
  filters:
  - name: Directorate Name
    title: Directorate Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: tnphr_state_level
    explore: facility_registry
    listens_to_filters: []
    field: facility_directorate_master.directorate_name
  - name: Districts
    title: Districts
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_master.district_name
  - name: HUDs
    title: HUDs
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_master.hud_name
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
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_master.block_name
  - name: Role Name
    title: Role Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr_state_level
    explore: family_master
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
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_master.last_update_date
