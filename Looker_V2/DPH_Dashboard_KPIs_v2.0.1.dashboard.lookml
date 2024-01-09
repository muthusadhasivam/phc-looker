- dashboard: dph_dashboard_kpis_v2_0_1
  title: DPH Dashboard KPIs v2.0.1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: wjpD0xrr3SiajPHA4uKAQA
  elements:
  - title: Population (Age >18)
    name: Population (Age >18)
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.Population_age_gt_18]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Community District: population.citizen_district_name
      Community Village: population.citizen_village_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
    row: 5
    col: 0
    width: 5
    height: 6
  - name: Screening (Age >18)
    title: Screening (Age >18)
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: single_value
      fields: [screening.Total_screenings]
      filters:
        screening.citizen_age: ">18"
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
      explore: population
      type: table
      fields: [population.Population_age_gt_18]
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Total Population (Age >18)
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    type: single_value
    hidden_fields: [calculation_1]
    listen:
    - Community District: screening.citizen_district_name
      Community Village: screening.citizen_village_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    - Community District: population.citizen_district_name
      Community Village: population.citizen_village_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
    row: 5
    col: 5
    width: 6
    height: 6
  - title: Confirmed
    name: Confirmed
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Confirmed_Diabetes_mellitus, screening.Confirmed_Hypertension,
      screening.Confirmed_Hypertension_and_DiabetesMellitus]
    filters:
      screening.citizen_age: ">18"
    limit: 500
    dynamic_fields: [{table_calculation: confirmed, label: Confirmed, expression: "${screening.Confirmed_Diabetes_mellitus}+${screening.Confirmed_Hypertension}+${screening.Confirmed_Hypertension_and_DiabetesMellitus}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
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
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
    hidden_fields: [screening.Confirmed_Diabetes_mellitus, screening.Confirmed_Hypertension,
      screening.Confirmed_Hypertension_and_DiabetesMellitus]
    listen:
      Community District: screening.citizen_district_name
      Community Village: screening.citizen_village_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    row: 5
    col: 11
    width: 5
    height: 6
  - title: Diabetes vs Hypertension
    name: Diabetes vs Hypertension
    model: tnphr-prod-kpi
    explore: screening
    type: looker_column
    fields: [screening.Confirmed_Diabetes_mellitus, screening.Confirmed_Hypertension,
      screening.Confirmed_Hypertension_and_DiabetesMellitus, screening.Controlled_Diabetes_Mellitus,
      screening.Controlled_Hypertension, screening.Controlled_Hypertension_and_Diabetes_Mellitus]
    filters:
      screening.citizen_age: ">18"
    limit: 500
    dynamic_fields: [{table_calculation: diabetes_mellitus, label: Diabetes Mellitus,
        expression: "${screening.Confirmed_Diabetes_mellitus}+${screening.Controlled_Diabetes_Mellitus}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: hypertension, label: Hypertension,
        expression: "${screening.Confirmed_Hypertension}+${screening.Controlled_Hypertension}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: both, label: Both, expression: "${screening.Confirmed_Hypertension_and_DiabetesMellitus}+${screening.Controlled_Hypertension_and_Diabetes_Mellitus}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: mtm_condition, label: MTM Condition,
        expression: '" "', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: string}]
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
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Confirmed+Controlled, orientation: left, series: [{axisId: diabetes_mellitus,
            id: diabetes_mellitus, name: Diabetes Mellitus}, {axisId: hypertension,
            id: hypertension, name: Hypertension}, {axisId: both, id: both, name: Both}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: MTM Condition
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
    defaults_version: 1
    hidden_fields: [screening.Confirmed_Diabetes_mellitus, screening.Confirmed_Hypertension,
      screening.Confirmed_Hypertension_and_DiabetesMellitus, screening.Controlled_Diabetes_Mellitus,
      screening.Controlled_Hypertension, screening.Controlled_Hypertension_and_Diabetes_Mellitus]
    listen:
      Community District: screening.citizen_district_name
      Community Village: screening.citizen_village_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    row: 5
    col: 16
    width: 8
    height: 6
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
      <center>Department of Public Health (DPH) - Use to understand the count of people having Diabetes, Hypertension with controlled/uncontrolled cases in TN</center>
    row: 0
    col: 0
    width: 24
    height: 5
  - title: Diabetes Mellitus
    name: Diabetes Mellitus
    model: tnphr-prod-kpi
    explore: screening
    type: looker_donut_multiples
    fields: [screening.Confirmed_Diabetes_mellitus, screening.Controlled_Diabetes_Mellitus,
      screening.Uncontrolled_Diabetes_Mellitus]
    filters:
      screening.citizen_age: ">18"
    sorts: [screening.Confirmed_Diabetes_mellitus desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '"Diabetes"',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    show_value_labels: false
    font_size: 19
    series_labels:
      screening.Confirmed_Diabetes_mellitus: Confirmed
      screening.Controlled_Diabetes_Mellitus: Controlled
      screening.Uncontrolled_Diabetes_Mellitus: Uncontrolled
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
    hidden_fields:
    value_labels: legend
    label_type: labPer
    title_hidden: true
    listen:
      Community District: screening.citizen_district_name
      Community Village: screening.citizen_village_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    row: 11
    col: 0
    width: 8
    height: 6
  - title: Hypertension
    name: Hypertension
    model: tnphr-prod-kpi
    explore: screening
    type: looker_donut_multiples
    fields: [screening.Confirmed_Hypertension, screening.Controlled_Hypertension,
      screening.Uncontrolled_Hypertension]
    filters:
      screening.citizen_age: ">18"
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '"Hypertension"',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    show_value_labels: false
    font_size: 18
    hide_legend: false
    series_labels:
      screening.Confirmed_Hypertension: Confirmed
      screening.Controlled_Hypertension: Controlled
      screening.Uncontrolled_Hypertension: Uncontrolled
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
    hidden_fields:
    title_hidden: true
    listen:
      Community District: screening.citizen_district_name
      Community Village: screening.citizen_village_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    row: 11
    col: 8
    width: 8
    height: 6
  - title: Both
    name: Both
    model: tnphr-prod-kpi
    explore: screening
    type: looker_donut_multiples
    fields: [screening.Confirmed_Hypertension_and_DiabetesMellitus, screening.Controlled_Hypertension_and_Diabetes_Mellitus,
      screening.Uncontrolled_Hypertension_and_Diabetes_Mellitus]
    filters:
      screening.citizen_age: ">18"
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '"Both"',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    show_value_labels: false
    font_size: 19
    series_labels:
      screening.Confirmed_Hypertension_and_DiabetesMellitus: Confirmed
      screening.Controlled_Hypertension_and_Diabetes_Mellitus: Controlled
      screening.Uncontrolled_Hypertension_and_Diabetes_Mellitus: Uncontrolled
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
    hidden_fields:
    title_hidden: true
    listen:
      Community District: screening.citizen_district_name
      Community Village: screening.citizen_village_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    row: 11
    col: 16
    width: 8
    height: 6
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_name, population.citizen_district_gid,
        population.total_population, population.Population_age_gt_18]
      sorts: [population.total_population desc]
      limit: 500
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.Total_screenings, screening.Confirmed_Diabetes_mellitus,
        screening.Controlled_Diabetes_Mellitus, screening.DM_Percent, screening.Confirmed_Hypertension,
        screening.Controlled_Hypertension, screening.HT_Percent, screening.Confirmed_Hypertension_and_DiabetesMellitus,
        screening.Controlled_Hypertension_and_Diabetes_Mellitus, screening.HTDM_Percent]
      sorts: [screening.Total_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: population.citizen_district_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.total_population: Total Population
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      population.total_population:
        align: center
      population.Population_age_gt_18:
        align: center
      screening.Total_screenings:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcfff9"
    header_background_color: "#1d20e8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    listen:
    - Community District: population.citizen_district_name
      Community Village: population.citizen_village_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
    - Community District: screening.citizen_district_name
      Community Village: screening.citizen_village_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    row: 17
    col: 0
    width: 24
    height: 7
  - name: HUD wise
    title: HUD wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_name, population.citizen_district_gid,
        population.citizen_hud_name, population.citizen_hud_gid, population.total_population,
        population.Population_age_gt_18]
      sorts: [population.total_population desc]
      limit: 500
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.Total_screenings, screening.Confirmed_Diabetes_mellitus,
        screening.Controlled_Diabetes_Mellitus, screening.DM_Percent, screening.Confirmed_Hypertension,
        screening.Controlled_Hypertension, screening.HT_Percent, screening.Confirmed_Hypertension_and_DiabetesMellitus,
        screening.Controlled_Hypertension_and_Diabetes_Mellitus, screening.HTDM_Percent,
        screening.citizen_hud_name]
      sorts: [screening.Total_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_hud_name
        source_field_name: population.citizen_hud_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.total_population: Total Population
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      population.total_population:
        align: center
      population.Population_age_gt_18:
        align: center
      screening.Total_screenings:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcfff9"
    header_background_color: "#1d20e8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    listen:
    - Community District: population.citizen_district_name
      Community Village: population.citizen_village_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
    - Community District: screening.citizen_district_name
      Community Village: screening.citizen_village_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    row: 24
    col: 0
    width: 24
    height: 8
  - name: Block wise
    title: Block wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_name, population.citizen_district_gid,
        population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
        population.citizen_block_gid, population.total_population, population.Population_age_gt_18]
      sorts: [population.total_population desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.Total_screenings, screening.Confirmed_Diabetes_mellitus,
        screening.Controlled_Diabetes_Mellitus, screening.DM_Percent, screening.Confirmed_Hypertension,
        screening.Controlled_Hypertension, screening.HT_Percent, screening.Confirmed_Hypertension_and_DiabetesMellitus,
        screening.Controlled_Hypertension_and_Diabetes_Mellitus, screening.HTDM_Percent,
        screening.citizen_block_name]
      sorts: [screening.Total_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_block_name
        source_field_name: population.citizen_block_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.total_population: Total Population
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.citizen_block_name: Community Block
      population.citizen_block_gid: Community Block Gid
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      population.total_population:
        align: center
      population.Population_age_gt_18:
        align: center
      screening.Total_screenings:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      population.citizen_block_name:
        align: center
      population.citizen_block_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcfff9"
    header_background_color: "#1d20e8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    listen:
    - Community District: population.citizen_district_name
      Community Village: population.citizen_village_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
    - Community District: screening.citizen_district_name
      Community Village: screening.citizen_village_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    row: 32
    col: 0
    width: 24
    height: 8
  - name: Village wise
    title: Village wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_name, population.citizen_district_gid,
        population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
        population.citizen_block_gid, population.citizen_village_name, population.citizen_village_gid,
        population.total_population, population.Population_age_gt_18]
      sorts: [population.total_population desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.Total_screenings, screening.Confirmed_Diabetes_mellitus,
        screening.Controlled_Diabetes_Mellitus, screening.DM_Percent, screening.Confirmed_Hypertension,
        screening.Controlled_Hypertension, screening.HT_Percent, screening.Confirmed_Hypertension_and_DiabetesMellitus,
        screening.Controlled_Hypertension_and_Diabetes_Mellitus, screening.HTDM_Percent,
        screening.citizen_village_name]
      sorts: [screening.Total_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_village_name
        source_field_name: population.citizen_village_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.total_population: Total Population
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.citizen_village_name: Community Village
      population.citizen_village_gid: Community Village Gid
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      population.total_population:
        align: center
      population.Population_age_gt_18:
        align: center
      screening.Total_screenings:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      population.citizen_village_name:
        align: center
      population.citizen_village_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcfff9"
    header_background_color: "#1d20e8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    listen:
    - Community District: population.citizen_district_name
      Community Village: population.citizen_village_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
    - Community District: screening.citizen_district_name
      Community Village: screening.citizen_village_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    row: 40
    col: 0
    width: 24
    height: 8
  filters:
  - name: Community District
    title: Community District
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community Hud, Community Block, Community Village]
    field: screening.citizen_district_name
  - name: Community Hud
    title: Community Hud
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community District, Community Block, Community Village]
    field: screening.citizen_hud_name
  - name: Community Block
    title: Community Block
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community District, Community Hud, Community Village]
    field: screening.citizen_block_name
  - name: Community Village
    title: Community Village
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community District, Community Hud, Community Block]
    field: screening.citizen_village_name
