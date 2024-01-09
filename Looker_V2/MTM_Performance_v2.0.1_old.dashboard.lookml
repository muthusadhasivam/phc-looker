- dashboard: mtm_performance_v2_0_1
  title: MTM Performance v2.0.1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 0pZwMmmklYZZi5UMBVP8HX
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
    note_state: collapsed
    note_display: hover
    note_text: "Population Count - Based on Community \n<br><br>\nFilters Can be Applied\
      \ - Community District, Community HUD, Community Block, Community Village, Community\
      \ Facility"
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Community Facility: population.citizen_facility_name
    row: 6
    col: 0
    width: 6
    height: 6
  - title: Unique Screenings Gender Wise
    name: Unique Screenings Gender Wise
    model: tnphr-prod-kpi
    explore: screening
    type: looker_column
    fields: [screening.unique_screening_male, screening.unique_screening_female, screening.unique_screening_other]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '"
          "', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
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
    y_axes: [{label: Unique Screenings, orientation: left, series: [{axisId: screening.unique_screening_male,
            id: screening.unique_screening_male, name: Unique Screenings Male}, {
            axisId: screening.unique_screening_female, id: screening.unique_screening_female,
            name: Unique Screenings Female}, {axisId: screening.unique_screening_other,
            id: screening.unique_screening_other, name: Unique Screenings Other}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: log}]
    x_axis_label: Gender
    series_types: {}
    series_colors:
      screening.unique_screening_female: "#E52592"
      screening.unique_screening_other: "#E8710A"
    series_labels:
      screening.unique_screening_male: Unique Screenings Male
      screening.unique_screening_female: Unique Screenings Female
      screening.unique_screening_other: Unique Screenings Other
    series_point_styles:
      screening.unique_screening_female: auto
    column_spacing_ratio: 0.5
    column_group_spacing_ratio:
    show_dropoff: false
    defaults_version: 1
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 6
    col: 6
    width: 10
    height: 6
  - title: Age Wise Unique Screenings
    name: Age Wise Unique Screenings
    model: tnphr-prod-kpi
    explore: screening
    type: looker_pie
    fields: [screening.age_interval, screening.unique_screenings]
    fill_fields: [screening.age_interval]
    sorts: [screening.age_interval]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    series_labels:
      screening.unique_screening_male: Males
      screening.unique_screening_female: Females
      screening.unique_screening_other: Others
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Unique Screenings, orientation: left, series: [{axisId: screening.unique_screening_male,
            id: screening.unique_screening_male, name: Unique Screening Male}, {axisId: screening.unique_screening_female,
            id: screening.unique_screening_female, name: Unique Screening Female},
          {axisId: screening.unique_screening_other, id: screening.unique_screening_other,
            name: Unique Screening Other}], showLabels: true, showValues: true, unpinAxis: false,
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
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Individual Screenings
    name: Individual Screenings
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.unique_screenings]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_labels:
      screening.unique_screening_male: Males
      screening.unique_screening_female: Females
      screening.unique_screening_other: Others
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Unique Screenings, orientation: left, series: [{axisId: screening.unique_screening_male,
            id: screening.unique_screening_male, name: Unique Screening Male}, {axisId: screening.unique_screening_female,
            id: screening.unique_screening_female, name: Unique Screening Female},
          {axisId: screening.unique_screening_other, id: screening.unique_screening_other,
            name: Unique Screening Other}], showLabels: true, showValues: true, unpinAxis: false,
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
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 15
    col: 0
    width: 6
    height: 3
  - title: Total Screenings
    name: Total Screenings
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Total_screenings]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    custom_color: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_labels:
      screening.unique_screening_male: Males
      screening.unique_screening_female: Females
      screening.unique_screening_other: Others
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Unique Screenings, orientation: left, series: [{axisId: screening.unique_screening_male,
            id: screening.unique_screening_male, name: Unique Screening Male}, {axisId: screening.unique_screening_female,
            id: screening.unique_screening_female, name: Unique Screening Female},
          {axisId: screening.unique_screening_other, id: screening.unique_screening_other,
            name: Unique Screening Other}], showLabels: true, showValues: true, unpinAxis: false,
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
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 12
    col: 0
    width: 6
    height: 3
  - title: Top 5 screened Blocks
    name: Top 5 screened Blocks
    model: tnphr-prod-kpi
    explore: screening
    type: looker_column
    fields: [screening.Total_screenings, screening.citizen_block_name, screening.citizen_district_name]
    sorts: [screening.Total_screenings desc]
    limit: 5000
    dynamic_fields: [{table_calculation: block_name, label: Block Name, expression: 'concat(${screening.citizen_block_name},"
          " , "(","District-", ${screening.citizen_district_name}, ")")', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: string}]
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
    limit_displayed_rows: true
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: Total Screenings, orientation: left, series: [{axisId: screening.Total_screenings,
            id: screening.Total_screenings, name: Total Screenings}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Blocks
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors:
      screening.Total_screenings: "#1A73E8"
    series_labels:
      screening.unique_screening_male: Males
      screening.unique_screening_female: Females
      screening.unique_screening_other: Others
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    defaults_version: 1
    hidden_fields: [screening.citizen_district_name, screening.citizen_block_name]
    hide_totals: false
    hide_row_totals: false
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 12
    col: 16
    width: 8
    height: 6
  - title: Role based Screenings
    name: Role based Screenings
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.Total_screenings, screening.role_name]
    sorts: [screening.Total_screenings desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.unique_screening_male: Males
      screening.unique_screening_female: Females
      screening.unique_screening_other: Others
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: screening.Total_screenings,
            id: screening.Total_screenings, name: Total Screenings}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    series_types: {}
    series_colors:
      screening.Total_screenings: "#1A73E8"
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    defaults_version: 1
    hidden_fields: []
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 30
    col: 0
    width: 24
    height: 7
  - title: Total Drugs issued
    name: Total Drugs issued
    model: tnphr-prod-kpi
    explore: drugs
    type: single_value
    fields: [drugs.total_drugs_issued]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#F9AB00",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Community District: drugs.citizen_district_name
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
      Community Village: drugs.citizen_village_name
      Institution Owner: drugs.user_owner_name
      Institution Facility: drugs.user_facility_name
      Institution District: drugs.user_district_name
      Institution Hud: drugs.user_hud_name
      Institution Block: drugs.user_block_name
      Community Facility: drugs.citizen_facility_name
      Institution Directorate: drugs.user_directorate
      Institution Role: drugs.role_name
      Date: drugs.citizen_screened_date
    row: 18
    col: 0
    width: 6
    height: 2
  - title: Top 10 Drugs Issued
    name: Top 10 Drugs Issued
    model: tnphr-prod-kpi
    explore: drugs
    type: looker_bar
    fields: [drugs.total_drugs_issued, drugs.drug_name]
    sorts: [drugs.total_drugs_issued desc]
    limit: 500
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
    limit_displayed_rows: true
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      drugs.total_drugs_issued: "#F9AB00"
    defaults_version: 1
    listen:
      Community District: drugs.citizen_district_name
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
      Community Village: drugs.citizen_village_name
      Institution Owner: drugs.user_owner_name
      Institution Facility: drugs.user_facility_name
      Institution District: drugs.user_district_name
      Institution Hud: drugs.user_hud_name
      Institution Block: drugs.user_block_name
      Community Facility: drugs.citizen_facility_name
      Institution Directorate: drugs.user_directorate
      Institution Role: drugs.role_name
      Date: drugs.citizen_screened_date
    row: 18
    col: 16
    width: 8
    height: 6
  - title: Number of Screened
    name: Number of Screened
    model: tnphr-prod-kpi
    explore: screening
    type: looker_column
    fields: [screening.user_facility_type, screening.user_category_name, screening.unique_screenings]
    filters:
      screening.user_category_name: Urban HSC,Urban PHC,Rural HSC,Rural PHC,GH,MCH
        Hosp
    sorts: [screening.unique_screenings desc]
    limit: 500
    dynamic_fields: [{table_calculation: category, label: Category, expression: 'concat(${screening.user_facility_type},"
          " , "("," Category: ", ${screening.user_category_name}, ")")', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: string}]
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
    y_axes: [{label: No of individuals screened, orientation: left, series: [{axisId: screening.unique_screenings,
            id: screening.unique_screenings, name: Unique Screenings}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    defaults_version: 1
    hidden_fields: [screening.user_category_name, screening.user_facility_type]
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 61
    col: 12
    width: 12
    height: 7
  - title: Total number of Referred
    name: Total number of Referred
    model: tnphr-prod-kpi
    explore: diseases
    type: looker_column
    fields: [diseases.refferal_count, diseases.user_facility_category_name]
    filters:
      diseases.is_citizen_refferal: 'yes'
      diseases.user_facility_category_name: Rural HSC,Rural PHC,Urban HSC,Urban PHC,GH,MCH
        Hosp
    sorts: [diseases.refferal_count desc]
    limit: 500
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
    series_colors:
      diseases.refferal_count: "#E8710A"
    defaults_version: 1
    listen:
      Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Institution Owner: diseases.user_facility_owner_name
      Institution Facility: diseases.user_facility_name
      Institution District: diseases.user_district_name
      Institution Hud: diseases.user_hud_name
      Institution Block: diseases.user_block_name
      Community Facility: diseases.citizen_facility_name
      Institution Directorate: diseases.user_directorate
      Institution Role: diseases.role_name
    row: 61
    col: 0
    width: 12
    height: 7
  - name: District Wise Screening Count
    title: District Wise Screening Count
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: single_value
      fields: [population.total_population, population.citizen_district_name, population.citizen_district_gid]
      filters:
        population.user_role: ''
      sorts: [population.total_population desc]
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
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.unique_screenings, screening.Total_screenings,
        screening.screened_only_once, screening.multiple_times_screened, screening.unique_screenings_18_29,
        screening.unique_screenings_gt_30]
      sorts: [screening.unique_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: population.citizen_district_name
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs]
      sorts: [mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs desc]
      limit: 5000
      column_limit: 50
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_name
        source_field_name: population.citizen_district_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.total_population, screening.unique_screenings, screening.Total_screenings,
      screening.unique_screenings_18_29, screening.unique_screenings_gt_30, screening.screened_only_once,
      screening.multiple_times_screened, mtm_drug.no_of_beneficiaries_received_drugs]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    truncate_header: false
    size_to_fit: false
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.total_population: Total Population
      screening.unique_screenings: Unique Screenings
      screening.Total_screenings: Total Screenings
      screening.screened_only_once: Screened only Once
      screening.multiple_times_screened: Multiple times screened
      mtm_drug.no_of_beneficiaries_received_drugs: No of Beneficiaries Received Drugs
      q3_screening.unique_screenings: Unique screened (18-29)
      q4_screening.unique_screenings: Unique screened (30 and above)
      screening.unique_screenings_18_29: Unique Screened (18-29)
      screening.unique_screenings_gt_30: Unique Screened (30 and above)
    series_column_widths:
      population.citizen_district_name: 183
      population.citizen_district_gid: 183
      population.total_population: 183
      screening.unique_screenings: 183
      screening.Total_screenings: 183
      screening.screened_only_once: 183
      screening.multiple_times_screened: 183
      mtm_drug.no_of_beneficiaries_received_drugs: 183
      q3_screening.unique_screenings: 200
      q4_screening.unique_screenings: 200
      screening.unique_screenings_18_29: 200
      screening.unique_screenings_gt_30: 200
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.district_name:
        align: center
      population.Population_age_between_18_and_29:
        align: center
      population.Population_age_gt_30:
        align: center
      screening.unique_screenings:
        align: center
      screening.Total_screenings:
        align: center
      population.total_population:
        align: center
      population.citizen_district_name:
        align: center
      drugs.mtm_beneficiaries_received_drugs:
        align: center
      screening.screened_only_once:
        align: center
      screening.multiple_times_screened:
        align: center
      population.citizen_district_gid:
        align: center
      q3_screening.unique_screenings:
        align: center
      mtm_drug.no_of_beneficiaries_received_drugs:
        align: center
      q4_screening.unique_screenings:
        align: center
      screening.unique_screenings_18_29:
        align: center
      screening.unique_screenings_gt_30:
        align: center
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcfff9"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
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
        label: population Total Population
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
        view_label: population
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
        label: screening Unique Screenings
        label_from_parameter:
        label_short: Unique Screenings
        map_layer:
        name: screening.unique_screenings
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
        field_group_variant: Unique Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=353"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: screening Total Screenings
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
        view_label: screening
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=407"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
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
        label: screening Screened Only Once
        label_from_parameter:
        label_short: Screened Only Once
        map_layer:
        name: screening.screened_only_once
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Screened Only Once
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.screened_only_once
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=675"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql:
        sql_case:
        filters:
        - field: screening.citizen_screening_visits
          condition: "%screened only once%"
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
        label: screening Multiple Times Screened
        label_from_parameter:
        label_short: Multiple Times Screened
        map_layer:
        name: screening.multiple_times_screened
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Multiple Times Screened
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.multiple_times_screened
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=680"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql:
        sql_case:
        filters:
        - field: screening.citizen_screening_visits
          condition: "%multiple times screened%"
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
        label: screening Unique Screened (18-29)
        label_from_parameter:
        label_short: Unique Screened (18-29)
        map_layer:
        name: screening.unique_screenings_18_29
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
        field_group_variant: Unique Screened (18-29)
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings_18_29
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=362"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        - field: screening.age_interval
          condition: 18 to 29
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
        label: screening Unique Screened (30 and above)
        label_from_parameter:
        label_short: Unique Screened (30 and above)
        map_layer:
        name: screening.unique_screenings_gt_30
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
        field_group_variant: Unique Screened (30 and above)
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings_gt_30
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=371"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        - field: screening.age_interval
          condition: 30 or Above
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
        label: Mtm Drug No of Beneficiaries Received Drugs
        label_from_parameter:
        label_short: No of Beneficiaries Received Drugs
        map_layer:
        name: mtm_drug.no_of_beneficiaries_received_drugs
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
        view: mtm_drug
        view_label: Mtm Drug
        dynamic: false
        week_start_day: monday
        original_view: mtm_drug
        dimension_group:
        error:
        field_group_variant: No of Beneficiaries Received Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_drug
        suggest_dimension: mtm_drug.no_of_beneficiaries_received_drugs
        suggest_explore: mtm_drug
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_drug.view.lkml?line=338"
        permanent: true
        source_file: tnphr_views/mtm_drug.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_drug.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        - field: mtm_drug.is_drugs_received
          condition: 'yes'
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
        label: population Citizen District Name
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
        view_label: population
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
        label: population Citizen District Gid
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
        view_label: population
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
      table_calculations: []
      pivots: []
    listen:
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Community Facility: population.citizen_facility_name
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility: mtm_beneficiary.user_facility_name
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Community Facility: mtm_beneficiary.citizen_facility_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution Role: mtm_beneficiary.role_name
      Date: mtm_beneficiary.mtm_start_date
    row: 37
    col: 6
    width: 12
    height: 6
  - title: Screening Count in Past 10 weeks + 4 weeks Projection
    name: Screening Count in Past 10 weeks + 4 weeks Projection
    model: tnphr-prod-kpi
    explore: screening
    type: looker_line
    fields: [screening.unique_screenings, screening.screened_week]
    fill_fields: [screening.screened_week]
    filters:
      screening.screened_week: 10 weeks
    sorts: [screening.screened_week desc]
    limit: 500
    column_limit: 50
    analysis_config:
      forecasting:
      - confidence_interval: 0.8
        field_name: screening.unique_screenings
        forecast_n: 4
        forecast_interval: week
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_label: Weeks
    defaults_version: 1
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 12
    col: 6
    width: 10
    height: 6
  - title: Individual with Drugs Issues
    name: Individual with Drugs Issues
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.unique_drugs_count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#F9AB00",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: 99d2d3ac-7579-41a0-b16c-a381b7ae96da}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 20
    col: 0
    width: 6
    height: 2
  - title: Drugs Issued Count with Past 10 weeks + 4 weeks Projection
    name: Drugs Issued Count with Past 10 weeks + 4 weeks Projection
    model: tnphr-prod-kpi
    explore: screening
    type: looker_line
    fields: [screening.unique_drugs_count, screening.screened_week]
    fill_fields: [screening.screened_week]
    filters:
      screening.screened_week: 10 weeks
    sorts: [screening.screened_week desc]
    limit: 500
    column_limit: 50
    analysis_config:
      forecasting:
      - confidence_interval: 0.8
        field_name: screening.unique_drugs_count
        forecast_n: 4
        forecast_interval: week
        seasonality: 6
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Individual with Drugs Issues, orientation: left, series: [{axisId: screening.unique_drugs_count,
            id: screening.unique_drugs_count, name: Unique Drugs Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Weeks
    series_types: {}
    series_colors:
      screening.unique_drugs_count: "#F9AB00"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      screening.unique_drugs_count:
        is_active: false
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 18
    col: 6
    width: 10
    height: 6
  - title: District wise Drugs Issued
    name: District wise Drugs Issued
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.unique_drugs_count, screening.citizen_district_name, screening.citizen_district_gid]
    filters: {}
    sorts: [screening.unique_drugs_count desc]
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.unique_drugs_count: Individual with Drugs Issued
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
    series_column_widths:
      screening.citizen_district_name: 183
      screening.citizen_district_gid: 183
      screening.unique_drugs_count: 183
    series_cell_visualizations:
      screening.unique_drugs_count:
        is_active: false
    series_text_format:
      screening.citizen_district_gid:
        align: center
      screening.citizen_district_name:
        align: center
      screening.unique_drugs_count:
        align: center
    header_font_color: "#222422"
    header_background_color: "#F9AB00"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 37
    col: 0
    width: 6
    height: 6
  - title: Village wise Drugs Issued
    name: Village wise Drugs Issued
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.unique_drugs_count, screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.citizen_block_name,
      screening.citizen_block_gid, screening.citizen_village_name, screening.citizen_village_gid]
    filters: {}
    sorts: [screening.unique_drugs_count desc]
    limit: 5000
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.unique_drugs_count: Individual with Drugs Issued
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
      screening.citizen_block_name: Community Block
      screening.citizen_block_gid: Community Block Gid
      screening.citizen_village_name: Community Village
      screening.citizen_village_gid: Community Village Gid
    series_column_widths:
      screening.unique_drugs_count: 183
      screening.citizen_village_gid: 183
      screening.citizen_village_name: 200
      screening.citizen_block_name: 200
      screening.citizen_block_gid: 183
      screening.citizen_hud_name: 200
      screening.citizen_hud_gid: 183
      screening.citizen_district_name: 183
      screening.citizen_district_gid: 183
    series_cell_visualizations:
      screening.unique_drugs_count:
        is_active: false
    series_text_format:
      screening.citizen_district_gid:
        align: center
      screening.citizen_district_name:
        align: center
      screening.unique_drugs_count:
        align: center
      screening.citizen_village_name:
        align: center
      screening.citizen_village_gid:
        align: center
      screening.citizen_hud_name:
        align: center
      screening.citizen_hud_gid:
        align: center
      screening.citizen_block_name:
        align: center
      screening.citizen_block_gid:
        align: center
    header_font_color: "#1d1f1d"
    header_background_color: "#F9AB00"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 55
    col: 0
    width: 6
    height: 6
  - title: HUD wise Drugs Issued
    name: HUD wise Drugs Issued
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.unique_drugs_count, screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid]
    filters: {}
    sorts: [screening.unique_drugs_count desc]
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.unique_drugs_count: Individual with Drugs Issued
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
    series_column_widths:
      screening.unique_drugs_count: 183
      screening.citizen_hud_gid: 183
      screening.citizen_hud_name: 200
      screening.citizen_district_gid: 183
      screening.citizen_district_name: 183
    series_cell_visualizations:
      screening.unique_drugs_count:
        is_active: false
    series_text_format:
      screening.citizen_district_gid:
        align: center
      screening.citizen_district_name:
        align: center
      screening.unique_drugs_count:
        align: center
      screening.citizen_hud_name:
        align: center
      screening.citizen_hud_gid:
        align: center
    header_font_color: "#0e0f0f"
    header_background_color: "#F9AB00"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 43
    col: 0
    width: 6
    height: 6
  - title: Block wise Drugs Issued
    name: Block wise Drugs Issued
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.unique_drugs_count, screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.citizen_block_name,
      screening.citizen_block_gid]
    filters: {}
    sorts: [screening.unique_drugs_count desc]
    limit: 5000
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.unique_drugs_count: Individual with Drugs Issued
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_gid: Community Hud Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_block_name: Community Block
      screening.citizen_block_gid: Community Block Gid
    series_column_widths:
      screening.citizen_district_name: 183
      screening.citizen_district_gid: 183
      screening.citizen_hud_name: 200
      screening.citizen_hud_gid: 183
      screening.citizen_block_gid: 183
      screening.citizen_block_name: 200
      screening.unique_drugs_count: 183
    series_cell_visualizations:
      screening.unique_drugs_count:
        is_active: false
    series_text_format:
      screening.citizen_district_gid:
        align: center
      screening.citizen_district_name:
        align: center
      screening.unique_drugs_count:
        align: center
      screening.citizen_block_name:
        align: center
      screening.citizen_block_gid:
        align: center
      screening.citizen_hud_name:
        align: center
      screening.citizen_hud_gid:
        align: center
    header_font_color: "#1f2120"
    header_background_color: "#F9AB00"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    row: 49
    col: 0
    width: 6
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
      <center>MTM(Makkalai Thedi Maruthuvam) Performance - Used to understand the metrics for mtm scheme implemented by the TN govt</center>
    row: 0
    col: 0
    width: 24
    height: 6
  - name: HUD Wise Screening Count
    title: HUD Wise Screening Count
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: single_value
      fields: [population.total_population, population.citizen_district_name, population.citizen_district_gid,
        population.citizen_hud_name, population.citizen_hud_gid]
      filters:
        population.user_role: ''
      sorts: [population.total_population desc]
      limit: 5000
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
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.unique_screenings, screening.Total_screenings,
        screening.screened_only_once, screening.multiple_times_screened, screening.citizen_hud_name,
        screening.unique_screenings_18_29, screening.unique_screenings_gt_30]
      sorts: [screening.unique_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: screening.citizen_hud_name
        source_field_name: population.citizen_hud_name
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_hud_name,
        mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs]
      sorts: [mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs desc]
      limit: 5000
      column_limit: 50
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: mtm_beneficiary.citizen_hud_name
        source_field_name: population.citizen_hud_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.total_population,
      screening.unique_screenings, screening.Total_screenings, screening.unique_screenings_18_29,
      screening.unique_screenings_gt_30, screening.screened_only_once, screening.multiple_times_screened,
      mtm_drug.no_of_beneficiaries_received_drugs]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    truncate_header: false
    size_to_fit: false
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.total_population: Total Population
      screening.unique_screenings: Unique Screenings
      screening.Total_screenings: Total Screenings
      screening.screened_only_once: Screened only Once
      screening.multiple_times_screened: Multiple times screened
      mtm_drug.no_of_beneficiaries_received_drugs: No of Beneficiaries Received Drugs
      q3_screening.unique_screenings: Unique screened (18-29)
      q4_screening.unique_screenings: Unique screened (30 and above)
      population.citizen_hud_gid: Community Hud Gid
      population.citizen_hud_name: Community Hud
      screening.unique_screenings_18_29: Unique Screened (18-29)
      screening.unique_screenings_gt_30: Unique Screened (30 and above)
    series_column_widths:
      population.citizen_district_name: 183
      population.citizen_district_gid: 183
      population.total_population: 183
      screening.unique_screenings: 183
      screening.Total_screenings: 183
      screening.screened_only_once: 183
      screening.multiple_times_screened: 183
      mtm_drug.no_of_beneficiaries_received_drugs: 183
      q3_screening.unique_screenings: 200
      q4_screening.unique_screenings: 200
      population.citizen_hud_gid: 183
      population.citizen_hud_name: 200
      screening.unique_screenings_18_29: 200
      screening.unique_screenings_gt_30: 200
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.district_name:
        align: center
      population.Population_age_between_18_and_29:
        align: center
      population.Population_age_gt_30:
        align: center
      screening.unique_screenings:
        align: center
      screening.Total_screenings:
        align: center
      population.total_population:
        align: center
      population.citizen_district_name:
        align: center
      drugs.mtm_beneficiaries_received_drugs:
        align: center
      screening.screened_only_once:
        align: center
      screening.multiple_times_screened:
        align: center
      population.citizen_district_gid:
        align: center
      q3_screening.unique_screenings:
        align: center
      mtm_drug.no_of_beneficiaries_received_drugs:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      q4_screening.unique_screenings:
        align: center
      screening.unique_screenings_18_29:
        align: center
      screening.unique_screenings_gt_30:
        align: center
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcfff9"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
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
        label: population Total Population
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
        view_label: population
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
        label: screening Unique Screenings
        label_from_parameter:
        label_short: Unique Screenings
        map_layer:
        name: screening.unique_screenings
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
        field_group_variant: Unique Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=353"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: screening Total Screenings
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
        view_label: screening
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=407"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
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
        label: screening Screened Only Once
        label_from_parameter:
        label_short: Screened Only Once
        map_layer:
        name: screening.screened_only_once
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Screened Only Once
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.screened_only_once
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=675"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql:
        sql_case:
        filters:
        - field: screening.citizen_screening_visits
          condition: "%screened only once%"
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
        label: screening Multiple Times Screened
        label_from_parameter:
        label_short: Multiple Times Screened
        map_layer:
        name: screening.multiple_times_screened
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Multiple Times Screened
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.multiple_times_screened
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=680"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql:
        sql_case:
        filters:
        - field: screening.citizen_screening_visits
          condition: "%multiple times screened%"
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
        label: screening Unique Screened (18-29)
        label_from_parameter:
        label_short: Unique Screened (18-29)
        map_layer:
        name: screening.unique_screenings_18_29
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
        field_group_variant: Unique Screened (18-29)
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings_18_29
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=362"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        - field: screening.age_interval
          condition: 18 to 29
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
        label: screening Unique Screened (30 and above)
        label_from_parameter:
        label_short: Unique Screened (30 and above)
        map_layer:
        name: screening.unique_screenings_gt_30
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
        field_group_variant: Unique Screened (30 and above)
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings_gt_30
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=371"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        - field: screening.age_interval
          condition: 30 or Above
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
        label: Mtm Drug No of Beneficiaries Received Drugs
        label_from_parameter:
        label_short: No of Beneficiaries Received Drugs
        map_layer:
        name: mtm_drug.no_of_beneficiaries_received_drugs
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
        view: mtm_drug
        view_label: Mtm Drug
        dynamic: false
        week_start_day: monday
        original_view: mtm_drug
        dimension_group:
        error:
        field_group_variant: No of Beneficiaries Received Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_drug
        suggest_dimension: mtm_drug.no_of_beneficiaries_received_drugs
        suggest_explore: mtm_drug
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_drug.view.lkml?line=338"
        permanent: true
        source_file: tnphr_views/mtm_drug.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_drug.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        - field: mtm_drug.is_drugs_received
          condition: 'yes'
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
        label: population Citizen District Name
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
        view_label: population
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
        label: population Citizen District Gid
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
        view_label: population
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
        label: population Citizen Hud Name
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
        view_label: population
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
        label: population Citizen Hud Gid
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
        view_label: population
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
      table_calculations: []
      pivots: []
    listen:
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Community Facility: population.citizen_facility_name
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility: mtm_beneficiary.user_facility_name
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Community Facility: mtm_beneficiary.citizen_facility_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution Role: mtm_beneficiary.role_name
      Date: mtm_beneficiary.mtm_start_date
    row: 43
    col: 6
    width: 12
    height: 6
  - name: Block Wise Screening Count
    title: Block Wise Screening Count
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: single_value
      fields: [population.total_population, population.citizen_district_name, population.citizen_district_gid,
        population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
        population.citizen_block_gid]
      filters:
        population.user_role: ''
      sorts: [population.total_population desc]
      limit: 5000
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
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.unique_screenings, screening.Total_screenings,
        screening.screened_only_once, screening.multiple_times_screened, screening.citizen_hud_name,
        screening.citizen_block_name, screening.unique_screenings_18_29, screening.unique_screenings_gt_30]
      sorts: [screening.unique_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: screening.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: screening.citizen_block_name
        source_field_name: population.citizen_block_name
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_hud_name,
        mtm_beneficiary.citizen_block_name, mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs]
      sorts: [mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs desc]
      limit: 5000
      column_limit: 50
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: mtm_beneficiary.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: mtm_beneficiary.citizen_block_name
        source_field_name: population.citizen_block_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
      population.citizen_block_gid, population.total_population, screening.unique_screenings,
      screening.Total_screenings, screening.unique_screenings_18_29, screening.unique_screenings_gt_30,
      screening.screened_only_once, screening.multiple_times_screened, mtm_drug.no_of_beneficiaries_received_drugs]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    truncate_header: false
    size_to_fit: false
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.total_population: Total Population
      screening.unique_screenings: Unique Screenings
      screening.Total_screenings: Total Screenings
      screening.screened_only_once: Screened only Once
      screening.multiple_times_screened: Multiple times screened
      mtm_drug.no_of_beneficiaries_received_drugs: No of Beneficiaries Received Drugs
      q3_screening.unique_screenings: Unique screened (18-29)
      q4_screening.unique_screenings: Unique screened (30 and above)
      population.citizen_hud_gid: Community Hud Gid
      population.citizen_hud_name: Community Hud
      population.citizen_block_name: Community Block
      population.citizen_block_gid: Community Block Gid
      screening.unique_screenings_18_29: Unique Screened (18-29)
      screening.unique_screenings_gt_30: Unique Screened (30 and above)
    series_column_widths:
      population.citizen_district_name: 183
      population.citizen_district_gid: 183
      population.total_population: 183
      screening.unique_screenings: 183
      screening.Total_screenings: 183
      screening.screened_only_once: 183
      screening.multiple_times_screened: 183
      mtm_drug.no_of_beneficiaries_received_drugs: 183
      q3_screening.unique_screenings: 200
      q4_screening.unique_screenings: 200
      population.citizen_hud_gid: 183
      population.citizen_hud_name: 200
      population.citizen_block_gid: 183
      population.citizen_block_name: 215
      screening.unique_screenings_18_29: 200
      screening.unique_screenings_gt_30: 200
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.district_name:
        align: center
      population.Population_age_between_18_and_29:
        align: center
      population.Population_age_gt_30:
        align: center
      screening.unique_screenings:
        align: center
      screening.Total_screenings:
        align: center
      population.total_population:
        align: center
      population.citizen_district_name:
        align: center
      drugs.mtm_beneficiaries_received_drugs:
        align: center
      screening.screened_only_once:
        align: center
      screening.multiple_times_screened:
        align: center
      population.citizen_district_gid:
        align: center
      q3_screening.unique_screenings:
        align: center
      mtm_drug.no_of_beneficiaries_received_drugs:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      population.citizen_block_name:
        align: center
      population.citizen_block_gid:
        align: center
      q4_screening.unique_screenings:
        align: center
      screening.unique_screenings_18_29:
        align: center
      screening.unique_screenings_gt_30:
        align: center
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcfff9"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
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
        label: population Total Population
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
        view_label: population
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
        label: screening Unique Screenings
        label_from_parameter:
        label_short: Unique Screenings
        map_layer:
        name: screening.unique_screenings
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
        field_group_variant: Unique Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=353"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: screening Total Screenings
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
        view_label: screening
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=407"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
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
        label: screening Screened Only Once
        label_from_parameter:
        label_short: Screened Only Once
        map_layer:
        name: screening.screened_only_once
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Screened Only Once
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.screened_only_once
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=675"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql:
        sql_case:
        filters:
        - field: screening.citizen_screening_visits
          condition: "%screened only once%"
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
        label: screening Multiple Times Screened
        label_from_parameter:
        label_short: Multiple Times Screened
        map_layer:
        name: screening.multiple_times_screened
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Multiple Times Screened
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.multiple_times_screened
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=680"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql:
        sql_case:
        filters:
        - field: screening.citizen_screening_visits
          condition: "%multiple times screened%"
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
        label: screening Unique Screened (18-29)
        label_from_parameter:
        label_short: Unique Screened (18-29)
        map_layer:
        name: screening.unique_screenings_18_29
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
        field_group_variant: Unique Screened (18-29)
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings_18_29
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=362"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        - field: screening.age_interval
          condition: 18 to 29
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
        label: screening Unique Screened (30 and above)
        label_from_parameter:
        label_short: Unique Screened (30 and above)
        map_layer:
        name: screening.unique_screenings_gt_30
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
        field_group_variant: Unique Screened (30 and above)
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings_gt_30
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=371"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        - field: screening.age_interval
          condition: 30 or Above
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
        label: Mtm Drug No of Beneficiaries Received Drugs
        label_from_parameter:
        label_short: No of Beneficiaries Received Drugs
        map_layer:
        name: mtm_drug.no_of_beneficiaries_received_drugs
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
        view: mtm_drug
        view_label: Mtm Drug
        dynamic: false
        week_start_day: monday
        original_view: mtm_drug
        dimension_group:
        error:
        field_group_variant: No of Beneficiaries Received Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_drug
        suggest_dimension: mtm_drug.no_of_beneficiaries_received_drugs
        suggest_explore: mtm_drug
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_drug.view.lkml?line=338"
        permanent: true
        source_file: tnphr_views/mtm_drug.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_drug.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        - field: mtm_drug.is_drugs_received
          condition: 'yes'
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
        label: population Citizen District Name
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
        view_label: population
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
        label: population Citizen District Gid
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
        view_label: population
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
        label: population Citizen Hud Name
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
        view_label: population
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
        label: population Citizen Hud Gid
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
        view_label: population
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
        label: population Citizen Block Name
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
        view_label: population
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
        label: population Citizen Block Gid
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
        view_label: population
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
      table_calculations: []
      pivots: []
    listen:
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Community Facility: population.citizen_facility_name
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility: mtm_beneficiary.user_facility_name
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Community Facility: mtm_beneficiary.citizen_facility_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution Role: mtm_beneficiary.role_name
      Date: mtm_beneficiary.mtm_start_date
    row: 49
    col: 6
    width: 12
    height: 6
  - name: Village Wise Screening Count
    title: Village Wise Screening Count
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: single_value
      fields: [population.total_population, population.citizen_district_name, population.citizen_district_gid,
        population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
        population.citizen_block_gid, population.citizen_village_name, population.citizen_village_gid]
      filters:
        population.user_role: ''
      sorts: [population.total_population desc]
      limit: 5000
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
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.unique_screenings, screening.Total_screenings,
        screening.screened_only_once, screening.multiple_times_screened, screening.citizen_hud_name,
        screening.citizen_block_name, screening.citizen_village_name, screening.unique_screenings_18_29,
        screening.unique_screenings_gt_30]
      sorts: [screening.unique_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: screening.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: screening.citizen_block_name
        source_field_name: population.citizen_block_name
      - field_name: screening.citizen_village_name
        source_field_name: population.citizen_village_name
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_hud_name,
        mtm_beneficiary.citizen_block_name, mtm_beneficiary.citizen_village_name,
        mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs]
      sorts: [mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs desc]
      limit: 5000
      column_limit: 50
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: mtm_beneficiary.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: mtm_beneficiary.citizen_block_name
        source_field_name: population.citizen_block_name
      - field_name: mtm_beneficiary.citizen_village_name
        source_field_name: population.citizen_village_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
      population.citizen_block_gid, population.citizen_village_name, population.citizen_village_gid,
      population.total_population, screening.unique_screenings, screening.Total_screenings,
      screening.unique_screenings_18_29, screening.unique_screenings_gt_30, screening.screened_only_once,
      screening.multiple_times_screened, mtm_drug.no_of_beneficiaries_received_drugs]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    truncate_header: false
    size_to_fit: false
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.total_population: Total Population
      screening.unique_screenings: Unique Screenings
      screening.Total_screenings: Total Screenings
      screening.screened_only_once: Screened only Once
      screening.multiple_times_screened: Multiple times screened
      mtm_drug.no_of_beneficiaries_received_drugs: No of Beneficiaries Received Drugs
      q3_screening.unique_screenings: Unique screened (18-29)
      q4_screening.unique_screenings: Unique screened (30 and above)
      population.citizen_hud_gid: Community Hud Gid
      population.citizen_hud_name: Community Hud
      population.citizen_block_name: Community Block
      population.citizen_block_gid: Community Block Gid
      population.citizen_village_name: Community Village
      population.citizen_village_gid: Community Village Gid
      screening.unique_screenings_18_29: Unique Screened (18-29)
      screening.unique_screenings_gt_30: Unique Screened (30 and above)
    series_column_widths:
      population.citizen_district_name: 183
      population.citizen_district_gid: 183
      population.total_population: 183
      screening.unique_screenings: 183
      screening.Total_screenings: 183
      screening.screened_only_once: 183
      screening.multiple_times_screened: 183
      mtm_drug.no_of_beneficiaries_received_drugs: 183
      q3_screening.unique_screenings: 200
      q4_screening.unique_screenings: 200
      population.citizen_hud_gid: 183
      population.citizen_hud_name: 200
      population.citizen_block_gid: 183
      population.citizen_block_name: 215
      population.citizen_village_name: 215
      population.citizen_village_gid: 183
      screening.unique_screenings_18_29: 200
      screening.unique_screenings_gt_30: 200
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.district_name:
        align: center
      population.Population_age_between_18_and_29:
        align: center
      population.Population_age_gt_30:
        align: center
      screening.unique_screenings:
        align: center
      screening.Total_screenings:
        align: center
      population.total_population:
        align: center
      population.citizen_district_name:
        align: center
      drugs.mtm_beneficiaries_received_drugs:
        align: center
      screening.screened_only_once:
        align: center
      screening.multiple_times_screened:
        align: center
      population.citizen_district_gid:
        align: center
      q3_screening.unique_screenings:
        align: center
      mtm_drug.no_of_beneficiaries_received_drugs:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      population.citizen_block_name:
        align: center
      population.citizen_block_gid:
        align: center
      q4_screening.unique_screenings:
        align: center
      population.citizen_village_name:
        align: center
      population.citizen_village_gid:
        align: center
      screening.unique_screenings_18_29:
        align: center
      screening.unique_screenings_gt_30:
        align: center
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcfff9"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
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
        label: population Total Population
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
        view_label: population
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
        label: screening Unique Screenings
        label_from_parameter:
        label_short: Unique Screenings
        map_layer:
        name: screening.unique_screenings
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
        field_group_variant: Unique Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=353"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: screening Total Screenings
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
        view_label: screening
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=407"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
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
        label: screening Screened Only Once
        label_from_parameter:
        label_short: Screened Only Once
        map_layer:
        name: screening.screened_only_once
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Screened Only Once
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.screened_only_once
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=675"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql:
        sql_case:
        filters:
        - field: screening.citizen_screening_visits
          condition: "%screened only once%"
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
        label: screening Multiple Times Screened
        label_from_parameter:
        label_short: Multiple Times Screened
        map_layer:
        name: screening.multiple_times_screened
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Multiple Times Screened
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.multiple_times_screened
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=680"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql:
        sql_case:
        filters:
        - field: screening.citizen_screening_visits
          condition: "%multiple times screened%"
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
        label: screening Unique Screened (18-29)
        label_from_parameter:
        label_short: Unique Screened (18-29)
        map_layer:
        name: screening.unique_screenings_18_29
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
        field_group_variant: Unique Screened (18-29)
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings_18_29
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=362"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        - field: screening.age_interval
          condition: 18 to 29
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
        label: screening Unique Screened (30 and above)
        label_from_parameter:
        label_short: Unique Screened (30 and above)
        map_layer:
        name: screening.unique_screenings_gt_30
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
        field_group_variant: Unique Screened (30 and above)
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings_gt_30
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=371"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        - field: screening.age_interval
          condition: 30 or Above
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
        label: Mtm Drug No of Beneficiaries Received Drugs
        label_from_parameter:
        label_short: No of Beneficiaries Received Drugs
        map_layer:
        name: mtm_drug.no_of_beneficiaries_received_drugs
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
        view: mtm_drug
        view_label: Mtm Drug
        dynamic: false
        week_start_day: monday
        original_view: mtm_drug
        dimension_group:
        error:
        field_group_variant: No of Beneficiaries Received Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_drug
        suggest_dimension: mtm_drug.no_of_beneficiaries_received_drugs
        suggest_explore: mtm_drug
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_drug.view.lkml?line=338"
        permanent: true
        source_file: tnphr_views/mtm_drug.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_drug.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        - field: mtm_drug.is_drugs_received
          condition: 'yes'
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
        label: population Citizen District Name
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
        view_label: population
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
        label: population Citizen District Gid
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
        view_label: population
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
        label: population Citizen Hud Name
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
        view_label: population
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
        label: population Citizen Hud Gid
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
        view_label: population
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
        label: population Citizen Block Name
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
        view_label: population
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
        label: population Citizen Block Gid
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
        view_label: population
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
        label: population Citizen Village Name
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
        view_label: population
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
        label: population Citizen Village Gid
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
        view_label: population
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
      table_calculations: []
      pivots: []
    listen:
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Community Facility: population.citizen_facility_name
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Owner: screening.user_owner_name
      Institution Facility: screening.user_facility_name
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Community Facility: screening.citizen_facility_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
      Date: screening.screened_date
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility: mtm_beneficiary.user_facility_name
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Community Facility: mtm_beneficiary.citizen_facility_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution Role: mtm_beneficiary.role_name
      Date: mtm_beneficiary.mtm_start_date
    row: 55
    col: 6
    width: 12
    height: 6
  - title: Total Confirmed MTM Beneficiary
    name: Total Confirmed MTM Beneficiary
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: single_value
    fields: [mtm_beneficiary.total_confirmed_MTM_beneficiary]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CB342",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    series_types: {}
    listen:
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility: mtm_beneficiary.user_facility_name
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Community Facility: mtm_beneficiary.citizen_facility_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution Role: mtm_beneficiary.role_name
      Date: mtm_beneficiary.mtm_start_date
    row: 24
    col: 0
    width: 6
    height: 6
  - title: No of MTM Beneficiaries Received Drugs
    name: No of MTM Beneficiaries Received Drugs
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: single_value
    fields: [mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#F9AB00",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    series_types: {}
    listen:
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility: mtm_beneficiary.user_facility_name
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Community Facility: mtm_beneficiary.citizen_facility_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution Role: mtm_beneficiary.role_name
      Date: mtm_beneficiary.mtm_start_date
    row: 22
    col: 0
    width: 6
    height: 2
  - title: Top 10 MTM Benefited Blocks
    name: Top 10 MTM Benefited Blocks
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: looker_bar
    fields: [mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.citizen_district_name,
      mtm_beneficiary.citizen_block_name]
    sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
    limit: 5000
    dynamic_fields: [{table_calculation: blocks, label: Blocks, expression: 'concat(${mtm_beneficiary.citizen_block_name},"
          (District - ",${mtm_beneficiary.citizen_district_name},")")', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: string}]
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
    limit_displayed_rows: true
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      mtm_beneficiary.total_confirmed_MTM_beneficiary: "#7CB342"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CB342",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [mtm_beneficiary.citizen_block_name, mtm_beneficiary.citizen_district_name]
    listen:
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility: mtm_beneficiary.user_facility_name
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Community Facility: mtm_beneficiary.citizen_facility_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution Role: mtm_beneficiary.role_name
      Date: mtm_beneficiary.mtm_start_date
    row: 24
    col: 16
    width: 8
    height: 6
  - title: District wise MTM Beneficiary
    name: District wise MTM Beneficiary
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: looker_grid
    fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
      mtm_beneficiary.total_confirmed_MTM_beneficiary]
    sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      mtm_beneficiary.citizen_district_name: Community District
      mtm_beneficiary.citizen_district_gid: Community District Gid
    series_column_widths:
      mtm_beneficiary.citizen_district_name: 183
      mtm_beneficiary.citizen_district_gid: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
    series_cell_visualizations:
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        is_active: false
    series_text_format:
      mtm_beneficiary.citizen_district_name:
        align: center
      mtm_beneficiary.citizen_district_gid:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
    header_background_color: "#7CB342"
    series_types: {}
    defaults_version: 1
    listen:
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility: mtm_beneficiary.user_facility_name
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Community Facility: mtm_beneficiary.citizen_facility_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution Role: mtm_beneficiary.role_name
      Date: mtm_beneficiary.mtm_start_date
    row: 37
    col: 18
    width: 6
    height: 6
  - title: HUD wise MTM Beneficiaries
    name: HUD wise MTM Beneficiaries
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: looker_grid
    fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
      mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.citizen_hud_name,
      mtm_beneficiary.citizen_hud_gid]
    sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      mtm_beneficiary.citizen_district_name: Community District
      mtm_beneficiary.citizen_district_gid: Community District Gid
      mtm_beneficiary.citizen_hud_name: Community HUD
      mtm_beneficiary.citizen_hud_gid: Community HUD Gid
      mtm_beneficiary.total_confirmed_MTM_beneficiary: Total Confirmed MTM Beneficiaries
    series_column_widths:
      mtm_beneficiary.citizen_district_name: 183
      mtm_beneficiary.citizen_district_gid: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      mtm_beneficiary.citizen_hud_name: 183
      mtm_beneficiary.citizen_hud_gid: 183
    series_cell_visualizations:
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        is_active: false
    series_text_format:
      mtm_beneficiary.citizen_district_name:
        align: center
      mtm_beneficiary.citizen_district_gid:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      mtm_beneficiary.citizen_hud_name:
        align: center
      mtm_beneficiary.citizen_hud_gid:
        align: center
    header_background_color: "#7CB342"
    series_types: {}
    defaults_version: 1
    listen:
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility: mtm_beneficiary.user_facility_name
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Community Facility: mtm_beneficiary.citizen_facility_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution Role: mtm_beneficiary.role_name
      Date: mtm_beneficiary.mtm_start_date
    row: 43
    col: 18
    width: 6
    height: 6
  - title: Block wise MTM Beneficiary
    name: Block wise MTM Beneficiary
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: looker_grid
    fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
      mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.citizen_hud_name,
      mtm_beneficiary.citizen_hud_gid, mtm_beneficiary.citizen_block_name, mtm_beneficiary.citizen_block_gid]
    sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      mtm_beneficiary.citizen_district_name: Community District
      mtm_beneficiary.citizen_district_gid: Community District Gid
      mtm_beneficiary.citizen_hud_name: Community HUD
      mtm_beneficiary.citizen_hud_gid: Community HUD Gid
      mtm_beneficiary.citizen_block_name: Community Block
      mtm_beneficiary.citizen_block_gid: Community Block Gid
    series_column_widths:
      mtm_beneficiary.citizen_district_name: 183
      mtm_beneficiary.citizen_district_gid: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      mtm_beneficiary.citizen_hud_name: 183
      mtm_beneficiary.citizen_hud_gid: 183
      mtm_beneficiary.citizen_block_name: 183
      mtm_beneficiary.citizen_block_gid: 181
    series_cell_visualizations:
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        is_active: false
    series_text_format:
      mtm_beneficiary.citizen_district_name:
        align: center
      mtm_beneficiary.citizen_district_gid:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      mtm_beneficiary.citizen_hud_name:
        align: center
      mtm_beneficiary.citizen_hud_gid:
        align: center
      mtm_beneficiary.citizen_block_name:
        align: center
      mtm_beneficiary.citizen_block_gid:
        align: center
    header_background_color: "#7CB342"
    series_types: {}
    defaults_version: 1
    listen:
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility: mtm_beneficiary.user_facility_name
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Community Facility: mtm_beneficiary.citizen_facility_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution Role: mtm_beneficiary.role_name
      Date: mtm_beneficiary.mtm_start_date
    row: 49
    col: 18
    width: 6
    height: 6
  - title: Village wise MTM Beneficiary
    name: Village wise MTM Beneficiary
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: looker_grid
    fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
      mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.citizen_hud_name,
      mtm_beneficiary.citizen_hud_gid, mtm_beneficiary.citizen_block_name, mtm_beneficiary.citizen_block_gid,
      mtm_beneficiary.citizen_village_name, mtm_beneficiary.citizen_village_gid]
    sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      mtm_beneficiary.citizen_district_name: Community District
      mtm_beneficiary.citizen_district_gid: Community District Gid
      mtm_beneficiary.citizen_hud_name: Community HUD
      mtm_beneficiary.citizen_hud_gid: Community HUD Gid
      mtm_beneficiary.citizen_block_name: Community Block
      mtm_beneficiary.citizen_block_gid: Community Block Gid
      mtm_beneficiary.citizen_village_name: Community Village
      mtm_beneficiary.citizen_village_gid: Community Village Gid
    series_column_widths:
      mtm_beneficiary.citizen_district_name: 183
      mtm_beneficiary.citizen_district_gid: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      mtm_beneficiary.citizen_hud_name: 183
      mtm_beneficiary.citizen_hud_gid: 183
      mtm_beneficiary.citizen_block_name: 215
      mtm_beneficiary.citizen_block_gid: 181
      mtm_beneficiary.citizen_village_name: 215
      mtm_beneficiary.citizen_village_gid: 183
    series_cell_visualizations:
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        is_active: false
    series_text_format:
      mtm_beneficiary.citizen_district_name:
        align: center
      mtm_beneficiary.citizen_district_gid:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      mtm_beneficiary.citizen_hud_name:
        align: center
      mtm_beneficiary.citizen_hud_gid:
        align: center
      mtm_beneficiary.citizen_block_name:
        align: center
      mtm_beneficiary.citizen_block_gid:
        align: center
      mtm_beneficiary.citizen_village_name:
        align: center
      mtm_beneficiary.citizen_village_gid:
        align: center
    header_background_color: "#7CB342"
    series_types: {}
    defaults_version: 1
    listen:
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility: mtm_beneficiary.user_facility_name
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Community Facility: mtm_beneficiary.citizen_facility_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution Role: mtm_beneficiary.role_name
      Date: mtm_beneficiary.mtm_start_date
    row: 55
    col: 18
    width: 6
    height: 6
  - title: Confirmed MTM Count in Past 10 weeks + 4 weeks Projection
    name: Confirmed MTM Count in Past 10 weeks + 4 weeks Projection
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: looker_line
    fields: [mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.mtm_start_week]
    fill_fields: [mtm_beneficiary.mtm_start_week]
    filters:
      mtm_beneficiary.mtm_start_week: 14 weeks
    sorts: [mtm_beneficiary.mtm_start_week desc]
    limit: 500
    column_limit: 50
    analysis_config:
      forecasting:
      - confidence_interval: 0.8
        field_name: mtm_beneficiary.total_confirmed_MTM_beneficiary
        forecast_n: 4
        forecast_interval: week
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_label: Weeks
    series_types: {}
    series_colors:
      mtm_beneficiary.total_confirmed_MTM_beneficiary: "#7CB342"
    series_labels:
      mtm_beneficiary.citizen_district_name: Community District
      mtm_beneficiary.citizen_district_gid: Community District Gid
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      mtm_beneficiary.citizen_district_name: 183
      mtm_beneficiary.citizen_district_gid: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
    series_cell_visualizations:
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        is_active: false
    series_text_format:
      mtm_beneficiary.citizen_district_name:
        align: center
      mtm_beneficiary.citizen_district_gid:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
    header_background_color: "#7CB342"
    defaults_version: 1
    listen:
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility: mtm_beneficiary.user_facility_name
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Community Facility: mtm_beneficiary.citizen_facility_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution Role: mtm_beneficiary.role_name
      Date: mtm_beneficiary.mtm_start_date
    row: 24
    col: 6
    width: 10
    height: 6
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
    listens_to_filters: [Community Hud, Community Village, Community Block, Community
        Facility]
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
    listens_to_filters: [Community District, Community Village, Community Block, Community
        Facility]
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
    listens_to_filters: [Community District, Community Hud, Community Village, Community
        Facility]
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
    listens_to_filters: [Community District, Community Hud, Community Block, Community
        Facility]
    field: screening.citizen_village_name
  - name: Community Facility
    title: Community Facility
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community District, Community Hud, Community Village, Community
        Block]
    field: screening.citizen_facility_name
  - name: Institution Owner
    title: Institution Owner
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Directorate, Institution Facility, Institution
        Role, Institution District, Institution Hud, Institution Block]
    field: screening.user_owner_name
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
    explore: screening
    listens_to_filters: [Institution Owner Name, Institution Facility, Institution
        Role, Institution District, Institution Hud, Institution Block, Institution
        Owner]
    field: screening.user_directorate
  - name: Institution Facility
    title: Institution Facility
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Owner Name, Institution Directorate, Institution
        Role, Institution District, Institution Hud, Institution Block, Institution
        Owner]
    field: screening.user_facility_name
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
    explore: screening
    listens_to_filters: [Institution Owner Name, Institution Directorate, Institution
        Facility, Institution District, Institution Hud, Institution Block, Institution
        Owner]
    field: screening.role_name
  - name: Institution District
    title: Institution District
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Owner Name, Institution Directorate, Institution
        Facility, Institution Role, Institution Hud, Institution Block, Institution
        Owner]
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
    listens_to_filters: [Institution Owner Name, Institution Directorate, Institution
        Facility, Institution Role, Institution District, Institution Block, Institution
        Owner]
    field: screening.user_hud_name
  - name: Institution Block
    title: Institution Block
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Owner Name, Institution Directorate, Institution
        Facility, Institution Role, Institution District, Institution Hud, Institution
        Owner]
    field: screening.user_block_name
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
    explore: screening
    listens_to_filters: []
    field: screening.screened_date
