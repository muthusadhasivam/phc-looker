- dashboard: rural_vs__urban_performance_v2_1_0
  title: Rural vs. Urban Performance v2.1.0
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: UlQ4J4Z19NIDSN80rVzmVf
  elements:
  - title: Total Population
    name: Total Population
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
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
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 7
    col: 0
    width: 8
    height: 6
  - name: "<H1>Total Population Details</H1>"
    type: text
    title_text: "<H1>Total Population Details</H1>"
    subtitle_text: ''
    body_text: ''
    row: 5
    col: 0
    width: 24
    height: 2
  - title: Total Population Gender Wise
    name: Total Population Gender Wise
    model: tnphr-prod-kpi
    explore: population
    type: looker_column
    fields: [population.male_population, population.female_population, population.other_population]
    limit: 500
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
    series_types: {}
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 7
    col: 8
    width: 8
    height: 6
  - title: Age Wise Population Count
    name: Age Wise Population Count
    model: tnphr-prod-kpi
    explore: population
    type: looker_pie
    fields: [population.age_interval_population, population.total_population]
    fill_fields: [population.age_interval_population]
    sorts: [population.age_interval_population]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 30
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    series_colors: {}
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 7
    col: 16
    width: 8
    height: 6
  - name: "<H1>Village Type wise Population Details</H1>"
    type: text
    title_text: "<H1>Village Type wise Population Details</H1>"
    subtitle_text: ''
    body_text: ''
    row: 13
    col: 0
    width: 24
    height: 2
  - title: 'Population : Corporation'
    name: 'Population : Corporation'
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    filters:
      population.citizen_village_type: CO
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
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 15
    col: 0
    width: 8
    height: 3
  - title: 'Population : Others'
    name: 'Population : Others'
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    filters:
      population.citizen_village_type: Other
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
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 18
    col: 11
    width: 7
    height: 3
  - title: 'Population : Village Panchayat'
    name: 'Population : Village Panchayat'
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    filters:
      population.citizen_village_type: VP
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
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 18
    col: 4
    width: 7
    height: 3
  - title: 'Population : Town Panchayat'
    name: 'Population : Town Panchayat'
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    filters:
      population.citizen_village_type: TP
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
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 15
    col: 16
    width: 8
    height: 3
  - title: 'Population : Municipality'
    name: 'Population : Municipality'
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    filters:
      population.citizen_village_type: MP
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
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 15
    col: 8
    width: 8
    height: 3
  - title: Total Urban Population
    name: Total Urban Population
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    filters:
      population.user_role: ''
      population.citizen_village_type: CO
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
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 21
    col: 0
    width: 8
    height: 3
  - title: Total Rural Population
    name: Total Rural Population
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    filters:
      population.user_role: ''
      population.citizen_village_type: MP,TP,VP
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
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 21
    col: 8
    width: 8
    height: 3
  - title: Other Population
    name: Other Population
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    filters:
      population.user_role: ''
      population.citizen_village_type: Other
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
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 21
    col: 16
    width: 8
    height: 3
  - title: Rural Population by Gender
    name: Rural Population by Gender
    model: tnphr-prod-kpi
    explore: population
    type: looker_column
    fields: [population.male_population, population.female_population, population.other_population]
    filters:
      population.user_role: ''
      population.citizen_village_type: MP,TP,VP
    limit: 500
    column_limit: 50
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
    y_axes: [{label: Population, orientation: left, series: [{axisId: population.male_population,
            id: population.male_population, name: Male Population}, {axisId: population.female_population,
            id: population.female_population, name: Female Population}, {axisId: population.other_population,
            id: population.other_population, name: Other Population}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 24
    col: 8
    width: 8
    height: 6
  - title: Urban Population by Gender
    name: Urban Population by Gender
    model: tnphr-prod-kpi
    explore: population
    type: looker_column
    fields: [population.male_population, population.female_population, population.other_population]
    filters:
      population.user_role: ''
      population.citizen_village_type: CO
    limit: 500
    column_limit: 50
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
    y_axes: [{label: Population, orientation: left, series: [{axisId: population.male_population,
            id: population.male_population, name: Male Population}, {axisId: population.female_population,
            id: population.female_population, name: Female Population}, {axisId: population.other_population,
            id: population.other_population, name: Other Population}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 24
    col: 0
    width: 8
    height: 6
  - title: Other Population by Gender
    name: Other Population by Gender
    model: tnphr-prod-kpi
    explore: population
    type: looker_column
    fields: [population.male_population, population.female_population, population.other_population]
    filters:
      population.user_role: ''
      population.citizen_village_type: Other
    limit: 500
    column_limit: 50
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
    y_axes: [{label: Population, orientation: left, series: [{axisId: population.male_population,
            id: population.male_population, name: Male Population}, {axisId: population.female_population,
            id: population.female_population, name: Female Population}, {axisId: population.other_population,
            id: population.other_population, name: Other Population}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    row: 24
    col: 16
    width: 8
    height: 6
  - name: "<H1>Village Type wise Screening Details</H1> "
    type: text
    title_text: "<H1>Village Type wise Screening Details</H1> "
    subtitle_text: ''
    body_text: ''
    row: 30
    col: 0
    width: 24
    height: 2
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
      <center>Rural & Urban Performance - Use to understand the population and screening details in urban and rural areas in TN</center>
    row: 0
    col: 0
    width: 24
    height: 5
  - title: 'Total Screenings : Corporation'
    name: 'Total Screenings : Corporation'
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Total_screenings]
    filters:
      screening.citizen_village_type: CO
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
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
    row: 32
    col: 0
    width: 8
    height: 3
  - title: 'Total Screenings : Town Panchayat'
    name: 'Total Screenings : Town Panchayat'
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Total_screenings]
    filters:
      screening.citizen_village_type: TP
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
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
    row: 32
    col: 16
    width: 8
    height: 3
  - title: 'Total Screenings : Village Panchayat'
    name: 'Total Screenings : Village Panchayat'
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Total_screenings]
    filters:
      screening.citizen_village_type: VP
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
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
    row: 35
    col: 4
    width: 8
    height: 3
  - title: 'Total Screenings : Municipality'
    name: 'Total Screenings : Municipality'
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Total_screenings]
    filters:
      screening.citizen_village_type: MP
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
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
    row: 32
    col: 8
    width: 8
    height: 3
  - title: 'Total Screenings : Others'
    name: 'Total Screenings : Others'
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Total_screenings]
    filters:
      screening.citizen_village_type: Other
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
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
    row: 35
    col: 12
    width: 8
    height: 3
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_name, population.citizen_district_gid,
        population.total_population, population.citizen_village_type]
      filters:
        population.citizen_village_type: "-OT"
      sorts: [population.total_population desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.Total_screenings, screening.citizen_village_type]
      filters:
        screening.citizen_village_type: "-OT"
      sorts: [screening.Total_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: screening.citizen_village_type
        source_field_name: population.citizen_village_type
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.citizen_district_name, drugs.total_drugs_issued, drugs.citizen_village_type]
      filters:
        drugs.citizen_village_type: "-OT"
      sorts: [drugs.total_drugs_issued desc]
      limit: 5000
      join_fields:
      - field_name: drugs.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: drugs.citizen_village_type
        source_field_name: population.citizen_village_type
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.total_confirmed_MTM_beneficiary,
        mtm_beneficiary.citizen_village_type]
      filters:
        mtm_beneficiary.citizen_village_type: "-OT"
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
      limit: 5000
      column_limit: 50
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: mtm_beneficiary.citizen_village_type
        source_field_name: population.citizen_village_type
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.citizen_village_type: Community Village type
    series_column_widths:
      population.citizen_district_name: 200
      population.citizen_district_gid: 200
      population.total_population: 200
      screening.Total_screenings: 200
      drugs.total_drugs_issued: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      total_population: 200
      total_screenings: 200
      total_drugs_issued: 200
      total_mtm_beneficiaries: 200
      population.citizen_village_type: 500
      CO_total_population: 161
      CO_total_screenings: 134
      CO_total_drugs_issued: 134
      CO_total_mtm_beneficiaries: 134
      VP_total_population: 156
      VP_total_screenings: 156
      VP_total_drugs_issued: 141
      VP_total_mtm_beneficiaries: 141
      Other_total_population: 173
      Other_total_screenings: 156
      Other_total_drugs_issued: 144
      Other_total_mtm_beneficiaries: 144
      TP_total_population: 157
      TP_total_screenings: 145
      TP_total_drugs_issued: 145
      TP_total_mtm_beneficiaries: 145
      MP_total_population: 144
      MP_total_screenings: 130
      MP_total_drugs_issued: 130
      MP_total_mtm_beneficiaries: 134
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_village_type: {}
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      total_population:
        align: center
      total_screenings:
        align: center
      total_drugs_issued:
        align: center
      total_mtm_beneficiaries:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#ffffff"
    header_background_color: "#162eff"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [population.total_population, screening.Total_screenings, drugs.total_drugs_issued,
      mtm_beneficiary.total_confirmed_MTM_beneficiary]
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
        label: Population Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: population.total_population
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.total_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=320"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
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
        label: Screening Total Screenings
        label_from_parameter:
        label_short: Total Screenings
        map_layer:
        name: screening.Total_screenings
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
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Total Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Total_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=454"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
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
        label: Drugs Total drugs issued
        label_from_parameter:
        label_short: Total drugs issued
        map_layer:
        name: drugs.total_drugs_issued
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
        view_label: Drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Total drugs issued
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.total_drugs_issued
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=254"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
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
        label: Mtm Beneficiary Total Confirmed MTM Beneficiary
        label_from_parameter:
        label_short: Total Confirmed MTM Beneficiary
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Total Confirmed MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=293"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
        aggregate: true
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
        label: Population Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: population.citizen_district_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=62"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_district_name "
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
        label: Population Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: population.citizen_district_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=56"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_district_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Total Population
        name: total_population
        expression: if(${population.total_population}>0,${population.total_population},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Total screenings
        name: total_screenings
        expression: if(${screening.Total_screenings}>0,${screening.Total_screenings},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Total drugs issued
        name: total_drugs_issued
        expression: if(${drugs.total_drugs_issued}>0,${drugs.total_drugs_issued},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Total MTM Beneficiaries
        name: total_mtm_beneficiaries
        expression: if(${mtm_beneficiary.total_confirmed_MTM_beneficiary}>0,${mtm_beneficiary.total_confirmed_MTM_beneficiary},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      pivots:
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
        label: Population Citizen Village Type
        label_from_parameter:
        label_short: Citizen Village Type
        map_layer:
        name: population.citizen_village_type
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Village Type
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_village_type
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=235"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: if (${TABLE}.citizen_village_type is null, "Other", ${TABLE}.citizen_village_type)
        sql_case:
        filters:
        times_used: 0
    pivots: [population.citizen_village_type]
    dynamic_fields: [{category: table_calculation, expression: 'if(${population.total_population}>0,${population.total_population},0)',
        label: Total Population, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_population, _type_hint: number},
      {category: table_calculation, expression: 'if(${screening.Total_screenings}>0,${screening.Total_screenings},0)',
        label: Total screenings, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_screenings, _type_hint: number},
      {category: table_calculation, expression: 'if(${drugs.total_drugs_issued}>0,${drugs.total_drugs_issued},0)',
        label: Total drugs issued, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_drugs_issued, _type_hint: number},
      {category: table_calculation, expression: 'if(${mtm_beneficiary.total_confirmed_MTM_beneficiary}>0,${mtm_beneficiary.total_confirmed_MTM_beneficiary},0)',
        label: Total MTM Beneficiaries, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_mtm_beneficiaries, _type_hint: number}]
    listen:
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
    - Community District: drugs.citizen_district_name
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
      Community Village: drugs.citizen_village_name
      Date: drugs.citizen_screened_date
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Date: mtm_beneficiary.mtm_start_date
    row: 38
    col: 0
    width: 24
    height: 9
  - name: HUD Wise
    title: HUD Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_name, population.citizen_district_gid,
        population.total_population, population.citizen_village_type, population.citizen_hud_name,
        population.citizen_hud_gid]
      filters:
        population.citizen_village_type: "-OT"
      sorts: [population.total_population desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.Total_screenings, screening.citizen_village_type,
        screening.citizen_hud_name]
      filters:
        screening.citizen_village_type: "-OT"
      sorts: [screening.Total_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: screening.citizen_village_type
        source_field_name: population.citizen_village_type
      - field_name: screening.citizen_hud_name
        source_field_name: population.citizen_hud_name
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.citizen_district_name, drugs.total_drugs_issued, drugs.citizen_village_type,
        drugs.citizen_hud_name]
      filters:
        drugs.citizen_village_type: "-OT"
      sorts: [drugs.total_drugs_issued desc]
      limit: 5000
      join_fields:
      - field_name: drugs.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: drugs.citizen_village_type
        source_field_name: population.citizen_village_type
      - field_name: drugs.citizen_hud_name
        source_field_name: population.citizen_hud_name
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.total_confirmed_MTM_beneficiary,
        mtm_beneficiary.citizen_village_type, mtm_beneficiary.citizen_hud_name]
      filters:
        mtm_beneficiary.citizen_village_type: "-OT"
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
      limit: 5000
      column_limit: 50
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: mtm_beneficiary.citizen_village_type
        source_field_name: population.citizen_village_type
      - field_name: mtm_beneficiary.citizen_hud_name
        source_field_name: population.citizen_hud_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.citizen_village_type: Community Village type
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
    series_column_widths:
      population.citizen_district_name: 200
      population.citizen_district_gid: 200
      population.citizen_village_type: 500
      population.total_population: 200
      screening.Total_screenings: 200
      drugs.total_drugs_issued: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      total_population: 200
      total_screenings: 200
      total_drugs_issued: 200
      total_mtm_beneficiaries: 200
      population.citizen_hud_gid: 200
      population.citizen_hud_name: 200
      VP_total_population: 169
      VP_total_screenings: 169
      VP_total_drugs_issued: 153
      VP_total_mtm_beneficiaries: 155
      Other_total_population: 188
      Other_total_screenings: 169
      Other_total_drugs_issued: 157
      Other_total_mtm_beneficiaries: 156
      CO_total_population: 169
      CO_total_screenings: 141
      CO_total_drugs_issued: 141
      CO_total_mtm_beneficiaries: 140
      TP_total_population: 155
      TP_total_screenings: 143
      TP_total_drugs_issued: 143
      TP_total_mtm_beneficiaries: 142
      MP_total_population: 140
      MP_total_screenings: 129
      MP_total_drugs_issued: 129
      MP_total_mtm_beneficiaries: 127
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_village_type:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      total_population:
        align: center
      total_screenings:
        align: center
      total_drugs_issued:
        align: center
      total_mtm_beneficiaries:
        align: center
      population.citizen_hud_gid:
        align: center
      population.citizen_hud_name:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#ffffff"
    header_background_color: "#162eff"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [population.total_population, screening.Total_screenings, drugs.total_drugs_issued,
      mtm_beneficiary.total_confirmed_MTM_beneficiary]
    hide_totals: false
    hide_row_totals: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_village_type,
      total_population, total_screenings, total_drugs_issued, total_mtm_beneficiaries]
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
        label: Population Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: population.total_population
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.total_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=320"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
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
        label: Screening Total Screenings
        label_from_parameter:
        label_short: Total Screenings
        map_layer:
        name: screening.Total_screenings
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
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Total Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Total_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=454"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
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
        label: Drugs Total drugs issued
        label_from_parameter:
        label_short: Total drugs issued
        map_layer:
        name: drugs.total_drugs_issued
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
        view_label: Drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Total drugs issued
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.total_drugs_issued
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=254"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
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
        label: Mtm Beneficiary Total Confirmed MTM Beneficiary
        label_from_parameter:
        label_short: Total Confirmed MTM Beneficiary
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Total Confirmed MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=293"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
        aggregate: true
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
        label: Population Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: population.citizen_district_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=62"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_district_name "
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
        label: Population Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: population.citizen_district_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=56"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_district_gid "
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
        label: Population Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: population.citizen_hud_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=92"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_hud_name "
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
        label: Population Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: population.citizen_hud_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=86"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_hud_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Total Population
        name: total_population
        expression: if(${population.total_population}>0,${population.total_population},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Total screenings
        name: total_screenings
        expression: if(${screening.Total_screenings}>0,${screening.Total_screenings},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Total drugs issued
        name: total_drugs_issued
        expression: if(${drugs.total_drugs_issued}>0,${drugs.total_drugs_issued},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Total MTM Beneficiaries
        name: total_mtm_beneficiaries
        expression: if(${mtm_beneficiary.total_confirmed_MTM_beneficiary}>0,${mtm_beneficiary.total_confirmed_MTM_beneficiary},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      pivots:
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
        label: Population Citizen Village Type
        label_from_parameter:
        label_short: Citizen Village Type
        map_layer:
        name: population.citizen_village_type
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Village Type
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_village_type
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=235"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: if (${TABLE}.citizen_village_type is null, "Other", ${TABLE}.citizen_village_type)
        sql_case:
        filters:
        times_used: 0
    pivots: [population.citizen_village_type]
    dynamic_fields: [{category: table_calculation, expression: 'if(${population.total_population}>0,${population.total_population},0)',
        label: Total Population, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_population, _type_hint: number},
      {category: table_calculation, expression: 'if(${screening.Total_screenings}>0,${screening.Total_screenings},0)',
        label: Total screenings, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_screenings, _type_hint: number},
      {category: table_calculation, expression: 'if(${drugs.total_drugs_issued}>0,${drugs.total_drugs_issued},0)',
        label: Total drugs issued, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_drugs_issued, _type_hint: number},
      {category: table_calculation, expression: 'if(${mtm_beneficiary.total_confirmed_MTM_beneficiary}>0,${mtm_beneficiary.total_confirmed_MTM_beneficiary},0)',
        label: Total MTM Beneficiaries, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_mtm_beneficiaries, _type_hint: number}]
    listen:
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
    - Community District: drugs.citizen_district_name
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
      Community Village: drugs.citizen_village_name
      Date: drugs.citizen_screened_date
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Date: mtm_beneficiary.mtm_start_date
    row: 47
    col: 0
    width: 24
    height: 9
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_name, population.citizen_district_gid,
        population.total_population, population.citizen_village_type, population.citizen_hud_name,
        population.citizen_hud_gid, population.citizen_block_name, population.citizen_block_gid]
      filters:
        population.citizen_village_type: "-OT"
      sorts: [population.total_population desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.Total_screenings, screening.citizen_village_type,
        screening.citizen_hud_name, screening.citizen_block_name]
      filters:
        screening.citizen_village_type: "-OT"
      sorts: [screening.Total_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: screening.citizen_village_type
        source_field_name: population.citizen_village_type
      - field_name: screening.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: screening.citizen_block_name
        source_field_name: population.citizen_block_name
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.citizen_district_name, drugs.total_drugs_issued, drugs.citizen_village_type,
        drugs.citizen_hud_name, drugs.citizen_block_name]
      filters:
        drugs.citizen_village_type: "-OT"
      sorts: [drugs.total_drugs_issued desc]
      limit: 5000
      join_fields:
      - field_name: drugs.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: drugs.citizen_village_type
        source_field_name: population.citizen_village_type
      - field_name: drugs.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: drugs.citizen_block_name
        source_field_name: population.citizen_block_name
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.total_confirmed_MTM_beneficiary,
        mtm_beneficiary.citizen_village_type, mtm_beneficiary.citizen_hud_name, mtm_beneficiary.citizen_block_name]
      filters:
        mtm_beneficiary.citizen_village_type: "-OT"
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
      limit: 5000
      column_limit: 50
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: mtm_beneficiary.citizen_village_type
        source_field_name: population.citizen_village_type
      - field_name: mtm_beneficiary.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: mtm_beneficiary.citizen_block_name
        source_field_name: population.citizen_block_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.citizen_village_type: Community Village type
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.citizen_block_name: Community Block
      population.citizen_block_gid: Community Block Gid
    series_column_widths:
      population.citizen_district_name: 200
      population.citizen_district_gid: 200
      population.citizen_village_type: 500
      population.total_population: 200
      screening.Total_screenings: 200
      drugs.total_drugs_issued: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      total_population: 200
      total_screenings: 200
      total_drugs_issued: 200
      total_mtm_beneficiaries: 200
      population.citizen_hud_gid: 200
      population.citizen_hud_name: 200
      population.citizen_block_name: 200
      population.citizen_block_gid: 200
      Other_total_population: 182
      Other_total_screenings: 164
      Other_total_drugs_issued: 152
      Other_total_mtm_beneficiaries: 152
      VP_total_population: 163
      VP_total_screenings: 151
      VP_total_drugs_issued: 151
      VP_total_mtm_beneficiaries: 151
      CO_total_population: 167
      CO_total_screenings: 155
      CO_total_drugs_issued: 155
      CO_total_mtm_beneficiaries: 154
      TP_total_population: 167
      TP_total_screenings: 155
      TP_total_drugs_issued: 155
      TP_total_mtm_beneficiaries: 157
      MP_total_population: 160
      MP_total_screenings: 160
      MP_total_drugs_issued: 160
      MP_total_mtm_beneficiaries: 148
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_village_type:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      total_population:
        align: center
      total_screenings:
        align: center
      total_drugs_issued:
        align: center
      total_mtm_beneficiaries:
        align: center
      population.citizen_hud_gid:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_block_name:
        align: center
      population.citizen_block_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#ffffff"
    header_background_color: "#162eff"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [population.total_population, screening.Total_screenings, drugs.total_drugs_issued,
      mtm_beneficiary.total_confirmed_MTM_beneficiary]
    hide_totals: false
    hide_row_totals: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
      population.citizen_block_gid, population.citizen_village_type, total_population,
      total_screenings, total_drugs_issued, total_mtm_beneficiaries]
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
        label: Population Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: population.total_population
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.total_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=320"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
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
        label: Screening Total Screenings
        label_from_parameter:
        label_short: Total Screenings
        map_layer:
        name: screening.Total_screenings
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
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Total Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Total_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=454"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
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
        label: Drugs Total drugs issued
        label_from_parameter:
        label_short: Total drugs issued
        map_layer:
        name: drugs.total_drugs_issued
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
        view_label: Drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Total drugs issued
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.total_drugs_issued
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=254"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
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
        label: Mtm Beneficiary Total Confirmed MTM Beneficiary
        label_from_parameter:
        label_short: Total Confirmed MTM Beneficiary
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Total Confirmed MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=293"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
        aggregate: true
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
        label: Population Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: population.citizen_district_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=62"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_district_name "
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
        label: Population Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: population.citizen_district_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=56"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_district_gid "
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
        label: Population Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: population.citizen_hud_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=92"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_hud_name "
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
        label: Population Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: population.citizen_hud_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=86"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_hud_gid "
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
        label: Population Citizen Block Name
        label_from_parameter:
        label_short: Citizen Block Name
        map_layer:
        name: population.citizen_block_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_block_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=16"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_block_name "
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
        label: Population Citizen Block Gid
        label_from_parameter:
        label_short: Citizen Block Gid
        map_layer:
        name: population.citizen_block_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Block Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_block_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=10"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_block_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Total Population
        name: total_population
        expression: if(${population.total_population}>0,${population.total_population},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Total screenings
        name: total_screenings
        expression: if(${screening.Total_screenings}>0,${screening.Total_screenings},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Total drugs issued
        name: total_drugs_issued
        expression: if(${drugs.total_drugs_issued}>0,${drugs.total_drugs_issued},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Total MTM Beneficiaries
        name: total_mtm_beneficiaries
        expression: if(${mtm_beneficiary.total_confirmed_MTM_beneficiary}>0,${mtm_beneficiary.total_confirmed_MTM_beneficiary},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      pivots:
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
        label: Population Citizen Village Type
        label_from_parameter:
        label_short: Citizen Village Type
        map_layer:
        name: population.citizen_village_type
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Village Type
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_village_type
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=235"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: if (${TABLE}.citizen_village_type is null, "Other", ${TABLE}.citizen_village_type)
        sql_case:
        filters:
        times_used: 0
    pivots: [population.citizen_village_type]
    dynamic_fields: [{category: table_calculation, expression: 'if(${population.total_population}>0,${population.total_population},0)',
        label: Total Population, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_population, _type_hint: number},
      {category: table_calculation, expression: 'if(${screening.Total_screenings}>0,${screening.Total_screenings},0)',
        label: Total screenings, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_screenings, _type_hint: number},
      {category: table_calculation, expression: 'if(${drugs.total_drugs_issued}>0,${drugs.total_drugs_issued},0)',
        label: Total drugs issued, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_drugs_issued, _type_hint: number},
      {category: table_calculation, expression: 'if(${mtm_beneficiary.total_confirmed_MTM_beneficiary}>0,${mtm_beneficiary.total_confirmed_MTM_beneficiary},0)',
        label: Total MTM Beneficiaries, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_mtm_beneficiaries, _type_hint: number}]
    listen:
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
    - Community District: drugs.citizen_district_name
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
      Community Village: drugs.citizen_village_name
      Date: drugs.citizen_screened_date
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Date: mtm_beneficiary.mtm_start_date
    row: 56
    col: 0
    width: 24
    height: 9
  - name: Village Wise
    title: Village Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_name, population.citizen_district_gid,
        population.total_population, population.citizen_village_type, population.citizen_hud_name,
        population.citizen_hud_gid, population.citizen_block_name, population.citizen_block_gid,
        population.citizen_village_name, population.citizen_village_gid]
      filters:
        population.citizen_village_type: "-OT"
      sorts: [population.total_population desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.Total_screenings, screening.citizen_village_type,
        screening.citizen_hud_name, screening.citizen_block_name, screening.citizen_village_name]
      filters:
        screening.citizen_village_type: "-OT"
      sorts: [screening.Total_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: screening.citizen_village_type
        source_field_name: population.citizen_village_type
      - field_name: screening.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: screening.citizen_block_name
        source_field_name: population.citizen_block_name
      - field_name: screening.citizen_village_name
        source_field_name: population.citizen_village_name
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.citizen_district_name, drugs.total_drugs_issued, drugs.citizen_village_type,
        drugs.citizen_hud_name, drugs.citizen_block_name, drugs.citizen_village_name]
      filters:
        drugs.citizen_village_type: "-OT"
      sorts: [drugs.total_drugs_issued desc]
      limit: 5000
      join_fields:
      - field_name: drugs.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: drugs.citizen_village_type
        source_field_name: population.citizen_village_type
      - field_name: drugs.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: drugs.citizen_block_name
        source_field_name: population.citizen_block_name
      - field_name: drugs.citizen_village_name
        source_field_name: population.citizen_village_name
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.total_confirmed_MTM_beneficiary,
        mtm_beneficiary.citizen_village_type, mtm_beneficiary.citizen_hud_name, mtm_beneficiary.citizen_block_name,
        mtm_beneficiary.citizen_village_name]
      filters:
        mtm_beneficiary.citizen_village_type: "-OT"
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
      limit: 5000
      column_limit: 50
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: mtm_beneficiary.citizen_village_type
        source_field_name: population.citizen_village_type
      - field_name: mtm_beneficiary.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: mtm_beneficiary.citizen_block_name
        source_field_name: population.citizen_block_name
      - field_name: mtm_beneficiary.citizen_village_name
        source_field_name: population.citizen_village_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.citizen_village_type: Community Village type
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.citizen_block_name: Community Block
      population.citizen_block_gid: Community Block Gid
      population.citizen_village_name: Community Village
      population.citizen_village_gid: Community Village Gid
    series_column_widths:
      population.citizen_district_name: 200
      population.citizen_district_gid: 200
      population.citizen_village_type: 500
      population.total_population: 200
      screening.Total_screenings: 200
      drugs.total_drugs_issued: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      total_population: 200
      total_screenings: 200
      total_drugs_issued: 200
      total_mtm_beneficiaries: 200
      population.citizen_hud_gid: 200
      population.citizen_hud_name: 200
      population.citizen_block_name: 200
      population.citizen_block_gid: 200
      population.citizen_village_gid: 200
      population.citizen_village_name: 200
      Other_total_population: 139
      Other_total_screenings: 139
      Other_total_drugs_issued: 139
      Other_total_mtm_beneficiaries: 139
      TP_total_population: 169
      TP_total_screenings: 156
      TP_total_drugs_issued: 156
      TP_total_mtm_beneficiaries: 156
      VP_total_population: 153
      VP_total_screenings: 153
      VP_total_drugs_issued: 153
      VP_total_mtm_beneficiaries: 147
      CO_total_population: 166
      CO_total_screenings: 153
      CO_total_drugs_issued: 153
      CO_total_mtm_beneficiaries: 154
      MP_total_population: 154
      MP_total_screenings: 154
      MP_total_drugs_issued: 154
      MP_total_mtm_beneficiaries: 155
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_village_type:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      total_population:
        align: center
      total_screenings:
        align: center
      total_drugs_issued:
        align: center
      total_mtm_beneficiaries:
        align: center
      population.citizen_hud_gid:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_block_name:
        align: center
      population.citizen_block_gid:
        align: center
      population.citizen_village_name:
        align: center
      population.citizen_village_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#ffffff"
    header_background_color: "#162eff"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [population.total_population, screening.Total_screenings, drugs.total_drugs_issued,
      mtm_beneficiary.total_confirmed_MTM_beneficiary]
    hide_totals: false
    hide_row_totals: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
      population.citizen_block_gid, population.citizen_village_name, population.citizen_village_gid,
      population.citizen_village_type, total_population, total_screenings, total_drugs_issued,
      total_mtm_beneficiaries]
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
        label: Population Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: population.total_population
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.total_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=320"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
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
        label: Screening Total Screenings
        label_from_parameter:
        label_short: Total Screenings
        map_layer:
        name: screening.Total_screenings
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
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Total Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Total_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=454"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
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
        label: Drugs Total drugs issued
        label_from_parameter:
        label_short: Total drugs issued
        map_layer:
        name: drugs.total_drugs_issued
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
        view_label: Drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Total drugs issued
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.total_drugs_issued
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=254"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
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
        label: Mtm Beneficiary Total Confirmed MTM Beneficiary
        label_from_parameter:
        label_short: Total Confirmed MTM Beneficiary
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Total Confirmed MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=293"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
        aggregate: true
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
        label: Population Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: population.citizen_district_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=62"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_district_name "
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
        label: Population Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: population.citizen_district_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=56"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_district_gid "
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
        label: Population Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: population.citizen_hud_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=92"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_hud_name "
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
        label: Population Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: population.citizen_hud_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=86"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_hud_gid "
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
        label: Population Citizen Block Name
        label_from_parameter:
        label_short: Citizen Block Name
        map_layer:
        name: population.citizen_block_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_block_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=16"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_block_name "
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
        label: Population Citizen Block Gid
        label_from_parameter:
        label_short: Citizen Block Gid
        map_layer:
        name: population.citizen_block_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Block Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_block_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=10"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_block_gid "
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
        label: Population Citizen Village Name
        label_from_parameter:
        label_short: Citizen Village Name
        map_layer:
        name: population.citizen_village_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Village Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_village_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=145"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_village_name "
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
        label: Population Citizen Village Gid
        label_from_parameter:
        label_short: Citizen Village Gid
        map_layer:
        name: population.citizen_village_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Village Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_village_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=139"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_village_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Total Population
        name: total_population
        expression: if(${population.total_population}>0,${population.total_population},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Total screenings
        name: total_screenings
        expression: if(${screening.Total_screenings}>0,${screening.Total_screenings},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Total drugs issued
        name: total_drugs_issued
        expression: if(${drugs.total_drugs_issued}>0,${drugs.total_drugs_issued},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Total MTM Beneficiaries
        name: total_mtm_beneficiaries
        expression: if(${mtm_beneficiary.total_confirmed_MTM_beneficiary}>0,${mtm_beneficiary.total_confirmed_MTM_beneficiary},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      pivots:
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
        label: Population Citizen Village Type
        label_from_parameter:
        label_short: Citizen Village Type
        map_layer:
        name: population.citizen_village_type
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Village Type
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_village_type
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=235"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: if (${TABLE}.citizen_village_type is null, "Other", ${TABLE}.citizen_village_type)
        sql_case:
        filters:
        times_used: 0
    pivots: [population.citizen_village_type]
    dynamic_fields: [{category: table_calculation, expression: 'if(${population.total_population}>0,${population.total_population},0)',
        label: Total Population, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_population, _type_hint: number},
      {category: table_calculation, expression: 'if(${screening.Total_screenings}>0,${screening.Total_screenings},0)',
        label: Total screenings, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_screenings, _type_hint: number},
      {category: table_calculation, expression: 'if(${drugs.total_drugs_issued}>0,${drugs.total_drugs_issued},0)',
        label: Total drugs issued, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_drugs_issued, _type_hint: number},
      {category: table_calculation, expression: 'if(${mtm_beneficiary.total_confirmed_MTM_beneficiary}>0,${mtm_beneficiary.total_confirmed_MTM_beneficiary},0)',
        label: Total MTM Beneficiaries, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_mtm_beneficiaries, _type_hint: number}]
    listen:
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Date: population.citizen_created_date
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
    - Community District: drugs.citizen_district_name
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
      Community Village: drugs.citizen_village_name
      Date: drugs.citizen_screened_date
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Date: mtm_beneficiary.mtm_start_date
    row: 65
    col: 0
    width: 24
    height: 9
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
    explore: population
    listens_to_filters: [Community Hud, Community Village, Community Block]
    field: population.citizen_district_name
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
    explore: population
    listens_to_filters: [Community District, Community Village, Community Block]
    field: population.citizen_hud_name
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
    explore: population
    listens_to_filters: [Community District, Community Hud, Community Village]
    field: population.citizen_block_name
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
    explore: population
    listens_to_filters: [Community District, Community Hud, Community Block]
    field: population.citizen_village_name
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
    model: tnphr-prod-kpi
    explore: population
    listens_to_filters: []
    field: population.citizen_created_date
