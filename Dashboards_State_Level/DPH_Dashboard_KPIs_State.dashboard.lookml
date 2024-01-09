- dashboard: dph_dashboard_kpis_v1_0_4
  title: DPH Dashboard KPIs v1.0.4
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Confirmed
    name: Confirmed
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Confirmed_Diabetes_mellitus, health_screening.Confirmed_Hypertension,
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus]
    filters:
      health_screening.age: ">18"
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Confirmed_Diabetes_mellitus}+${health_screening.Confirmed_Hypertension}+${health_screening.Confirmed_Hypertension_and_DiabetesMellitus}",
        label: Confirmed, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: confirmed,
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    custom_color: "#1A73E8"
    show_value_labels: true
    font_size: 15
    series_colors:
      confirmed: "#079c98"
      controlled: "#E8710A"
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
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [health_screening.Confirmed_Diabetes_mellitus, health_screening.Confirmed_Hypertension,
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus]
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen:
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    row: 3
    col: 12
    width: 6
    height: 6
  - title: Population (Age >18)
    name: Population (Age >18)
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Total_population]
    filters:
      health_screening.age: ">18"
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#3746e8"
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
    defaults_version: 1
    series_types: {}
    listen:
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    row: 3
    col: 0
    width: 6
    height: 6
  - name: Diabetes Mellitus
    title: Diabetes Mellitus
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Member_count]
      filters:
        health_screening.age: ">18"
        health_screening.screening_values_dm_screening: Known DM
      limit: 5000
      column_limit: 50
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Member_count]
      filters:
        health_screening.age: ">18"
        health_screening.screening_values_dm_screening: Known DM
        health_screening.screening_values_rbs: "<140"
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Suspected_Diabetes]
      filters:
        health_screening.age: ">18"
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    show_value_labels: true
    font_size: 13
    hide_legend: false
    series_colors:
      uncontrolled: "#F9AB00"
      controlled_diabetes: "#F9AB00"
    series_labels:
      health_screening.Member_count: Confirmed
      q1_health_screening.Member_count: Controlled
      health_screening.Suspected_Diabetes: Suspected
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      health_screening.Member_count:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: "#182de8"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Confirmed Diabetes mellitus
    type: looker_donut_multiples
    hidden_fields: [health_screening.Suspected_Diabetes, calculation_1]
    column_limit: 50
    dynamic_fields: [{table_calculation: uncontrolled, label: Uncontrolled, expression: "${health_screening.Member_count}-${q1_health_screening.Member_count}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    listen:
    - Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    - Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    - Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    row: 9
    col: 0
    width: 8
    height: 6
  - name: Both
    title: Both
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Member_count]
      filters:
        health_screening.age: ">18"
        health_screening.screening_values_dm_screening: Known DM
        health_screening.screening_values_ht_screening: Known HT
      limit: 5000
      column_limit: 50
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Member_count]
      filters:
        health_screening.age: ">18"
        health_screening.screening_values_dia_bp: "<90"
        health_screening.screening_values_dm_screening: Known DM
        health_screening.screening_values_ht_screening: Known HT
        health_screening.screening_values_rbs: "<140"
        health_screening.screening_values_sys_bp: "<140"
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.suspected_both]
      filters:
        health_screening.age: ">18"
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    show_value_labels: true
    font_size: 15
    hide_legend: false
    series_colors:
      uncontrolled: "#F9AB00"
      controlled_diabetes: "#F9AB00"
    series_labels:
      health_screening.Member_count: Confirmed
      q1_health_screening.Member_count: Controlled
      health_screening.Suspected_Diabetes: Suspected
      health_screening.suspected_both: Suspected
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      health_screening.Member_count:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: "#182de8"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Confirmed Diabetes mellitus
    type: looker_donut_multiples
    hidden_fields: [health_screening.suspected_both, calculation_1]
    column_limit: 50
    dynamic_fields: [{table_calculation: uncontrolled, label: Uncontrolled, expression: "${health_screening.Member_count}-${q1_health_screening.Member_count}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    listen:
    - Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    - Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    - Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    row: 9
    col: 16
    width: 8
    height: 6
  - name: Hypertension
    title: Hypertension
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Member_count]
      filters:
        health_screening.age: ">18"
        health_screening.screening_values_ht_screening: Known HT
      limit: 5000
      column_limit: 50
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Member_count]
      filters:
        health_screening.age: ">18"
        health_screening.screening_values_dia_bp: "<90"
        health_screening.screening_values_dm_screening: Known DM
        health_screening.screening_values_ht_screening: Known HT
        health_screening.screening_values_rbs: "<140"
        health_screening.screening_values_sys_bp: "<140"
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.suspected_Hypertension]
      filters:
        health_screening.age: ">18"
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    show_value_labels: true
    font_size: 15
    hide_legend: false
    series_colors:
      uncontrolled: "#F9AB00"
      controlled_diabetes: "#F9AB00"
    series_labels:
      health_screening.Member_count: Confirmed
      q1_health_screening.Member_count: Controlled
      health_screening.Suspected_Diabetes: Suspected
      health_screening.suspected_both: Suspected
      health_screening.suspected_Hypertension: Suspected
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      health_screening.Member_count:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: "#182de8"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Confirmed Diabetes mellitus
    type: looker_donut_multiples
    hidden_fields: [health_screening.suspected_Hypertension, calculation_1]
    column_limit: 50
    dynamic_fields: [{table_calculation: uncontrolled, label: Uncontrolled, expression: "${health_screening.Member_count}-${q1_health_screening.Member_count}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    listen:
    - Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    - Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    - Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    row: 9
    col: 8
    width: 8
    height: 6
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
  - title: Screening (Age >18)
    name: Screening (Age >18)
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Total_Screening, health_screening.Total_population]
    filters:
      health_screening.age: ">18"
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'round(${health_screening.Total_Screening}/${health_screening.Total_population}*100,2)',
        label: New Calculation, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: new_calculation, _type_hint: number},
      {category: table_calculation, expression: 'concat(${new_calculation},"%")',
        label: Value, value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: value, _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    custom_color: "#e81725"
    comparison_label: Total Population (Age >18)
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    showComparison: true
    minValue: 0
    maxValue: 1
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: false
    waveAnimate: false
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: false
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_colors:
      family_member_master.Female_Population: "#FF8168"
      family_member_master.Other_Population: "#9334E6"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Population Count, orientation: left, series: [{axisId: family_member_master.Male_Population,
            id: family_member_master.Male_Population, name: Male Population}, {axisId: family_member_master.Female_Population,
            id: family_member_master.Female_Population, name: Female Population},
          {axisId: family_member_master.Other_Population, id: family_member_master.Other_Population,
            name: Other Population}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Gender
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [new_calculation]
    defaults_version: 1
    hidden_points_if_no: []
    series_labels: {}
    listen:
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    row: 3
    col: 6
    width: 6
    height: 6
  - title: 'Diabetes vs Hypertension '
    name: 'Diabetes vs Hypertension '
    model: tnphr_state_level
    explore: family_master
    type: looker_column
    fields: [health_screening.Confirmed_Diabetes_mellitus, health_screening.Confirmed_Hypertension,
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus, health_screening.Controlled_Diabetes_Mellitus,
      health_screening.Controlled_Hypertension, health_screening.Controlled_Hypertension_and_Diabetes_Mellitus]
    filters:
      health_screening.age: ">18"
      health_screening.district_name: ''
      health_screening.hud_name: ''
      health_screening.block_name: ''
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Confirmed_Diabetes_mellitus}+${health_screening.Controlled_Diabetes_Mellitus}",
        label: Diabetes Mellitus, value_format: !!null '', value_format_name: '',
        _kind_hint: measure, table_calculation: diabetes_mellitus, _type_hint: number},
      {table_calculation: hypertension, label: Hypertension, expression: "${health_screening.Confirmed_Hypertension}+${health_screening.Controlled_Hypertension}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: both, label: Both, expression: "${health_screening.Confirmed_Hypertension_and_DiabetesMellitus}+${health_screening.Controlled_Hypertension_and_Diabetes_Mellitus}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, expression: '" "', label: MTM
          Condition, value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: mtm_condition, _type_hint: string}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    y_axes: [{label: Confirmed+Controlled, orientation: left, series: [{axisId: diabetes_mellitus,
            id: diabetes_mellitus, name: Diabetes Mellitus}, {axisId: hypertension,
            id: hypertension, name: Hypertension}, {axisId: both, id: both, name: Both}],
        showLabels: true, showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: MTM Condition
    font_size: '15'
    series_types: {}
    series_colors:
      confirmed: "#079c98"
      controlled: "#E8710A"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    hidden_fields: [health_screening.Confirmed_Diabetes_mellitus, health_screening.Confirmed_Hypertension,
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus, health_screening.Controlled_Diabetes_Mellitus,
      health_screening.Controlled_Hypertension, health_screening.Controlled_Hypertension_and_Diabetes_Mellitus]
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen:
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    row: 3
    col: 18
    width: 6
    height: 6
  - title: Department of Public Health (DPH)
    name: Department of Public Health (DPH)
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.district_name, health_screening.hud_name, health_history.block_name,
      address_village_master.village_name, health_screening.village_type, health_screening.Total_Screening,
      health_screening.Total_population, health_screening.Confirmed_Diabetes_mellitus,
      health_screening.Controlled_Diabetes_Mellitus, health_screening.DM_Percent,
      health_screening.Confirmed_Hypertension, health_screening.Controlled_Hypertension,
      health_screening.HT_Percent, health_screening.Controlled_Hypertension_and_Diabetes_Mellitus,
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus, health_screening.HTDM_Percent]
    filters:
      health_screening.district_name: "-NULL"
      health_screening.hud_name: "-NULL"
      health_screening.block_name: "-NULL"
    sorts: [health_screening.district_name, health_screening.hud_name, health_history.block_name,
      address_village_master.village_name, hypertension_percentage desc]
    subtotals: [health_screening.district_name, health_screening.hud_name, health_history.block_name,
      address_village_master.village_name]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    column_order: [health_screening.district_name, health_screening.hud_name, health_history.block_name,
      address_village_master.village_name, health_screening.village_type, health_screening.Total_population,
      health_screening.Total_Screening, health_screening.Confirmed_Diabetes_mellitus,
      health_screening.Controlled_Diabetes_Mellitus, health_screening.DM_Percent,
      health_screening.Confirmed_Hypertension, health_screening.Controlled_Hypertension,
      health_screening.HT_Percent, health_screening.Controlled_Hypertension_and_Diabetes_Mellitus,
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus, health_screening.HTDM_Percent]
    show_totals: true
    show_row_totals: true
    series_labels:
      health_screening.district_name: District
      health_screening.hud_name: HUD
      health_history.block_name: Block
      address_village_master.village_name: Village
      health_screening.village_type: Village Type
      health_screening.Total_population: Population
      health_screening.Total_Screening: Screening
      health_screening.Confirmed_Diabetes_mellitus: Confirmed Diabetes
      health_screening.Controlled_Diabetes_Mellitus: Controlled Diabetes
      health_screening.Controlled_Hypertension_and_Diabetes_Mellitus: Controlled both
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus: Confirmed both
      diabetes_mellitus_percentage: Diabetes %
      hypertension_percentage: Hypertension %
      hypertension_and_diabetes_mellitus_percentage: Hypertension & Diabetes %
    series_column_widths:
      health_screening.hud_name: 100
      health_history.block_name: 100
      address_village_master.village_name: 100
      health_screening.village_type: 112
      health_screening.Total_Screening: 99
      health_screening.Total_population: 104
      health_screening.Confirmed_Diabetes_mellitus: 160
      health_screening.Controlled_Diabetes_Mellitus: 160
      health_screening.Confirmed_Hypertension: 189
      health_screening.Controlled_Hypertension: 188
      health_screening.HT_Percent: 134
      health_screening.Controlled_Hypertension_and_Diabetes_Mellitus: 133
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus: 134
      health_screening.HTDM_Percent: 205
      health_screening.district_name: 100
      health_screening.DM_Percent: 105
      grouped-column-health_screening.district_name: 189
      grouped-column-health_screening.hud_name: 75
      grouped-column-health_history.block_name: 75
      grouped-column-address_village_master.village_name: 79
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      health_screening.district_name:
        align: left
      health_screening.Total_population:
        align: center
      health_screening.Total_Screening:
        align: center
      health_screening.Confirmed_Diabetes_mellitus:
        align: center
      health_screening.Confirmed_Hypertension:
        align: center
      health_screening.Control_rate:
        align: center
      health_screening.village_type:
        align: center
      dm_percentage:
        align: center
      hypertension_percentage:
        align: center
      both:
        align: center
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_collapsed:
      health_screening.district_name: true
      health_screening.hud_name: true
      health_history.block_name: true
      address_village_master.village_name: true
    header_background_color: "#1A73E8"
    conditional_formatting: []
    truncate_column_names: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: Population Count, orientation: left, series: [{axisId: family_member_master.Male_Population,
            id: family_member_master.Male_Population, name: Male Population}, {axisId: family_member_master.Female_Population,
            id: family_member_master.Female_Population, name: Female Population},
          {axisId: family_member_master.Other_Population, id: family_member_master.Other_Population,
            name: Other Population}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Gender
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      family_member_master.Female_Population: "#FF8168"
      family_member_master.Other_Population: "#9334E6"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    theme: classic
    show_full_field_name: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#201de8"
    comparison_label: Total Population
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    hidden_fields: [hypertension_percentage, hypertension_and_diabetes_mellitus_percentage]
    defaults_version: 1
    hidden_points_if_no: []
    show_null_points: true
    interpolation: linear
    listen:
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
    row: 15
    col: 0
    width: 24
    height: 7
  filters:
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
