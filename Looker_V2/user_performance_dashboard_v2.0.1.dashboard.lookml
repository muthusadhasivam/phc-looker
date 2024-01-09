- dashboard: user_performance_v2_0_1
  title: User Performance v2.0.1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 2oaX4C77VykadpODWM8Vx7
  elements:
  - name: Last Synced 24 Hours
    title: Last Synced 24 Hours
    merged_queries:
    - model: tnphr-prod-kpi
      explore: user
      type: single_value
      fields: [user.count]
      filters:
        user.user_last_sync_time: 24 hours
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
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
    - model: tnphr-prod-kpi
      explore: user
      type: table
      fields: [user.count]
      filters:
        user.user_last_sync_time: 48 hours ago for 24 hours
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    show_single_value_title: false
    single_value_title: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Last 24 hours
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [q1_user.count]
    dynamic_fields: [{category: table_calculation, expression: "${user.count}-${q1_user.count}",
        label: 'Last 24 hours ', value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: last_24_hours, _type_hint: number}]
    listen:
    - Institution Directorate: user.user_directorate
      'Institution District ': user.user_district_name
      Institution Hud: user.user_hud_name
      'Institution Block ': user.user_block_name
      Institution Role: user.user_role_name
    - Institution Directorate: user.user_directorate
      'Institution District ': user.user_district_name
      Institution Hud: user.user_hud_name
      'Institution Block ': user.user_block_name
      Institution Role: user.user_role_name
    row: 5
    col: 6
    width: 5
    height: 3
  - title: User Performance
    name: User Performance
    model: tnphr-prod-kpi
    explore: screening
    type: looker_bar
    fields: [screening.role_name, screening.Total_screenings]
    sorts: [screening.Total_screenings desc]
    limit: 20
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    listen:
      'Community  Hud ': screening.citizen_hud_name
      'Community District ': screening.citizen_district_name
      Community  Block: screening.citizen_block_name
      'Community Village ': screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      'Institution District ': screening.user_district_name
      Institution Hud: screening.user_hud_name
      'Institution Block ': screening.user_block_name
      Institution Role: screening.role_name
    row: 5
    col: 0
    width: 6
    height: 12
  - name: Individual Screening  last 24 hours
    title: Individual Screening  last 24 hours
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.unique_screenings]
      filters:
        screening.screened_date: 24 hours
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.unique_screenings]
      filters:
        screening.screened_date: 48 hours ago for 24 hours
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [q1_screening.unique_screenings, calculation_1]
    dynamic_fields: [{category: table_calculation, expression: "${q1_screening.unique_screenings}-${screening.unique_screenings}",
        label: 'Last 24 hours ', value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: last_24_hours, _type_hint: number}]
    listen:
    - 'Community  Hud ': screening.citizen_hud_name
      'Community District ': screening.citizen_district_name
      Community  Block: screening.citizen_block_name
      'Community Village ': screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      'Institution District ': screening.user_district_name
      Institution Hud: screening.user_hud_name
      'Institution Block ': screening.user_block_name
      Institution Role: screening.role_name
    - 'Community  Hud ': screening.citizen_hud_name
      'Community District ': screening.citizen_district_name
      Community  Block: screening.citizen_block_name
      'Community Village ': screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      'Institution District ': screening.user_district_name
      Institution Hud: screening.user_hud_name
      'Institution Block ': screening.user_block_name
      Institution Role: screening.role_name
    row: 8
    col: 6
    width: 5
    height: 3
  - name: Individual  screening  last 30 days
    title: Individual  screening  last 30 days
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.unique_screenings]
      filters:
        screening.screened_date: 30 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.unique_screenings]
      filters:
        screening.screened_date: 60 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [previous_30_days, q1_screening.unique_screenings, calculation_1]
    dynamic_fields: [{category: table_calculation, expression: "${q1_screening.unique_screenings}-${screening.unique_screenings}",
        label: Previous  30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: previous_30_days,
        _type_hint: number}, {category: table_calculation, expression: "${screening.unique_screenings}-${previous_30_days}",
        label: Last 30 days, value_format: ">9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_30_days,
        _type_hint: number}]
    listen:
    - 'Community  Hud ': screening.citizen_hud_name
      'Community District ': screening.citizen_district_name
      Community  Block: screening.citizen_block_name
      'Community Village ': screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      'Institution District ': screening.user_district_name
      Institution Hud: screening.user_hud_name
      'Institution Block ': screening.user_block_name
      Institution Role: screening.role_name
    - 'Community  Hud ': screening.citizen_hud_name
      'Community District ': screening.citizen_district_name
      Community  Block: screening.citizen_block_name
      'Community Village ': screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      'Institution District ': screening.user_district_name
      Institution Hud: screening.user_hud_name
      'Institution Block ': screening.user_block_name
      Institution Role: screening.role_name
    row: 8
    col: 11
    width: 5
    height: 3
  - name: Average individual  screening
    title: Average individual  screening
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.unique_screenings]
      filters:
        screening.screened_date: 30 days
      limit: 500
      dynamic_fields: [{table_calculation: average_screening_per_day, label: Average  screening  per
            day, expression: "${screening.unique_screenings}/30", value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number},
        {table_calculation: calculation_2, label: Calculation 2, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      hidden_fields: [screening.unique_screenings]
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.unique_screenings]
      filters:
        screening.screened_date: 60 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_2
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Average screenings
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [screening.unique_screenings, q1_screening.unique_screenings, q2_screening.unique_screenings,
      previous_30_days, average_previous_30_days, calculation_2]
    dynamic_fields: [{category: table_calculation, expression: "${screening.unique_screenings}-${q1_screening.unique_screenings}",
        label: Previous  30 days, value_format: ">9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: previous_30_days,
        _type_hint: number}, {category: table_calculation, expression: "${previous_30_days}/30",
        label: Average  previous  30 days, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_previous_30_days, _type_hint: number},
      {category: table_calculation, expression: "${average_screening_per_day}-${average_previous_30_days}",
        label: Average Synced per day, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: average_synced_per_day,
        _type_hint: number}]
    listen:
    - 'Community  Hud ': screening.citizen_hud_name
      'Community District ': screening.citizen_district_name
      Community  Block: screening.citizen_block_name
      'Community Village ': screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      'Institution District ': screening.user_district_name
      Institution Hud: screening.user_hud_name
      'Institution Block ': screening.user_block_name
      Institution Role: screening.role_name
    - 'Community  Hud ': screening.citizen_hud_name
      'Community District ': screening.citizen_district_name
      Community  Block: screening.citizen_block_name
      'Community Village ': screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      'Institution District ': screening.user_district_name
      Institution Hud: screening.user_hud_name
      'Institution Block ': screening.user_block_name
      Institution Role: screening.role_name
    row: 8
    col: 16
    width: 5
    height: 3
  - name: family screening  24 hours
    title: family screening  24 hours
    merged_queries:
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families]
      filters:
        family.family_created_date: 24 hours
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families]
      filters:
        family.family_created_date: 48 hours ago for 24 hours
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [q1_family.total_families, calculation_1]
    sorts: [q1_family.total_families desc]
    dynamic_fields: [{category: table_calculation, expression: "${family.total_families}-${q1_family.total_families}",
        label: 'Last 24 hours ', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: last_24_hours, _type_hint: number}]
    listen:
    - 'Community  Hud ': family.family_hud_name
      'Community District ': family.family_district_name
      Community  Block: family.family_block_name
      'Community Village ': family.family_village_name
      Institution Directorate: family.user_directorate
      Institution Role: family.user_role
    - 'Community  Hud ': family.family_hud_name
      'Community District ': family.family_district_name
      Community  Block: family.family_block_name
      'Community Village ': family.family_village_name
      Institution Directorate: family.user_directorate
      Institution Role: family.user_role
    row: 11
    col: 6
    width: 5
    height: 3
  - name: Families Screening  last 30 days
    title: Families Screening  last 30 days
    merged_queries:
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families]
      filters:
        family.family_created_date: 30 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families]
      filters:
        family.family_created_date: 60 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [q1_family.total_families, 30_days_screening, calculation_1]
    dynamic_fields: [{category: table_calculation, expression: "${family.total_families}-${q1_family.total_families}",
        label: '30 days screening ', value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: 30_days_screening,
        _type_hint: number}, {category: table_calculation, expression: "${family.total_families}-${30_days_screening}",
        label: Last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_30_days,
        _type_hint: number}]
    listen:
    - 'Community  Hud ': family.family_hud_name
      'Community District ': family.family_district_name
      Community  Block: family.family_block_name
      'Community Village ': family.family_village_name
      Institution Directorate: family.user_directorate
      Institution Role: family.user_role
    - 'Community  Hud ': family.family_hud_name
      'Community District ': family.family_district_name
      Community  Block: family.family_block_name
      'Community Village ': family.family_village_name
      Institution Directorate: family.user_directorate
      Institution Role: family.user_role
    row: 11
    col: 11
    width: 5
    height: 3
  - name: synced in past 30 days
    title: synced in past 30 days
    merged_queries:
    - model: tnphr-prod-kpi
      explore: user
      type: single_value
      fields: [user.count]
      filters:
        user.user_last_sync_month: 30 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
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
    - model: tnphr-prod-kpi
      explore: user
      type: table
      fields: [user.count]
      filters:
        user.user_last_sync_month: 60 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [q1_user.count, previous_30_days, calculation_1]
    dynamic_fields: [{category: table_calculation, expression: "${user.count}-${q1_user.count}",
        label: Previous  30 days, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: previous_30_days, _type_hint: number},
      {category: table_calculation, expression: "${user.count}+${previous_30_days}",
        label: Last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_30_days,
        _type_hint: number}]
    listen:
    - Institution Directorate: user.user_directorate
      'Institution District ': user.user_district_name
      Institution Hud: user.user_hud_name
      'Institution Block ': user.user_block_name
      Institution Role: user.user_role_name
    - Institution Directorate: user.user_directorate
      'Institution District ': user.user_district_name
      Institution Hud: user.user_hud_name
      'Institution Block ': user.user_block_name
      Institution Role: user.user_role_name
    row: 5
    col: 11
    width: 5
    height: 3
  - name: Average  synced per day
    title: Average  synced per day
    merged_queries:
    - model: tnphr-prod-kpi
      explore: user
      type: single_value
      fields: [user.count]
      filters:
        user.user_last_sync_month: 30 days
      limit: 500
      dynamic_fields: [{table_calculation: average_of_last_30_days, label: Average
            of last 30 days, expression: "${user.count}/30", value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number},
        {table_calculation: calculation_2, label: Calculation 2, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
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
    - model: tnphr-prod-kpi
      explore: user
      type: table
      fields: [user.count]
      filters:
        user.user_last_sync_month: 60 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_2
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Average users synched
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [q1_user.count, user.count, previous_30_days]
    dynamic_fields: [{category: table_calculation, expression: "${user.count}-${q1_user.count}",
        label: Previous  30 days, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: previous_30_days, _type_hint: number},
      {category: table_calculation, expression: "${previous_30_days}/30", label: Average  previous  30
          days, value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        table_calculation: average_previous_30_days, _type_hint: number}]
    listen:
    - Institution Directorate: user.user_directorate
      'Institution District ': user.user_district_name
      Institution Hud: user.user_hud_name
      'Institution Block ': user.user_block_name
      Institution Role: user.user_role_name
    - Institution Directorate: user.user_directorate
      'Institution District ': user.user_district_name
      Institution Hud: user.user_hud_name
      'Institution Block ': user.user_block_name
      Institution Role: user.user_role_name
    row: 5
    col: 16
    width: 5
    height: 3
  - name: Average family screening
    title: Average family screening
    merged_queries:
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families]
      filters:
        family.family_created_date: 30 days
      limit: 500
      dynamic_fields: [{table_calculation: average_of_30_days, label: Average  of
            30 days, expression: "${family.total_families}/30", value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number},
        {table_calculation: calculation_2, label: Calculation 2, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families]
      filters:
        family.family_created_date: 60 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_2
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Average family screenings
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [q1_family.total_families, 30_days_screening, last_30_days, family.total_families,
      average_previous_30_days, calculation_2]
    dynamic_fields: [{category: table_calculation, expression: "${family.total_families}-${q1_family.total_families}",
        label: '30 days screening ', value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: 30_days_screening,
        _type_hint: number}, {category: table_calculation, expression: "${family.total_families}-${30_days_screening}",
        label: Last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_30_days,
        _type_hint: number}, {category: table_calculation, expression: "${last_30_days}/30",
        label: Average  previous  30 days, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_previous_30_days, _type_hint: number},
      {category: table_calculation, expression: "${average_of_30_days}-${average_previous_30_days}",
        label: Average Synced per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_synced_per_day, _type_hint: number}]
    listen:
    - 'Community  Hud ': family.family_hud_name
      'Community District ': family.family_district_name
      Community  Block: family.family_block_name
      'Community Village ': family.family_village_name
      Institution Directorate: family.user_directorate
      Institution Role: family.user_role
    - 'Community  Hud ': family.family_hud_name
      'Community District ': family.family_district_name
      Community  Block: family.family_block_name
      'Community Village ': family.family_village_name
      Institution Directorate: family.user_directorate
      Institution Role: family.user_role
    row: 11
    col: 16
    width: 5
    height: 3
  - name: Drugs delivered last 24 Hours
    title: Drugs delivered last 24 Hours
    merged_queries:
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.total_drugs_issued_24_hours]
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.total_drugs_issued]
      filters:
        drugs.citizen_screened_date: 48 hours
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [drugs.total_drugs_issued]
    dynamic_fields: [{category: table_calculation, expression: "${drugs.total_drugs_issued}-${drugs.total_drugs_issued_24_hours}",
        label: 'Last 24 hours ', value_format: !!null '', value_format_name: '', _kind_hint: measure,
        table_calculation: last_24_hours_1, _type_hint: number}]
    listen:
    - 'Community  Hud ': drugs.citizen_hud_name
      'Community District ': drugs.citizen_district_name
      Community  Block: drugs.citizen_block_name
      'Community Village ': drugs.citizen_village_name
      Institution Directorate: drugs.user_directorate
      'Institution District ': drugs.user_district_name
      Institution Hud: drugs.user_hud_name
      'Institution Block ': drugs.user_block_name
      Institution Role: drugs.role_name
    - 'Community  Hud ': drugs.citizen_hud_name
      'Community District ': drugs.citizen_district_name
      Community  Block: drugs.citizen_block_name
      'Community Village ': drugs.citizen_village_name
      Institution Directorate: drugs.user_directorate
      'Institution District ': drugs.user_district_name
      Institution Hud: drugs.user_hud_name
      'Institution Block ': drugs.user_block_name
      Institution Role: drugs.role_name
    row: 14
    col: 6
    width: 5
    height: 3
  - name: Drugs delivered last 30 days
    title: Drugs delivered last 30 days
    merged_queries:
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.total_drugs_issued_30_days]
      limit: 5000
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.total_drugs_issued]
      filters:
        drugs.citizen_screened_date: 60 hours
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [drugs.total_drugs_issued, calculation_1]
    dynamic_fields: [{category: table_calculation, expression: "${drugs.total_drugs_issued}-${drugs.total_drugs_issued_30_days}",
        label: Last 30 days, value_format: !!null '', value_format_name: '', _kind_hint: measure,
        table_calculation: last_30_days_1, _type_hint: number}]
    listen:
    - 'Community  Hud ': drugs.citizen_hud_name
      'Community District ': drugs.citizen_district_name
      Community  Block: drugs.citizen_block_name
      'Community Village ': drugs.citizen_village_name
      Institution Directorate: drugs.user_directorate
      'Institution District ': drugs.user_district_name
      Institution Hud: drugs.user_hud_name
      'Institution Block ': drugs.user_block_name
      Institution Role: drugs.role_name
    - 'Community  Hud ': drugs.citizen_hud_name
      'Community District ': drugs.citizen_district_name
      Community  Block: drugs.citizen_block_name
      'Community Village ': drugs.citizen_village_name
      Institution Directorate: drugs.user_directorate
      'Institution District ': drugs.user_district_name
      Institution Hud: drugs.user_hud_name
      'Institution Block ': drugs.user_block_name
      Institution Role: drugs.role_name
    row: 14
    col: 11
    width: 5
    height: 3
  - name: Average drugs delivered
    title: Average drugs delivered
    merged_queries:
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.total_drugs_issued_30_days]
      limit: 500
      dynamic_fields: [{table_calculation: average_of_last_30_days, label: Average  of
            last 30 days, expression: "${drugs.total_drugs_issued_30_days}/30", value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number},
        {table_calculation: calculation_2, label: Calculation 2, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.total_drugs_issued, drugs.total_drugs_issued_30_days]
      filters:
        drugs.citizen_screened_date: 60 days
      limit: 500
      dynamic_fields: [{table_calculation: average_of_previous_30_days, label: Average  of
            Previous  30 days, expression: "${calculation_2}/30", value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number},
        {table_calculation: calculation_2, label: Calculation 2, expression: "${drugs.total_drugs_issued}-${drugs.total_drugs_issued_30_days}",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: calculation_3, label: Calculation
            3, expression: '""', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: string}]
      hidden_fields: [drugs.total_drugs_issued, calculation_2, drugs.total_drugs_issued_30_days]
      join_fields:
      - field_name: calculation_3
        source_field_name: calculation_2
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [drugs.total_drugs_issued, drugs.total_drugs_issued_30_days, average_of_previous_30_days,
      calculation_2, q1_drugs.total_drugs_issued_30_days, q1_calculation_2]
    dynamic_fields: [{category: table_calculation, expression: "${average_of_last_30_days}-${average_of_previous_30_days}",
        label: Average drugs delivered, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_drugs_delivered, _type_hint: number}]
    listen:
    - 'Community  Hud ': drugs.citizen_hud_name
      'Community District ': drugs.citizen_district_name
      Community  Block: drugs.citizen_block_name
      'Community Village ': drugs.citizen_village_name
      Institution Directorate: drugs.user_directorate
      'Institution District ': drugs.user_district_name
      Institution Hud: drugs.user_hud_name
      'Institution Block ': drugs.user_block_name
      Institution Role: drugs.role_name
    - 'Community  Hud ': drugs.citizen_hud_name
      'Community District ': drugs.citizen_district_name
      Community  Block: drugs.citizen_block_name
      'Community Village ': drugs.citizen_village_name
      Institution Directorate: drugs.user_directorate
      'Institution District ': drugs.user_district_name
      Institution Hud: drugs.user_hud_name
      'Institution Block ': drugs.user_block_name
      Institution Role: drugs.role_name
    row: 14
    col: 16
    width: 5
    height: 3
  - name: "<H3> User Synced</H3>"
    type: text
    title_text: "<H3> User Synced</H3>"
    subtitle_text: ''
    body_text: <body bgcolor="#a4bced"> </body>
    row: 5
    col: 21
    width: 3
    height: 3
  - name: "<H3>Family <br> Screenings</H3>"
    type: text
    title_text: "<H3>Family <br> Screenings</H3>"
    subtitle_text: ''
    body_text: ''
    row: 11
    col: 21
    width: 3
    height: 3
  - name: "<H3>Drug Delivery</H3>"
    type: text
    title_text: "<H3>Drug Delivery</H3>"
    subtitle_text: ''
    body_text: ''
    row: 14
    col: 21
    width: 3
    height: 3
  - name: "<H3>Individual <br> Screenings</H3>"
    type: text
    title_text: "<H3>Individual <br> Screenings</H3>"
    subtitle_text: ''
    body_text: ''
    row: 8
    col: 21
    width: 3
    height: 3
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |
      <center>
      <img src="https://devadmin.tnphr.in/assets/images/DPHLogo.png" width="90" height="90" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/NHMLogo.png" width="90" height="90" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://devadmin.tnphr.in/assets/images/TamilNadu_Logo.png" width="90" height="90" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/UHC_Logo.png" width="90" height="90" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/MTM_logo.png" width="90" height="90" /></center>
      <br>
      <center>User Performance - Used to understand the performance of users in TN</center>
    row: 0
    col: 0
    width: 24
    height: 5
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: user
      type: table
      fields: [user.synced_last_more_than_48_hrs, user.user_district_name, user.synced_in_less_than_48_hours,
        user.synced_last_24_hours, user.user_district_gid]
      sorts: [user.synced_last_more_than_48_hrs desc]
      limit: 500
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.Individual_screenings_last_24_hours, screening.Individual_screenings_last_30_days,
        screening.user_district_name]
      sorts: [screening.Individual_screenings_last_24_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: average_screening, label: Average Screening,
          expression: "${screening.Individual_screenings_last_30_days}/30", value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
      join_fields:
      - field_name: screening.user_district_name
        source_field_name: user.user_district_name
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families_24_hrs, family.total_families_30_days, family.Average_total_families_30_days,
        family.family_district_name]
      sorts: [family.total_families_24_hrs desc]
      limit: 500
      join_fields:
      - field_name: family.family_district_name
        source_field_name: user.user_district_name
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.total_drugs_issued_24_hours, drugs.total_drugs_issued_30_days,
        drugs.citizen_district_name]
      sorts: [drugs.total_drugs_issued_24_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: average_drugs_delivered, label: Average
            drugs Delivered, expression: "${drugs.total_drugs_issued_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: drugs.citizen_district_name
        source_field_name: user.user_district_name
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
      user.user_district_gid: left
      user.user_district_name: left
    column_order: ["$$$_row_numbers_$$$", user.user_district_name, user.user_district_gid,
      user.synced_last_24_hours, user.synced_last_more_than_48_hrs, user.synced_in_less_than_48_hours,
      screening_individual_24_hrs, screening_individual_30_days, average_screening_1,
      screening_family_24_hrs, screening_family_30_days, average_family_screening,
      drugs_count_24_hours, drugs_count_last_30_days, average_drugs_delivered_1]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      user.synced_last_24_hours: Synced In Last 24 Hours
      user.synced_last_24_48_hrs: User Synced < 48 hours
      user.synced_last_more_than_48_hrs: User Synced > 48 hours
      user.synced_last_no_sync: Not synced > 48 hours
      screening.Individual_screenings_last_24_hours: Screening Individual 24 Hrs
      screening.Individual_screenings_last_30_days: Screening Individual 30 Days
      screening.Avergae_Individual_screenings_last_30_days: Average Screening
      family.total_families_24_hrs: Screening Family 24 Hrs
      family.total_families_30_days: Screening Family 30 days
      family.Average_total_families_30_days: Average Family Screening
      drugs.total_drugs_issued_24_hours: Drugs Count 24 Hours
      drugs.total_drugs_issued_30_days: Drugs Count Last 30 Days
      drugs.Avergae_Drugs_delivered_last_30_days: Average drugs Delivered
      user.synced_in_less_than_48_hours: User Synced <48 hours
      user.user_district_name: Institution District
      user.user_district_gid: Institution District Gid
    series_column_widths:
      drugs.total_drugs_issued_30_days: 183
      drugs.total_drugs_issued_24_hours: 167
      user.synced_in_less_than_48_hours: 181
      user.synced_last_more_than_48_hrs: 151
      user.synced_last_24_hours: 149
      users_not_synced_more_than_48_hours: 195
      screening.Individual_screenings_last_24_hours: 212
      screening.Individual_screenings_last_30_days: 211
      average_screening: 146
      family.total_families_24_hrs: 158
      family.total_families_30_days: 176
      family.Average_total_families_30_days: 187
      average_drugs_delivered: 144
      user.user_district_name: 175
    series_cell_visualizations:
      user.synced_last_24_48_hrs:
        is_active: false
    series_text_format:
      user.synced_last_24_hours:
        align: center
      user.synced_last_24_48_hrs:
        align: center
      user.synced_last_more_than_48_hrs:
        align: center
      user.synced_last_no_sync:
        align: center
      screening.Individual_screenings_last_24_hours:
        align: center
      screening.Individual_screenings_last_30_days:
        align: center
      screening.Avergae_Individual_screenings_last_30_days:
        align: center
      family.total_families_24_hrs:
        align: center
      family.total_families_30_days:
        align: center
      family.Average_total_families_30_days:
        align: center
      user.synced_in_less_than_48_hours:
        align: center
      average_screening:
        align: center
      drugs.total_drugs_issued_24_hours:
        align: center
      drugs.total_drugs_issued_30_days:
        align: center
      average_drugs_delivered:
        align: center
      users_not_synced_more_than_48_hours:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffdf6"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
        label: User Synced Last More Than 48 Hrs
        label_from_parameter:
        label_short: Synced Last More Than 48 Hrs
        map_layer:
        name: user.synced_last_more_than_48_hrs
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Synced Last More Than 48 Hrs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.synced_last_more_than_48_hrs
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=160"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_count "
        sql_case:
        filters:
        - field: user.user_last_sync_date
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
        label: User Synced In Less Than 48 Hours
        label_from_parameter:
        label_short: Synced In Less Than 48 Hours
        map_layer:
        name: user.synced_in_less_than_48_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Synced In Less Than 48 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.synced_in_less_than_48_hours
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=148"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_count "
        sql_case:
        filters:
        - field: user.user_last_sync_date
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
        label: User Synced Last 24 Hours
        label_from_parameter:
        label_short: Synced Last 24 Hours
        map_layer:
        name: user.synced_last_24_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Synced Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.synced_last_24_hours
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=142"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_count "
        sql_case:
        filters:
        - field: user.user_last_sync_date
          condition: last 24 hours
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
        label: screening Unique Screenings 24 hours
        label_from_parameter:
        label_short: Unique Screenings 24 hours
        map_layer:
        name: screening.Individual_screenings_last_24_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Unique Screenings 24 hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Individual_screenings_last_24_hours
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=423"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.screened_date
          condition: 24 hours
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: screening Unique Screenings 30 days
        label_from_parameter:
        label_short: Unique Screenings 30 days
        map_layer:
        name: screening.Individual_screenings_last_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Unique Screenings 30 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Individual_screenings_last_30_days
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=432"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.screened_date
          condition: 30 days
        - field: screening.is_citizen_screened
          condition: new screening
        times_used: 0
        aggregate: true
        sorted:
          desc: true
          sort_index: 0
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
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Family Total Families 24 Hrs
        label_from_parameter:
        label_short: Total Families 24 Hrs
        map_layer:
        name: family.total_families_24_hrs
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Total Families 24 Hrs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.total_families_24_hrs
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=201"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
        sql_case:
        filters:
        - field: family.family_created_date
          condition: 24 hours
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
        label: Family Total Families 30 Days
        label_from_parameter:
        label_short: Total Families 30 Days
        map_layer:
        name: family.total_families_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Total Families 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.total_families_30_days
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=208"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
        sql_case:
        filters:
        - field: family.family_created_date
          condition: 30 days
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
        label: Family Average Total Families 30 Days
        label_from_parameter:
        label_short: Average Total Families 30 Days
        map_layer:
        name: family.Average_total_families_30_days
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
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Average Total Families 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.Average_total_families_30_days
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=215"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${total_families_30_days}/30 "
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
        label: drugs Total drugs issued 24 hours
        label_from_parameter:
        label_short: Total drugs issued 24 hours
        map_layer:
        name: drugs.total_drugs_issued_24_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: drugs
        view_label: drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Total drugs issued 24 hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.total_drugs_issued_24_hours
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=210"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
        - field: drugs.citizen_screened_date
          condition: 1 days ago for 1 days
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
        label: drugs Total drugs issued 30 days
        label_from_parameter:
        label_short: Total drugs issued 30 days
        map_layer:
        name: drugs.total_drugs_issued_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: drugs
        view_label: drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Total drugs issued 30 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.total_drugs_issued_30_days
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=218"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
        - field: drugs.citizen_screened_date
          condition: 30 days ago for 30 days
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: average_drugs_delivered
        label: Average drugs Delivered
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
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: User User District Name
        label_from_parameter:
        label_short: User District Name
        map_layer:
        name: user.user_district_name
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
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: User District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.user_district_name
        suggest_explore: user
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=57"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_district_name "
        sql_case:
        filters:
        times_used: 0
      - align: right
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
        is_numeric: true
        label: User User District Gid
        label_from_parameter:
        label_short: User District Gid
        map_layer:
        name: user.user_district_gid
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: '0'
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: User District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.user_district_gid
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=51"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_district_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Screening Individual 24 Hrs
        name: screening_individual_24_hrs
        expression: |2-

          if(${screening.Individual_screenings_last_24_hours}>0,${screening.Individual_screenings_last_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Screening Individual 30 Days
        name: screening_individual_30_days
        expression: if(${screening.Individual_screenings_last_30_days}>0,${screening.Individual_screenings_last_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: 'Average Screening '
        name: average_screening_1
        expression: if(${average_screening}>0,${average_screening},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0.00"
        is_numeric: true
      - label: Screening Family 24 Hrs
        name: screening_family_24_hrs
        expression: if(${family.total_families_24_hrs}>0,${family.total_families_24_hrs},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Screening Family 30 days
        name: screening_family_30_days
        expression: if(${family.total_families_30_days}>0,${family.total_families_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Average Family Screening
        name: average_family_screening
        expression: if(${family.Average_total_families_30_days}>0,${family.Average_total_families_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0.00"
        is_numeric: true
      - label: Drugs Count 24 Hours
        name: drugs_count_24_hours
        expression: if(${drugs.total_drugs_issued_24_hours}>0,${drugs.total_drugs_issued_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Drugs Count last 30 days
        name: drugs_count_last_30_days
        expression: if(${drugs.total_drugs_issued_30_days}>0,${drugs.total_drugs_issued_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Average drugs delivered
        name: average_drugs_delivered_1
        expression: if(${average_drugs_delivered}>0,${average_drugs_delivered},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0.00"
        is_numeric: true
      pivots: []
    hidden_fields: [user.count, q4_user.synced_last_more_than_48_hrs, screening.Individual_screenings_last_24_hours,
      screening.Individual_screenings_last_30_days, average_screening, family.total_families_24_hrs,
      family.total_families_30_days, family.Average_total_families_30_days, drugs.total_drugs_issued_24_hours,
      drugs.total_drugs_issued_30_days, average_drugs_delivered]
    sorts: [screening.Individual_screenings_last_30_days desc]
    dynamic_fields: [{category: table_calculation, expression: "\nif(${screening.Individual_screenings_last_24_hours}>0,${screening.Individual_screenings_last_24_hours},0)",
        label: Screening Individual 24 Hrs, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_individual_24_hrs, _type_hint: number},
      {category: table_calculation, expression: 'if(${screening.Individual_screenings_last_30_days}>0,${screening.Individual_screenings_last_30_days},0)',
        label: Screening Individual 30 Days, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_individual_30_days, _type_hint: number},
      {category: table_calculation, expression: 'if(${average_screening}>0,${average_screening},0)',
        label: 'Average Screening ', value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_screening_1, _type_hint: number},
      {category: table_calculation, expression: 'if(${family.total_families_24_hrs}>0,${family.total_families_24_hrs},0)',
        label: Screening Family 24 Hrs, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_family_24_hrs, _type_hint: number},
      {category: table_calculation, expression: 'if(${family.total_families_30_days}>0,${family.total_families_30_days},0)',
        label: Screening Family 30 days, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_family_30_days, _type_hint: number},
      {category: table_calculation, expression: 'if(${family.Average_total_families_30_days}>0,${family.Average_total_families_30_days},0)',
        label: Average Family Screening, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_family_screening, _type_hint: number},
      {category: table_calculation, expression: 'if(${drugs.total_drugs_issued_24_hours}>0,${drugs.total_drugs_issued_24_hours},0)',
        label: Drugs Count 24 Hours, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: drugs_count_24_hours, _type_hint: number},
      {category: table_calculation, expression: 'if(${drugs.total_drugs_issued_30_days}>0,${drugs.total_drugs_issued_30_days},0)',
        label: Drugs Count last 30 days, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: drugs_count_last_30_days, _type_hint: number},
      {category: table_calculation, expression: 'if(${average_drugs_delivered}>0,${average_drugs_delivered},0)',
        label: Average drugs delivered, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_drugs_delivered_1, _type_hint: number}]
    listen:
    - Institution Directorate: user.user_directorate
      'Institution District ': user.user_district_name
      Institution Hud: user.user_hud_name
      'Institution Block ': user.user_block_name
      Institution Role: user.user_role_name
    - 'Community  Hud ': screening.citizen_hud_name
      'Community District ': screening.citizen_district_name
      Community  Block: screening.citizen_block_name
      'Community Village ': screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      'Institution District ': screening.user_district_name
      Institution Hud: screening.user_hud_name
      'Institution Block ': screening.user_block_name
      Institution Role: screening.role_name
    - 'Community  Hud ': family.family_hud_name
      'Community District ': family.family_district_name
      Community  Block: family.family_block_name
      'Community Village ': family.family_village_name
      Institution Directorate: family.user_directorate
      Institution Role: family.user_role
    - 'Community  Hud ': drugs.citizen_hud_name
      'Community District ': drugs.user_district_name
      Community  Block: drugs.citizen_block_name
      'Community Village ': drugs.citizen_village_name
      Institution Directorate: drugs.user_directorate
      'Institution District ': drugs.user_district_name
      Institution Hud: drugs.user_hud_name
      'Institution Block ': drugs.user_block_name
      Institution Role: drugs.role_name
    row: 17
    col: 0
    width: 24
    height: 9
  - name: Hud Wise
    title: Hud Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: user
      type: table
      fields: [user.synced_last_more_than_48_hrs, user.synced_in_less_than_48_hours,
        user.synced_last_24_hours, user.user_hud_name, user.user_district_name, user.user_district_gid,
        user.user_hud_gid]
      sorts: [user.synced_last_more_than_48_hrs desc]
      limit: 500
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.Individual_screenings_last_24_hours, screening.Individual_screenings_last_30_days,
        screening.user_hud_name]
      sorts: [screening.Individual_screenings_last_24_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: average_screening, label: Average Screening,
          expression: "${screening.Individual_screenings_last_30_days}/30", value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
      join_fields:
      - field_name: screening.user_hud_name
        source_field_name: user.user_hud_name
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families_24_hrs, family.total_families_30_days, family.Average_total_families_30_days,
        family.family_hud_name]
      sorts: [family.total_families_24_hrs desc]
      limit: 500
      join_fields:
      - field_name: family.family_hud_name
        source_field_name: user.user_hud_name
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.total_drugs_issued_24_hours, drugs.total_drugs_issued_30_days,
        drugs.citizen_hud_name]
      sorts: [drugs.total_drugs_issued_24_hours desc]
      limit: 500
      dynamic_fields: [{table_calculation: average_drugs_delivered, label: Average
            drugs Delivered, expression: "${drugs.total_drugs_issued_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: drugs.citizen_hud_name
        source_field_name: user.user_hud_name
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
      user.user_district_name: left
      user.user_district_gid: left
      user.user_hud_name: left
    column_order: ["$$$_row_numbers_$$$", user.user_district_name, user.user_district_gid,
      user.user_hud_name, user.user_hud_gid, user.synced_last_24_hours, user.synced_last_more_than_48_hrs,
      user.synced_in_less_than_48_hours, screening_individual_24_hrs, screening_individual_30_days,
      average_screening_1, screening_family_24_hrs, screening_family_30_days, average_family_screening,
      drugs_count_24_hours, drugs_count_last_30_days, average_drugs_delivered_1]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      user.synced_last_24_hours: Synced In Last 24 Hours
      user.synced_last_24_48_hrs: User Synced < 48 hours
      user.synced_last_more_than_48_hrs: User Synced > 48 hours
      user.synced_last_no_sync: Not synced > 48 hours
      screening.Individual_screenings_last_24_hours: Screening Individual 24 Hrs
      screening.Individual_screenings_last_30_days: Screening Individual 30 Days
      screening.Avergae_Individual_screenings_last_30_days: Average Screening
      family.total_families_24_hrs: Screening Family 24 Hrs
      family.total_families_30_days: Screening Family 30 days
      family.Average_total_families_30_days: Average Family Screening
      drugs.total_drugs_issued_24_hours: Drugs Count 24 Hours
      drugs.total_drugs_issued_30_days: Drugs Count Last 30 Days
      drugs.Avergae_Drugs_delivered_last_30_days: Average drugs Delivered
      user.synced_in_less_than_48_hours: User Synced <48 hours
      user.user_district_name: Institution District
      user.user_hud_name: Institution Hud
      user.user_hud_gid: Institution Hud Gid
      user.user_district_gid: Institution District Gid
    series_column_widths:
      drugs.total_drugs_issued_30_days: 183
      drugs.total_drugs_issued_24_hours: 167
      user.synced_in_less_than_48_hours: 181
      user.synced_last_more_than_48_hrs: 151
      user.synced_last_24_hours: 149
      users_not_synced_more_than_48_hours: 195
      screening.Individual_screenings_last_24_hours: 212
      screening.Individual_screenings_last_30_days: 211
      average_screening: 146
      family.total_families_24_hrs: 158
      family.total_families_30_days: 176
      family.Average_total_families_30_days: 187
      average_drugs_delivered: 144
      user.user_district_name: 175
    series_cell_visualizations:
      user.synced_last_24_48_hrs:
        is_active: false
    series_text_format:
      user.synced_last_24_hours:
        align: center
      user.synced_last_24_48_hrs:
        align: center
      user.synced_last_more_than_48_hrs:
        align: center
      user.synced_last_no_sync:
        align: center
      screening.Individual_screenings_last_24_hours:
        align: center
      screening.Individual_screenings_last_30_days:
        align: center
      screening.Avergae_Individual_screenings_last_30_days:
        align: center
      family.total_families_24_hrs:
        align: center
      family.total_families_30_days:
        align: center
      family.Average_total_families_30_days:
        align: center
      user.synced_in_less_than_48_hours:
        align: center
      average_screening:
        align: center
      drugs.total_drugs_issued_24_hours:
        align: center
      drugs.total_drugs_issued_30_days:
        align: center
      average_drugs_delivered:
        align: center
      users_not_synced_more_than_48_hours:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffdf6"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
        label: User Synced Last More Than 48 Hrs
        label_from_parameter:
        label_short: Synced Last More Than 48 Hrs
        map_layer:
        name: user.synced_last_more_than_48_hrs
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Synced Last More Than 48 Hrs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.synced_last_more_than_48_hrs
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=160"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_count "
        sql_case:
        filters:
        - field: user.user_last_sync_date
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
        label: User Synced In Less Than 48 Hours
        label_from_parameter:
        label_short: Synced In Less Than 48 Hours
        map_layer:
        name: user.synced_in_less_than_48_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Synced In Less Than 48 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.synced_in_less_than_48_hours
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=148"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_count "
        sql_case:
        filters:
        - field: user.user_last_sync_date
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
        label: User Synced Last 24 Hours
        label_from_parameter:
        label_short: Synced Last 24 Hours
        map_layer:
        name: user.synced_last_24_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Synced Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.synced_last_24_hours
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=142"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_count "
        sql_case:
        filters:
        - field: user.user_last_sync_date
          condition: last 24 hours
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
        label: screening Unique Screenings 24 hours
        label_from_parameter:
        label_short: Unique Screenings 24 hours
        map_layer:
        name: screening.Individual_screenings_last_24_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Unique Screenings 24 hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Individual_screenings_last_24_hours
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=423"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.screened_date
          condition: 24 hours
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: screening Unique Screenings 30 days
        label_from_parameter:
        label_short: Unique Screenings 30 days
        map_layer:
        name: screening.Individual_screenings_last_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Unique Screenings 30 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Individual_screenings_last_30_days
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=432"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.screened_date
          condition: 30 days
        - field: screening.is_citizen_screened
          condition: new screening
        times_used: 0
        aggregate: true
        sorted:
          desc: true
          sort_index: 0
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
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Family Total Families 24 Hrs
        label_from_parameter:
        label_short: Total Families 24 Hrs
        map_layer:
        name: family.total_families_24_hrs
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Total Families 24 Hrs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.total_families_24_hrs
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=201"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
        sql_case:
        filters:
        - field: family.family_created_date
          condition: 24 hours
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
        label: Family Total Families 30 Days
        label_from_parameter:
        label_short: Total Families 30 Days
        map_layer:
        name: family.total_families_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Total Families 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.total_families_30_days
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=208"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
        sql_case:
        filters:
        - field: family.family_created_date
          condition: 30 days
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
        label: Family Average Total Families 30 Days
        label_from_parameter:
        label_short: Average Total Families 30 Days
        map_layer:
        name: family.Average_total_families_30_days
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
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Average Total Families 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.Average_total_families_30_days
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=215"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${total_families_30_days}/30 "
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
        label: drugs Total drugs issued 24 hours
        label_from_parameter:
        label_short: Total drugs issued 24 hours
        map_layer:
        name: drugs.total_drugs_issued_24_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: drugs
        view_label: drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Total drugs issued 24 hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.total_drugs_issued_24_hours
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=210"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
        - field: drugs.citizen_screened_date
          condition: 1 days ago for 1 days
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
        label: drugs Total drugs issued 30 days
        label_from_parameter:
        label_short: Total drugs issued 30 days
        map_layer:
        name: drugs.total_drugs_issued_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: drugs
        view_label: drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Total drugs issued 30 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.total_drugs_issued_30_days
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=218"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
        - field: drugs.citizen_screened_date
          condition: 30 days ago for 30 days
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: average_drugs_delivered
        label: Average drugs Delivered
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
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: User User Hud Name
        label_from_parameter:
        label_short: User Hud Name
        map_layer:
        name: user.user_hud_name
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
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: User Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.user_hud_name
        suggest_explore: user
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=84"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_hud_name "
        sql_case:
        filters:
        times_used: 0
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
        label: User User District Name
        label_from_parameter:
        label_short: User District Name
        map_layer:
        name: user.user_district_name
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
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: User District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.user_district_name
        suggest_explore: user
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=57"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_district_name "
        sql_case:
        filters:
        times_used: 0
      - align: right
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
        is_numeric: true
        label: User User District Gid
        label_from_parameter:
        label_short: User District Gid
        map_layer:
        name: user.user_district_gid
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: '0'
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: User District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.user_district_gid
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=51"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_district_gid "
        sql_case:
        filters:
        times_used: 0
      - align: right
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
        is_numeric: true
        label: User User Hud Gid
        label_from_parameter:
        label_short: User Hud Gid
        map_layer:
        name: user.user_hud_gid
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: '0'
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: User Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.user_hud_gid
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=78"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_hud_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Screening Individual 24 Hrs
        name: screening_individual_24_hrs
        expression: |2-

          if(${screening.Individual_screenings_last_24_hours}>0,${screening.Individual_screenings_last_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Screening Individual 30 Days
        name: screening_individual_30_days
        expression: if(${screening.Individual_screenings_last_30_days}>0,${screening.Individual_screenings_last_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: 'Average Screening '
        name: average_screening_1
        expression: if(${average_screening}>0,${average_screening},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0.00"
        is_numeric: true
      - label: Screening Family 24 Hrs
        name: screening_family_24_hrs
        expression: if(${family.total_families_24_hrs}>0,${family.total_families_24_hrs},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Screening Family 30 days
        name: screening_family_30_days
        expression: if(${family.total_families_30_days}>0,${family.total_families_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Average Family Screening
        name: average_family_screening
        expression: if(${family.Average_total_families_30_days}>0,${family.Average_total_families_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0.00"
        is_numeric: true
      - label: Drugs Count 24 Hours
        name: drugs_count_24_hours
        expression: if(${drugs.total_drugs_issued_24_hours}>0,${drugs.total_drugs_issued_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Drugs Count last 30 days
        name: drugs_count_last_30_days
        expression: if(${drugs.total_drugs_issued_30_days}>0,${drugs.total_drugs_issued_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Average drugs delivered
        name: average_drugs_delivered_1
        expression: if(${average_drugs_delivered}>0,${average_drugs_delivered},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0.00"
        is_numeric: true
      pivots: []
    hidden_fields: [user.count, q4_user.synced_last_more_than_48_hrs, screening.Individual_screenings_last_24_hours,
      screening.Individual_screenings_last_30_days, average_screening, family.total_families_24_hrs,
      family.total_families_30_days, family.Average_total_families_30_days, drugs.total_drugs_issued_24_hours,
      drugs.total_drugs_issued_30_days, average_drugs_delivered]
    sorts: [screening.Individual_screenings_last_30_days desc]
    dynamic_fields: [{category: table_calculation, expression: "\nif(${screening.Individual_screenings_last_24_hours}>0,${screening.Individual_screenings_last_24_hours},0)",
        label: Screening Individual 24 Hrs, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_individual_24_hrs, _type_hint: number},
      {category: table_calculation, expression: 'if(${screening.Individual_screenings_last_30_days}>0,${screening.Individual_screenings_last_30_days},0)',
        label: Screening Individual 30 Days, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_individual_30_days, _type_hint: number},
      {category: table_calculation, expression: 'if(${average_screening}>0,${average_screening},0)',
        label: 'Average Screening ', value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_screening_1, _type_hint: number},
      {category: table_calculation, expression: 'if(${family.total_families_24_hrs}>0,${family.total_families_24_hrs},0)',
        label: Screening Family 24 Hrs, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_family_24_hrs, _type_hint: number},
      {category: table_calculation, expression: 'if(${family.total_families_30_days}>0,${family.total_families_30_days},0)',
        label: Screening Family 30 days, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_family_30_days, _type_hint: number},
      {category: table_calculation, expression: 'if(${family.Average_total_families_30_days}>0,${family.Average_total_families_30_days},0)',
        label: Average Family Screening, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_family_screening, _type_hint: number},
      {category: table_calculation, expression: 'if(${drugs.total_drugs_issued_24_hours}>0,${drugs.total_drugs_issued_24_hours},0)',
        label: Drugs Count 24 Hours, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: drugs_count_24_hours, _type_hint: number},
      {category: table_calculation, expression: 'if(${drugs.total_drugs_issued_30_days}>0,${drugs.total_drugs_issued_30_days},0)',
        label: Drugs Count last 30 days, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: drugs_count_last_30_days, _type_hint: number},
      {category: table_calculation, expression: 'if(${average_drugs_delivered}>0,${average_drugs_delivered},0)',
        label: Average drugs delivered, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_drugs_delivered_1, _type_hint: number}]
    listen:
    - Institution Directorate: user.user_directorate
      'Institution District ': user.user_district_name
      Institution Hud: user.user_hud_name
      'Institution Block ': user.user_block_name
      Institution Role: user.user_role_name
    - 'Community  Hud ': screening.citizen_hud_name
      'Community District ': screening.citizen_district_name
      Community  Block: screening.citizen_block_name
      'Community Village ': screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      'Institution District ': screening.user_district_name
      Institution Hud: screening.user_hud_name
      'Institution Block ': screening.user_block_name
      Institution Role: screening.role_name
    - 'Community  Hud ': family.family_hud_name
      'Community District ': family.family_district_name
      Community  Block: family.family_block_name
      'Community Village ': family.family_village_name
      Institution Directorate: family.user_directorate
      Institution Role: family.user_role
    - 'Community  Hud ': drugs.citizen_hud_name
      'Community District ': drugs.citizen_district_name
      Community  Block: drugs.citizen_block_name
      'Community Village ': drugs.citizen_village_name
      Institution Directorate: drugs.user_directorate
      'Institution District ': drugs.user_district_name
      Institution Hud: drugs.user_hud_name
      'Institution Block ': drugs.user_block_name
      Institution Role: drugs.role_name
    row: 26
    col: 0
    width: 24
    height: 8
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: user
      type: table
      fields: [user.synced_last_more_than_48_hrs, user.synced_in_less_than_48_hours,
        user.synced_last_24_hours, user.user_block_name, user.user_district_name,
        user.user_district_gid, user.user_block_gid, user.user_hud_name, user.user_hud_gid]
      sorts: [user.synced_last_more_than_48_hrs desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.Individual_screenings_last_24_hours, screening.Individual_screenings_last_30_days,
        screening.user_block_name]
      sorts: [screening.Individual_screenings_last_24_hours desc]
      limit: 5000
      dynamic_fields: [{table_calculation: average_screening, label: Average Screening,
          expression: "${screening.Individual_screenings_last_30_days}/30", value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
      join_fields:
      - field_name: screening.user_block_name
        source_field_name: user.user_block_name
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families_24_hrs, family.total_families_30_days, family.Average_total_families_30_days,
        family.family_block_name]
      sorts: [family.total_families_24_hrs desc]
      limit: 5000
      join_fields:
      - field_name: family.family_block_name
        source_field_name: user.user_block_name
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.total_drugs_issued_24_hours, drugs.total_drugs_issued_30_days,
        drugs.citizen_block_name]
      sorts: [drugs.total_drugs_issued_24_hours desc]
      limit: 5000
      dynamic_fields: [{table_calculation: average_drugs_delivered, label: Average
            drugs Delivered, expression: "${drugs.total_drugs_issued_30_days}/30",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: drugs.citizen_block_name
        source_field_name: user.user_block_name
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
      user.user_district_name: left
      user.user_district_gid: left
      user.user_hud_name: left
      user.user_hud_gid: left
      user.user_block_gid: left
      user.user_block_name: left
    column_order: ["$$$_row_numbers_$$$", user.user_district_name, user.user_district_gid,
      user.user_hud_name, user.user_hud_gid, user.user_block_name, user.user_block_gid,
      user.synced_last_24_hours, user.synced_last_more_than_48_hrs, user.synced_in_less_than_48_hours,
      screening_individual_24_hrs, screening_individual_30_days, average_screening_1,
      screening_family_24_hrs, screening_family_30_days, average_family_screening,
      drugs_count_24_hours, drugs_count_last_30_days, average_drugs_delivered_1]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      user.synced_last_24_hours: Synced In Last 24 Hours
      user.synced_last_24_48_hrs: User Synced < 48 hours
      user.synced_last_more_than_48_hrs: User Synced > 48 hours
      user.synced_last_no_sync: Not synced > 48 hours
      screening.Individual_screenings_last_24_hours: Screening Individual 24 Hrs
      screening.Individual_screenings_last_30_days: Screening Individual 30 Days
      screening.Avergae_Individual_screenings_last_30_days: Average Screening
      family.total_families_24_hrs: Screening Family 24 Hrs
      family.total_families_30_days: Screening Family 30 days
      family.Average_total_families_30_days: Average Family Screening
      drugs.total_drugs_issued_24_hours: Drugs Count 24 Hours
      drugs.total_drugs_issued_30_days: Drugs Count Last 30 Days
      drugs.Avergae_Drugs_delivered_last_30_days: Average drugs Delivered
      user.synced_in_less_than_48_hours: User Synced <48 hours
      user.user_district_name: Institution District
      user.user_block_name: Institution Block
      user.user_district_gid: Institution District Gid
      user.user_block_gid: Institution Block Gid
      user.user_hud_name: Institution Hud
      user.user_hud_gid: Institution Hud Gid
    series_column_widths:
      drugs.total_drugs_issued_30_days: 183
      drugs.total_drugs_issued_24_hours: 167
      user.synced_in_less_than_48_hours: 181
      user.synced_last_more_than_48_hrs: 151
      user.synced_last_24_hours: 149
      users_not_synced_more_than_48_hours: 195
      screening.Individual_screenings_last_24_hours: 212
      screening.Individual_screenings_last_30_days: 211
      average_screening: 146
      family.total_families_24_hrs: 158
      family.total_families_30_days: 176
      family.Average_total_families_30_days: 187
      average_drugs_delivered: 144
      user.user_district_name: 175
    series_cell_visualizations:
      user.synced_last_24_48_hrs:
        is_active: false
    series_text_format:
      user.synced_last_24_hours:
        align: center
      user.synced_last_24_48_hrs:
        align: center
      user.synced_last_more_than_48_hrs:
        align: center
      user.synced_last_no_sync:
        align: center
      screening.Individual_screenings_last_24_hours:
        align: center
      screening.Individual_screenings_last_30_days:
        align: center
      screening.Avergae_Individual_screenings_last_30_days:
        align: center
      family.total_families_24_hrs:
        align: center
      family.total_families_30_days:
        align: center
      family.Average_total_families_30_days:
        align: center
      user.synced_in_less_than_48_hours:
        align: center
      average_screening:
        align: center
      drugs.total_drugs_issued_24_hours:
        align: center
      drugs.total_drugs_issued_30_days:
        align: center
      average_drugs_delivered:
        align: center
      users_not_synced_more_than_48_hours:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffdf6"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
        label: User Synced Last More Than 48 Hrs
        label_from_parameter:
        label_short: Synced Last More Than 48 Hrs
        map_layer:
        name: user.synced_last_more_than_48_hrs
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Synced Last More Than 48 Hrs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.synced_last_more_than_48_hrs
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=160"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_count "
        sql_case:
        filters:
        - field: user.user_last_sync_date
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
        label: User Synced In Less Than 48 Hours
        label_from_parameter:
        label_short: Synced In Less Than 48 Hours
        map_layer:
        name: user.synced_in_less_than_48_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Synced In Less Than 48 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.synced_in_less_than_48_hours
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=148"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_count "
        sql_case:
        filters:
        - field: user.user_last_sync_date
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
        label: User Synced Last 24 Hours
        label_from_parameter:
        label_short: Synced Last 24 Hours
        map_layer:
        name: user.synced_last_24_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Synced Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.synced_last_24_hours
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=142"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_count "
        sql_case:
        filters:
        - field: user.user_last_sync_date
          condition: last 24 hours
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
        label: screening Unique Screenings 24 hours
        label_from_parameter:
        label_short: Unique Screenings 24 hours
        map_layer:
        name: screening.Individual_screenings_last_24_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Unique Screenings 24 hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Individual_screenings_last_24_hours
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=423"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.screened_date
          condition: 24 hours
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: screening Unique Screenings 30 days
        label_from_parameter:
        label_short: Unique Screenings 30 days
        map_layer:
        name: screening.Individual_screenings_last_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Unique Screenings 30 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Individual_screenings_last_30_days
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=432"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.screened_date
          condition: 30 days
        - field: screening.is_citizen_screened
          condition: new screening
        times_used: 0
        aggregate: true
        sorted:
          desc: true
          sort_index: 0
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
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Family Total Families 24 Hrs
        label_from_parameter:
        label_short: Total Families 24 Hrs
        map_layer:
        name: family.total_families_24_hrs
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Total Families 24 Hrs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.total_families_24_hrs
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=201"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
        sql_case:
        filters:
        - field: family.family_created_date
          condition: 24 hours
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
        label: Family Total Families 30 Days
        label_from_parameter:
        label_short: Total Families 30 Days
        map_layer:
        name: family.total_families_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Total Families 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.total_families_30_days
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=208"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
        sql_case:
        filters:
        - field: family.family_created_date
          condition: 30 days
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
        label: Family Average Total Families 30 Days
        label_from_parameter:
        label_short: Average Total Families 30 Days
        map_layer:
        name: family.Average_total_families_30_days
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
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Average Total Families 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.Average_total_families_30_days
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=215"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${total_families_30_days}/30 "
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
        label: drugs Total drugs issued 24 hours
        label_from_parameter:
        label_short: Total drugs issued 24 hours
        map_layer:
        name: drugs.total_drugs_issued_24_hours
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: drugs
        view_label: drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Total drugs issued 24 hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.total_drugs_issued_24_hours
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=210"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
        - field: drugs.citizen_screened_date
          condition: 1 days ago for 1 days
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
        label: drugs Total drugs issued 30 days
        label_from_parameter:
        label_short: Total drugs issued 30 days
        map_layer:
        name: drugs.total_drugs_issued_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: drugs
        view_label: drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Total drugs issued 30 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.total_drugs_issued_30_days
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=218"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
        - field: drugs.citizen_screened_date
          condition: 30 days ago for 30 days
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: average_drugs_delivered
        label: Average drugs Delivered
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
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: User User Block Name
        label_from_parameter:
        label_short: User Block Name
        map_layer:
        name: user.user_block_name
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
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: User Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.user_block_name
        suggest_explore: user
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=16"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_block_name "
        sql_case:
        filters:
        times_used: 0
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
        label: User User District Name
        label_from_parameter:
        label_short: User District Name
        map_layer:
        name: user.user_district_name
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
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: User District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.user_district_name
        suggest_explore: user
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=57"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_district_name "
        sql_case:
        filters:
        times_used: 0
      - align: right
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
        is_numeric: true
        label: User User District Gid
        label_from_parameter:
        label_short: User District Gid
        map_layer:
        name: user.user_district_gid
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: '0'
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: User District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.user_district_gid
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=51"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_district_gid "
        sql_case:
        filters:
        times_used: 0
      - align: right
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
        is_numeric: true
        label: User User Block Gid
        label_from_parameter:
        label_short: User Block Gid
        map_layer:
        name: user.user_block_gid
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: '0'
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: User Block Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.user_block_gid
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=10"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_block_gid "
        sql_case:
        filters:
        times_used: 0
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
        label: User User Hud Name
        label_from_parameter:
        label_short: User Hud Name
        map_layer:
        name: user.user_hud_name
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
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: User Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.user_hud_name
        suggest_explore: user
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=84"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_hud_name "
        sql_case:
        filters:
        times_used: 0
      - align: right
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
        is_numeric: true
        label: User User Hud Gid
        label_from_parameter:
        label_short: User Hud Gid
        map_layer:
        name: user.user_hud_gid
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: '0'
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: User Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.user_hud_gid
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=78"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_hud_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Screening Individual 24 Hrs
        name: screening_individual_24_hrs
        expression: |2-

          if(${screening.Individual_screenings_last_24_hours}>0,${screening.Individual_screenings_last_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Screening Individual 30 Days
        name: screening_individual_30_days
        expression: if(${screening.Individual_screenings_last_30_days}>0,${screening.Individual_screenings_last_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: 'Average Screening '
        name: average_screening_1
        expression: if(${average_screening}>0,${average_screening},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0.00"
        is_numeric: true
      - label: Screening Family 24 Hrs
        name: screening_family_24_hrs
        expression: if(${family.total_families_24_hrs}>0,${family.total_families_24_hrs},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Screening Family 30 days
        name: screening_family_30_days
        expression: if(${family.total_families_30_days}>0,${family.total_families_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Average Family Screening
        name: average_family_screening
        expression: if(${family.Average_total_families_30_days}>0,${family.Average_total_families_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0.00"
        is_numeric: true
      - label: Drugs Count 24 Hours
        name: drugs_count_24_hours
        expression: if(${drugs.total_drugs_issued_24_hours}>0,${drugs.total_drugs_issued_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Drugs Count last 30 days
        name: drugs_count_last_30_days
        expression: if(${drugs.total_drugs_issued_30_days}>0,${drugs.total_drugs_issued_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Average drugs delivered
        name: average_drugs_delivered_1
        expression: if(${average_drugs_delivered}>0,${average_drugs_delivered},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0.00"
        is_numeric: true
      pivots: []
    hidden_fields: [user.count, q4_user.synced_last_more_than_48_hrs, screening.Individual_screenings_last_24_hours,
      screening.Individual_screenings_last_30_days, average_screening, family.total_families_24_hrs,
      family.total_families_30_days, family.Average_total_families_30_days, drugs.total_drugs_issued_24_hours,
      drugs.total_drugs_issued_30_days, average_drugs_delivered]
    sorts: [screening.Individual_screenings_last_30_days desc]
    dynamic_fields: [{category: table_calculation, expression: "\nif(${screening.Individual_screenings_last_24_hours}>0,${screening.Individual_screenings_last_24_hours},0)",
        label: Screening Individual 24 Hrs, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_individual_24_hrs, _type_hint: number},
      {category: table_calculation, expression: 'if(${screening.Individual_screenings_last_30_days}>0,${screening.Individual_screenings_last_30_days},0)',
        label: Screening Individual 30 Days, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_individual_30_days, _type_hint: number},
      {category: table_calculation, expression: 'if(${average_screening}>0,${average_screening},0)',
        label: 'Average Screening ', value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_screening_1, _type_hint: number},
      {category: table_calculation, expression: 'if(${family.total_families_24_hrs}>0,${family.total_families_24_hrs},0)',
        label: Screening Family 24 Hrs, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_family_24_hrs, _type_hint: number},
      {category: table_calculation, expression: 'if(${family.total_families_30_days}>0,${family.total_families_30_days},0)',
        label: Screening Family 30 days, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: screening_family_30_days, _type_hint: number},
      {category: table_calculation, expression: 'if(${family.Average_total_families_30_days}>0,${family.Average_total_families_30_days},0)',
        label: Average Family Screening, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_family_screening, _type_hint: number},
      {category: table_calculation, expression: 'if(${drugs.total_drugs_issued_24_hours}>0,${drugs.total_drugs_issued_24_hours},0)',
        label: Drugs Count 24 Hours, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: drugs_count_24_hours, _type_hint: number},
      {category: table_calculation, expression: 'if(${drugs.total_drugs_issued_30_days}>0,${drugs.total_drugs_issued_30_days},0)',
        label: Drugs Count last 30 days, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: drugs_count_last_30_days, _type_hint: number},
      {category: table_calculation, expression: 'if(${average_drugs_delivered}>0,${average_drugs_delivered},0)',
        label: Average drugs delivered, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_drugs_delivered_1, _type_hint: number}]
    listen:
    - Institution Directorate: user.user_directorate
      'Institution District ': user.user_district_name
      Institution Hud: user.user_hud_name
      'Institution Block ': user.user_block_name
      Institution Role: user.user_role_name
    - 'Community  Hud ': screening.citizen_hud_name
      'Community District ': screening.citizen_district_name
      Community  Block: screening.citizen_block_name
      'Community Village ': screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      'Institution District ': screening.user_district_name
      Institution Hud: screening.user_hud_name
      'Institution Block ': screening.user_block_name
      Institution Role: screening.role_name
    - 'Community  Hud ': family.family_hud_name
      'Community District ': family.family_district_name
      Community  Block: family.family_block_name
      'Community Village ': family.family_village_name
      Institution Directorate: family.user_directorate
      Institution Role: family.user_role
    - 'Community  Hud ': drugs.citizen_hud_name
      'Community District ': drugs.citizen_district_name
      Community  Block: drugs.citizen_block_name
      'Community Village ': drugs.citizen_village_name
      Institution Directorate: drugs.user_directorate
      'Institution District ': drugs.user_district_name
      Institution Hud: drugs.user_hud_name
      'Institution Block ': drugs.user_block_name
      Institution Role: drugs.role_name
    row: 34
    col: 0
    width: 24
    height: 9
  filters:
  - name: 'Community District '
    title: 'Community District '
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: ['Community  Hud ', Community  Block, 'Community Village ']
    field: screening.citizen_district_name
  - name: 'Community  Hud '
    title: 'Community  Hud '
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: ['Community District ', Community  Block, 'Community Village ']
    field: screening.citizen_hud_name
  - name: Community  Block
    title: Community  Block
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: ['Community District ', 'Community  Hud ', 'Community Village ']
    field: screening.citizen_block_name
  - name: 'Community Village '
    title: 'Community Village '
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: ['Community District ', 'Community  Hud ', Community  Block]
    field: screening.citizen_village_name
  - name: Institution Directorate
    title: Institution Directorate
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: user
    listens_to_filters: [Institution Role, 'Institution District ', 'Institutions
        Hud ', 'Institution Block ', Institution Hud]
    field: user.user_directorate
  - name: 'Institution District '
    title: 'Institution District '
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Role, Institution Directorate, 'Institutions
        Hud ', 'Institution Block ', Institution Hud]
    field: screening.user_district_name
  - name: Institution Hud
    title: Institution Hud
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Role, Institution Directorate, 'Institution District ',
      'Institution Block ']
    field: screening.user_hud_name
  - name: 'Institution Block '
    title: 'Institution Block '
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Role, Institution Directorate, 'Institution District ',
      'Institutions Hud ', Institution Hud]
    field: screening.user_block_name
  - name: Institution Role
    title: Institution Role
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: user
    listens_to_filters: [Institution Directorate, 'Institution District ', 'Institutions
        Hud ', 'Institution Block ', Institution Hud]
    field: user.user_role_name
