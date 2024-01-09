- dashboard: mtmperformance_v1_0_4
  title: MTM-Performance v1.0.4
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  elements:
  - title: Total Population
    name: Total Population
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [family_member_master.gender, family_member_master.count]
    filters:
      family_member_master.gender: "-NULL"
    sorts: [family_member_master.count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: total_population, label: Total Population,
        expression: 'sum(${family_member_master.count})', value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#050101"
    hidden_fields: [family_member_master.gender, family_member_master.count]
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
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
    row: 3
    col: 0
    width: 6
    height: 6
  - title: Top 10 Drugs Issued
    name: Top 10 Drugs Issued
    model: tnphr_state_level
    explore: family_master
    type: looker_bar
    fields: [health_screening.Drugs_count, health_screening__drugs.health_screening__drugs_drug_name]
    filters:
      health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
    sorts: [health_screening.Drugs_count desc]
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
    y_axes: [{label: Drug Count, orientation: bottom, series: [{axisId: family_member_master.count,
            id: family_member_master.count, name: Family member Master}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      family_member_master.count: "#7CB342"
      health_screening.Drugs_count: "#F9AB00"
    series_labels:
      family_member_master.count: Drug Count
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
    table_theme: white
    enable_conditional_formatting: false
    header_background_color: "#7CB342"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    hide_totals: false
    hide_row_totals: false
    listen:
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 15
    col: 18
    width: 6
    height: 6
  - title: Unique Screenings Gender Wise
    name: Unique Screenings Gender Wise
    model: tnphr_state_level
    explore: family_master
    type: looker_column
    fields: [health_screening.Unique_Screening_Males, health_screening.Unique_Screening_Females,
      health_screening.Unique_Screening_Others]
    filters:
      family_member_master.gender: "-NULL"
    limit: 5000
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
    y_axes: [{label: Unique Screenings, orientation: left, series: [{axisId: health_screening.Unique_Screening_Males,
            id: health_screening.Unique_Screening_Males, name: Unique Screening Males},
          {axisId: health_screening.Unique_Screening_Females, id: health_screening.Unique_Screening_Females,
            name: Unique Screening Females}, {axisId: health_screening.Unique_Screening_Others,
            id: health_screening.Unique_Screening_Others, name: Unique Screening Others}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Gender
    series_types: {}
    series_colors: {}
    series_labels:
      family_member_master.Other_Population: Others
      family_member_master.count: Total Population
      health_screening.Unique_Screening_Males: Males
      health_screening.Unique_Screening_Females: Females
      health_screening.Unique_Screening_Others: Others
    custom_color_enabled: true
    custom_color: "#EA4335"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    defaults_version: 1
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
    row: 3
    col: 6
    width: 12
    height: 6
  - title: Hud's wise Screening Count
    name: Hud's wise Screening Count
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.hud_name, health_screening.Population_age_between_18_and_45,
      health_screening.Population_age_gt_45, health_screening.Total_population, health_screening.screening_count,
      health_screening.Unique_Screening]
    filters:
      health_screening.hud_name: ''
      health_screening.screening_count: ">0"
    sorts: [health_screening.Population_age_between_18_and_45 desc]
    limit: 5000
    column_limit: 50
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: Total Population
      health_screening.screening_count: Total Screenings
      health_screening.hud_name: HUDs
      health_screening.Population_age_between_18_and_45: Population(18-45)
      health_screening.Population_age_gt_45: Population>45
    series_column_widths:
      health_screening.hud_name: 142
      health_screening.Population_age_between_18_and_45: 150
      health_screening.Population_age_gt_45: 127
      health_screening.Total_population: 138
      health_screening.screening_count: 140
      health_screening.Unique_Screening: 146
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
      health_screening.Total_Screening:
        is_active: true
      health_screening.screening_count:
        is_active: false
    header_font_color: "#f5fcff"
    header_background_color: "#1A73E8"
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
    series_types: {}
    point_style: none
    series_colors:
      family_member_master.count: "#7CB342"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 32
    col: 6
    width: 12
    height: 5
  - title: Block's wise Screening Count
    name: Block's wise Screening Count
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.block_name, health_screening.Population_age_between_18_and_45,
      health_screening.Population_age_gt_45, health_screening.Total_population, health_screening.screening_count,
      health_screening.Unique_Screening]
    filters:
      health_screening.block_name: ''
      health_screening.screening_count: ">0"
    sorts: [health_screening.screening_count desc]
    limit: 5000
    column_limit: 50
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: Total Population
      health_screening.screening_count: Total Screening
      health_screening.block_name: Blocks
      health_screening.Population_age_between_18_and_45: Population(18-45)
      health_screening.Population_age_gt_45: Population>45
    series_column_widths:
      health_screening.block_name: 142
      health_screening.Population_age_between_18_and_45: 150
      health_screening.Population_age_gt_45: 127
      health_screening.Total_population: 138
      health_screening.screening_count: 133
      health_screening.Unique_Screening: 146
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
      health_screening.Total_Screening:
        is_active: true
      health_screening.screening_count:
        is_active: false
    header_font_color: "#f5fcff"
    header_background_color: "#1A73E8"
    series_value_format:
      health_screening.Total_population: ''
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
    series_types: {}
    point_style: none
    series_colors:
      family_member_master.count: "#7CB342"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 37
    col: 6
    width: 12
    height: 5
  - title: Village's wise Screening count
    name: Village's wise Screening count
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.village_name, health_screening.Population_age_between_18_and_45,
      health_screening.Population_age_gt_45, health_screening.Total_population, health_screening.screening_count,
      health_screening.Unique_Screening]
    filters:
      health_screening.village_name: ''
      health_screening.screening_count: ">0"
    sorts: [health_screening.screening_count desc]
    limit: 5000
    column_limit: 50
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: Total Population
      health_screening.screening_count: Total Screening
      health_screening.village_name: Villages
      health_screening.Population_age_between_18_and_45: Population(18-45)
      health_screening.Population_age_gt_45: Population>45
    series_column_widths:
      health_screening.village_name: 142
      health_screening.Population_age_between_18_and_45: 150
      health_screening.Population_age_gt_45: 127
      health_screening.Total_population: 138
      health_screening.screening_count: 133
      health_screening.Unique_Screening: 146
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
      health_screening.Total_Screening:
        is_active: true
      health_screening.screening_count:
        is_active: false
    header_font_color: "#f5fcff"
    header_background_color: "#1A73E8"
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
    series_types: {}
    point_style: none
    series_colors:
      family_member_master.count: "#7CB342"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 42
    col: 6
    width: 12
    height: 5
  - title: District's wise MTM Beneficiary
    name: District's wise MTM Beneficiary
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.district_name, health_screening.mtm_v1_v2]
    filters:
      health_screening.mtm_condition: "-EMPTY"
      health_screening.district_name: "-NULL"
    sorts: [health_screening.mtm_v1_v2 desc]
    limit: 500
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: MTM Beneficiary
      health_screening.Total_Screening: MTM Beneficiaries
      health_screening.district_name: Districts
      health_screening.mtm_v1_v2: MTM Beneficiary
    series_column_widths:
      health_screening.Total_Screening: 168
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
      health_screening.Total_Screening:
        is_active: true
    header_background_color: "#7CB342"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
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
    hidden_fields: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 27
    col: 18
    width: 6
    height: 5
  - title: 'District''s wise Drugs Issued '
    name: 'District''s wise Drugs Issued '
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.district_name, health_screening.member_drug_Delivered]
    filters:
      health_screening.district_name: ''
    sorts: [health_screening.member_drug_Delivered desc]
    limit: 5000
    column_limit: 50
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: Members Issued with Drugs
      family_member_master.Drugs_count: Total Drugs Issued
      health_screening.district_name: Districts
      health_screening.Drugs_count: Drugs issued
      health_screening.member_drug_Delivered: Drugs issued
    series_cell_visualizations:
      family_member_master.count:
        is_active: true
      family_member_master.Drugs_count:
        is_active: true
    header_background_color: "#F9AB00"
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
    series_types: {}
    point_style: circle
    series_colors: {}
    series_point_styles: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 27
    col: 0
    width: 6
    height: 5
  - title: Block's wise Drugs Issued
    name: Block's wise Drugs Issued
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.block_name, health_screening.member_drug_Delivered]
    filters:
      health_screening.block_name: ''
    sorts: [health_screening.member_drug_Delivered desc]
    limit: 5000
    column_limit: 50
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: Members Issued with Drugs
      family_member_master.Drugs_count: Total Drugs Issued
      health_screening.Drugs_count: Drugs issued
      health_screening.block_name: Blocks
      health_screening.member_drug_Delivered: Drugs issued
    series_cell_visualizations:
      family_member_master.count:
        is_active: true
      family_member_master.Drugs_count:
        is_active: true
    header_background_color: "#F9AB00"
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: Count, orientation: left, series: [{axisId: family_member_master.Drugs_count,
            id: family_member_master.Drugs_count, name: Total Drugs Issued}, {axisId: family_member_master.count,
            id: family_member_master.count, name: Members Issued with Drugs}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      family_member_master.count: "#7CB342"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 37
    col: 0
    width: 6
    height: 5
  - title: Hud's wise Drugs Issued
    name: Hud's wise Drugs Issued
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.hud_name, health_screening.member_drug_Delivered]
    filters:
      health_screening.hud_name: ''
    sorts: [health_screening.member_drug_Delivered desc]
    limit: 5000
    column_limit: 50
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: Member Drug Issues Count
      family_member_master.Drugs_count: Drugs Issued Count
      health_screening.Drugs_count: Drugs issued
      health_screening.hud_name: HUDs
      health_screening.member_drug_Delivered: Drugs issued
    series_cell_visualizations:
      family_member_master.count:
        is_active: true
      family_member_master.Drugs_count:
        is_active: true
    header_background_color: "#F9AB00"
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
    series_types: {}
    point_style: none
    series_colors:
      family_member_master.count: "#7CB342"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 32
    col: 0
    width: 6
    height: 5
  - title: 'Block''s wise MTM Beneficiary '
    name: 'Block''s wise MTM Beneficiary '
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.block_name, health_screening.mtm_v1_v2]
    filters:
      health_screening.mtm_condition: "-EMPTY"
    sorts: [health_screening.mtm_v1_v2 desc]
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: MTM Beneficiary
      health_screening.Total_Screening: MTM Beneficiaries
      health_screening.block_name: Blocks
      health_screening.mtm_v1_v2: MTM Beneficiary
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
      health_screening.Total_Screening:
        is_active: true
    header_background_color: "#7CB342"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
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
    hidden_fields: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 37
    col: 18
    width: 6
    height: 5
  - title: Village's wise MTM Beneficiary
    name: Village's wise MTM Beneficiary
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.village_name, health_screening.mtm_v1_v2]
    filters:
      health_screening.mtm_condition: "-EMPTY"
      health_screening.Total_Screening: ">0"
    sorts: [health_screening.mtm_v1_v2 desc]
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: MTM Beneficiary
      health_screening.Total_Screening: MTM Beneficiaries
      health_screening.village_name: Villages
      health_screening.mtm_v1_v2: MTM Beneficiary
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
      health_screening.Total_Screening:
        is_active: true
    header_background_color: "#7CB342"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
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
    hidden_fields: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 42
    col: 18
    width: 6
    height: 5
  - title: Hud's wise MTM Beneficiary
    name: Hud's wise MTM Beneficiary
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.hud_name, health_screening.mtm_v1_v2]
    filters:
      health_screening.mtm_condition: "-EMPTY"
      health_screening.hud_name: "-NULL"
    sorts: [health_screening.mtm_v1_v2 desc]
    limit: 500
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: MTM Beneficiary
      health_screening.Total_Screening: MTM Beneficiaries
      health_screening.hud_name: HUDs
      health_screening.mtm_v1_v2: MTM Beneficiary
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
      health_screening.Total_Screening:
        is_active: true
    header_background_color: "#7CB342"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
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
    hidden_fields: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 32
    col: 18
    width: 6
    height: 5
  - title: Village's wise Drugs Issued
    name: Village's wise Drugs Issued
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.village_name, health_screening.member_drug_Delivered]
    filters:
      health_screening.village_name: ''
    sorts: [health_screening.member_drug_Delivered desc]
    limit: 5000
    column_limit: 50
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: Member Drug Issues Count
      family_member_master.Drugs_count: Drugs Issued Count
      health_screening.Drugs_count: Drugs issued
      health_screening.village_name: Villages
      health_screening.member_drug_Delivered: Drugs issued
    series_cell_visualizations:
      family_member_master.count:
        is_active: true
      family_member_master.Drugs_count:
        is_active: true
    header_background_color: "#F9AB00"
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
    series_types: {}
    point_style: none
    series_colors:
      family_member_master.count: "#7CB342"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 42
    col: 0
    width: 6
    height: 5
  - title: Total Screenings
    name: Total Screenings
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Total_Screening]
    limit: 5000
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
    custom_color: "#1A73E8"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#1A73E8",
        font_color: "#f8fcff", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields:
    defaults_version: 1
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 9
    col: 0
    width: 6
    height: 3
  - title: Individual Screenings
    name: Individual Screenings
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Unique_Screening]
    filters:
      address_district_master.district_name: ''
      address_block_master.block_name: ''
      address_hud_master.hud_name: ''
    limit: 5000
    column_limit: 50
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
    custom_color: "#1A73E8"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#1A73E8",
        font_color: "#f1f9ff", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields:
    defaults_version: 1
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 12
    col: 0
    width: 6
    height: 3
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
  - title: Top 10 MTM Benefited Blocks
    name: Top 10 MTM Benefited Blocks
    model: tnphr_state_level
    explore: family_master
    type: looker_bar
    fields: [family_member_master.block_name, health_screening.MTM_Diabetes, health_screening.MTM_hypertension,
      health_screening.MTM_other, health_screening.MTM_dialysis_capd, health_screening.MTM_palliative_care,
      health_screening.MTM_physiotherapy]
    sorts: [health_screening.MTM_Diabetes desc]
    limit: 10
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.MTM_Diabetes}+${health_screening.MTM_dialysis_capd}+${health_screening.MTM_hypertension}+${health_screening.MTM_other}+${health_screening.MTM_palliative_care}+${health_screening.MTM_physiotherapy}",
        label: Confirmed MTM Beneficiaries, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: confirmed_mtm_beneficiaries, _type_hint: number}]
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
    y_axes: [{label: MTM beneficiaries, orientation: bottom, series: [{axisId: confirmed_mtm_beneficiaries,
            id: confirmed_mtm_beneficiaries, name: Confirmed MTM Beneficiaries}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      family_member_master.count: "#7CB342"
      health_screening.Drugs_count: "#7CB342"
      confirmed_mtm_beneficiaries: "#7CB342"
    series_labels:
      family_member_master.count: Drug Count
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
    table_theme: white
    enable_conditional_formatting: false
    header_background_color: "#7CB342"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: [health_screening.MTM_Diabetes, health_screening.MTM_hypertension,
      health_screening.MTM_other, health_screening.MTM_dialysis_capd, health_screening.MTM_palliative_care,
      health_screening.MTM_physiotherapy]
    hide_totals: false
    hide_row_totals: false
    listen:
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 21
    col: 18
    width: 6
    height: 6
  - title: District's Wise Screening Count
    name: District's Wise Screening Count
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.district_name, health_screening.Population_age_between_18_and_45,
      health_screening.Population_age_gt_45, health_screening.Total_population, health_screening.screening_count,
      health_screening.Unique_Screening]
    filters:
      health_screening.district_name: "-NULL"
      family_member_master.last_update_date: ''
    sorts: [health_screening.Population_age_gt_45 desc]
    limit: 5000
    column_limit: 50
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      family_member_master.count: Total Population
      health_screening.screening_count: Total Screenings
      health_screening.district_name: Districts
      health_screening.Population_age_gt_45: Population>45
      health_screening.Population_age_between_18_and_45: Population(18-45)
    series_column_widths:
      health_screening.screening_count: 140
      health_screening.district_name: 142
      health_screening.Total_population: 138
      health_screening.Population_age_between_18_and_45: 150
      health_screening.Population_age_gt_45: 127
      health_screening.Unique_Screening: 146
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
      health_screening.Total_Screening:
        is_active: true
      health_screening.screening_count:
        is_active: false
    header_font_color: "#f5fcff"
    header_background_color: "#1A73E8"
    series_value_format:
      health_screening.Population_age_gt_45: ''
      health_screening.screening_count: ''
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
    series_types: {}
    point_style: none
    series_colors:
      family_member_master.count: "#7CB342"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 27
    col: 6
    width: 12
    height: 5
  - title: Top 5 Blocks Screened
    name: Top 5 Blocks Screened
    model: tnphr_state_level
    explore: family_master
    type: looker_column
    fields: [address_block_master.block_name, address_district_master.district_name,
      health_screening.Total_Screening]
    filters:
      address_district_master.district_name: ''
      address_block_master.block_name: ''
      address_hud_master.hud_name: ''
    sorts: [health_screening.Total_Screening desc]
    limit: 5
    column_limit: 50
    dynamic_fields: [{table_calculation: block_name, label: Block Name, expression: 'concat(${address_block_master.block_name},"
          " , "(","District-", ${address_district_master.district_name}, ")")', value_format: !!null '',
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: Screening Count, orientation: left, series: [{axisId: health_screening.Total_Screening,
            id: health_screening.Total_Screening, name: Total Screening}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Blocks
    series_types: {}
    series_colors:
      family_member_master.Female_Population: "#FF8168"
      family_member_master.Other_Population: "#9334E6"
      health_screening.Total_Screening: "#A5EF55"
    custom_color_enabled: true
    custom_color: "#1A73E8"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    hidden_fields: [address_block_master.block_name, address_district_master.district_name]
    defaults_version: 1
    listen:
      Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 9
    col: 18
    width: 6
    height: 6
  - name: Screening Count in Past 6 weeks + 2 weeks Projection
    title: Screening Count in Past 6 weeks + 2 weeks Projection
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Total_Screening, health_screening.last_update_week]
      fill_fields: [health_screening.last_update_week]
      filters:
        health_screening.last_update_week: 7 week , 2 week from now
      sorts: [health_screening.last_update_week desc]
      limit: 500
      dynamic_fields: [{table_calculation: day_index, label: day_index, expression: 'diff_days(${health_screening.last_update_week},now())',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}, {table_calculation: slope, label: slope, expression: 'slope(ln(${health_screening.Total_Screening}),
            ${day_index})', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, _type_hint: number}, {table_calculation: intercept,
          label: intercept, expression: 'intercept(ln(${health_screening.Total_Screening}),
            ${day_index})', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, _type_hint: number}, {table_calculation: line_equation,
          label: line_equation, expression: 'exp(${intercept} + ${slope} * ${day_index})',
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}, {table_calculation: final, label: final, expression: 'if(${day_index}>=3,${health_screening.Total_Screening},${line_equation})',
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.last_update_week]
      fill_fields: [health_screening.last_update_week]
      filters:
        health_screening.last_update_week: 7 week , 2 week from now
      sorts: [health_screening.last_update_week desc]
      limit: 500
      dynamic_fields: [{table_calculation: today, label: today, expression: now(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: date}]
      join_fields:
      - field_name: health_screening.last_update_week
        source_field_name: health_screening.last_update_week
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Screening Count, orientation: left, series: [{axisId: health_screening.Total_Screening,
            id: health_screening.Total_Screening, name: Screening Count}, {axisId: final,
            id: final, name: Projected Screening Count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Weeks
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
    point_style: circle
    series_colors:
      final: "#F9AB00"
    series_labels:
      final: Projected Screening Count
      health_screening.Total_Screening: Screening Count
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    type: looker_line
    hidden_fields: [day_index, slope, intercept, line_equation, today]
    column_limit: 50
    listen:
    - Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
    - Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
    row: 9
    col: 6
    width: 12
    height: 6
  - name: Drugs Issued Count with Past 6 weeks + 2 weeks Projection
    title: Drugs Issued Count with Past 6 weeks + 2 weeks Projection
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.last_update_week, health_screening.Drugs_count]
      fill_fields: [health_screening.last_update_week]
      filters:
        health_screening.last_update_week: 7 week , 2 week from now
      sorts: [health_screening.last_update_week desc]
      limit: 500
      dynamic_fields: [{table_calculation: day_index, label: day_index, expression: 'diff_days(${health_screening.last_update_week},now())',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}, {category: table_calculation, expression: 'slope(ln(${health_screening.Drugs_count}),
            ${day_index})', label: slope, value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, table_calculation: slope, _type_hint: number}, {category: table_calculation,
          expression: 'intercept(ln(${health_screening.Drugs_count}), ${day_index})',
          label: intercept, value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, table_calculation: intercept, _type_hint: number},
        {table_calculation: line_equation, label: line_equation, expression: 'exp(${intercept}
            + ${slope} * ${day_index})', value_format: !!null '', value_format_name: decimal_0,
          _kind_hint: measure, _type_hint: number}, {category: table_calculation,
          expression: 'if(${day_index}>=3,${health_screening.Drugs_count},${line_equation})',
          label: final, value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          table_calculation: final, _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.last_update_week]
      fill_fields: [health_screening.last_update_week]
      filters:
        health_screening.last_update_week: 7 week , 2 week from now
      sorts: [health_screening.last_update_week desc]
      limit: 500
      dynamic_fields: [{table_calculation: today, label: today, expression: now(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: date}]
      join_fields:
      - field_name: health_screening.last_update_week
        source_field_name: health_screening.last_update_week
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Drugs Count, orientation: left, series: [{axisId: health_screening.Drugs_count,
            id: health_screening.Drugs_count, name: Drugs Count}, {axisId: final,
            id: final, name: Projected Screening Count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Weeks
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
    point_style: circle
    series_colors:
      final: "#15bbe8"
      health_screening.Drugs_count: "#F9AB00"
    series_labels:
      final: Projected Drugs Count
      health_screening.Total_Screening: Screening Count
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    type: looker_line
    hidden_fields: [day_index, slope, intercept, line_equation, today]
    column_limit: 50
    listen:
    - Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
    - Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
    row: 15
    col: 6
    width: 12
    height: 6
  - name: Confirmed MTM Count in Past 6 weeks + 2 weeks Projection
    title: Confirmed MTM Count in Past 6 weeks + 2 weeks Projection
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.last_update_week, health_screening.MTM_Diabetes, health_screening.MTM_dialysis_capd,
        health_screening.MTM_hypertension, health_screening.MTM_other, health_screening.MTM_palliative_care,
        health_screening.MTM_physiotherapy]
      fill_fields: [health_screening.last_update_week]
      filters:
        health_screening.last_update_week: 7 week , 2 week from now
      sorts: [health_screening.last_update_week desc]
      limit: 500
      dynamic_fields: [{table_calculation: day_index, label: day_index, expression: 'diff_days(${health_screening.last_update_week},now())',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}, {category: table_calculation, expression: 'slope(ln(${mtm_beneficiaries}),
            ${day_index})', label: slope, value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, table_calculation: slope, _type_hint: number}, {category: table_calculation,
          expression: 'intercept(ln(${mtm_beneficiaries}), ${day_index})', label: intercept,
          value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
          table_calculation: intercept, _type_hint: number}, {table_calculation: line_equation,
          label: line_equation, expression: 'exp(${intercept} + ${slope} * ${day_index})',
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}, {category: table_calculation, expression: "${health_screening.MTM_Diabetes}+${health_screening.MTM_dialysis_capd}+${health_screening.MTM_hypertension}+${health_screening.MTM_other}+${health_screening.MTM_palliative_care}+${health_screening.MTM_physiotherapy}",
          label: MTM Beneficiaries, value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, table_calculation: mtm_beneficiaries, _type_hint: number},
        {category: table_calculation, expression: 'if(${day_index}>=3,${mtm_beneficiaries},${line_equation})',
          label: final, value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          table_calculation: final, _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.last_update_week]
      fill_fields: [health_screening.last_update_week]
      filters:
        health_screening.last_update_week: 7 week , 2 week from now
      sorts: [health_screening.last_update_week desc]
      limit: 500
      dynamic_fields: [{table_calculation: today, label: today, expression: now(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: date}]
      join_fields:
      - field_name: health_screening.last_update_week
        source_field_name: health_screening.last_update_week
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Drugs Count, orientation: left, series: [{axisId: health_screening.Drugs_count,
            id: health_screening.Drugs_count, name: Drugs Count}, {axisId: final,
            id: final, name: Projected Screening Count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Weeks
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
    point_style: circle
    series_colors:
      final: "#F9AB00"
      mtm_beneficiaries: "#32b260"
    series_labels:
      final: Projected MTM beneficiaries Count
      health_screening.Total_Screening: Screening Count
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    type: looker_line
    hidden_fields: [day_index, slope, intercept, line_equation, today, health_screening.MTM_Diabetes,
      health_screening.MTM_dialysis_capd, health_screening.MTM_hypertension, health_screening.MTM_other,
      health_screening.MTM_palliative_care, health_screening.MTM_physiotherapy]
    column_limit: 50
    listen:
    - Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    - Districts: family_member_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      " Date": family_master.last_update_date
    row: 21
    col: 6
    width: 12
    height: 6
  - title: Age Wise Unique Screenings
    name: Age Wise Unique Screenings
    model: tnphr_state_level
    explore: family_master
    type: looker_pie
    fields: [family_member_master.age_interval2, health_screening.Unique_Screening]
    fill_fields: [family_member_master.age_interval2]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.district_name: ''
      family_member_master.hud_name: ''
      facility_directorate_master.directorate_name: ''
      family_member_master.block_name: ''
    sorts: [family_member_master.age_interval2]
    limit: 5000
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: a3f9463f-88e2-450e-9363-9525c96ecd6d
      options:
        steps: 5
    series_colors: {}
    series_labels: {}
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
    custom_color_enabled: true
    custom_color: "#EA4335"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    font_size: 12
    hidden_points_if_no: []
    row: 3
    col: 18
    width: 6
    height: 6
  - title: Individuals with Drugs issued
    name: Individuals with Drugs issued
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.member_drug_Delivered]
    filters:
      family_member_master.district_name: ''
      family_member_master.hud_name: ''
      family_member_master.last_update_date: ''
      facility_directorate_master.directorate_name: ''
      family_member_master.block_name: ''
    limit: 1000
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#F9AB00",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    y_axes: [{label: Drug Count, orientation: bottom, series: [{axisId: family_member_master.count,
            id: family_member_master.count, name: Family member Master}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      family_member_master.count: "#7CB342"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
    table_theme: white
    header_background_color: "#7CB342"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    defaults_version: 1
    hidden_fields: []
    hide_totals: false
    hide_row_totals: false
    row: 15
    col: 0
    width: 6
    height: 6
  - title: Total Confirmed MTM Beneficiary
    name: Total Confirmed MTM Beneficiary
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.mtm_v1_v2]
    filters:
      family_member_master.district_name: ''
      family_member_master.hud_name: ''
      family_member_master.last_update_date: ''
      facility_directorate_master.directorate_name: ''
      family_member_master.block_name: ''
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CB342",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields: []
    row: 21
    col: 0
    width: 6
    height: 6
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
  - name: " Date"
    title: " Date"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: inline
      options: []
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_master.last_update_date
  - name: Directorate Name
    title: Directorate Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: inline
      options: []
    model: tnphr_state_level
    explore: facility_registry
    listens_to_filters: []
    field: facility_directorate_master.directorate_name
