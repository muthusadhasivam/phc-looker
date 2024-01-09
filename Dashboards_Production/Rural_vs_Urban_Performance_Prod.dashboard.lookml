- dashboard: rural_vs_urban_performance_prod
  title: Rural vs. Urban Performance v1.0.4 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 9r3SFSEwMZmlZqU17ckc5R
  elements:
  - name: "<H1>Total Population Details</H1>"
    type: text
    title_text: "<H1>Total Population Details</H1>"
    subtitle_text: ''
    body_text: ''
    row: 3
    col: 0
    width: 24
    height: 2
  - title: Total Population Gender Wise
    name: Total Population Gender Wise
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population]
    filters:
      family_member_master.gender: "-NULL"
    limit: 5000
    dynamic_fields: [{category: table_calculation, expression: '" "', label: New Calculation,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: new_calculation, _type_hint: string}]
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
    y_axes: [{label: Population Count, orientation: left, series: [{axisId: family_member_master.Male_Population,
            id: family_member_master.Male_Population, name: Male Population}, {axisId: family_member_master.Female_Population,
            id: family_member_master.Female_Population, name: Female Population},
          {axisId: family_member_master.Other_Population, id: family_member_master.Other_Population,
            name: Other Population}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Gender
    series_types: {}
    series_colors:
      family_member_master.Female_Population: "#FF8168"
      family_member_master.Other_Population: "#9334E6"
    series_labels:
      family_member_master.Other_Population: Others
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
    note_state: collapsed
    note_display: hover
    note_text: This includes gender wise number of people
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 5
    col: 7
    width: 8
    height: 5
  - title: Age Wise Population Count
    name: Age Wise Population Count
    model: tnphr
    explore: family_member_master
    type: looker_pie
    fields: [family_member_master.age_interval, family_member_master.count]
    fill_fields: [family_member_master.age_interval]
    filters:
      family_member_master.gender: "-NULL"
    sorts: [family_member_master.age_interval]
    limit: 5000
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
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
    note_state: collapsed
    note_display: hover
    note_text: This includes the number of people by calculating the age band using
      the birthdate
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 5
    col: 15
    width: 9
    height: 5
  - title: Total Rural Population
    name: Total Rural Population
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Total_population]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.village_type: VP,TP,MP
    sorts: [health_screening.Total_population desc]
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
    custom_color: "#10b224"
    hidden_fields:
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
    note_state: collapsed
    note_display: hover
    note_text: Total count of rural members i.e., members from village type "Village
      Panchayat", "Town Panchayat" and "Municipality"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 19
    col: 0
    width: 8
    height: 3
  - title: Total Urban Population
    name: Total Urban Population
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Total_population]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.village_type: CO
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
    custom_color: "#10b224"
    hidden_fields: []
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
    note_state: collapsed
    note_display: hover
    note_text: Total count of urban members i.e., members from village type "Corporation"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 19
    col: 8
    width: 8
    height: 3
  - title: Other Population
    name: Other Population
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Total_population]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.village_type: Other
    sorts: [health_screening.Total_population desc]
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
    custom_color: "#10b224"
    hidden_fields:
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
    note_state: collapsed
    note_display: hover
    note_text: "Total count of members i.e., members from village type \"Other\"\n\
      \n"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 19
    col: 16
    width: 8
    height: 3
  - title: Rural Population by Gender
    name: Rural Population by Gender
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.village_type: MP,TP,VP
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: '" "', label: New Calculation,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: new_calculation, _type_hint: string}]
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
    y_axes: [{label: Population Count, orientation: left, series: [{axisId: family_member_master.Male_Population,
            id: family_member_master.Male_Population, name: Male Population}, {axisId: family_member_master.Female_Population,
            id: family_member_master.Female_Population, name: Female Population},
          {axisId: family_member_master.Other_Population, id: family_member_master.Other_Population,
            name: Others}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Gender
    series_types: {}
    series_labels:
      family_member_master.count: Member Count
      family_member_master.Other_Population: Others
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
    hidden_fields:
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: This includes gender wise total count of rural members i.e., members
      from village type "Village Panchayat", "Town Panchayat" and "Municipality"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 22
    col: 0
    width: 8
    height: 4
  - title: Urban Population by Gender
    name: Urban Population by Gender
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.village_type: CO
    sorts: [family_member_master.Male_Population desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: '" "', label: New Calculation,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: new_calculation, _type_hint: string}]
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
    y_axes: [{label: Population Count, orientation: left, series: [{axisId: family_member_master.Male_Population,
            id: family_member_master.Male_Population, name: Male Population}, {axisId: family_member_master.Female_Population,
            id: family_member_master.Female_Population, name: Female Population},
          {axisId: family_member_master.Other_Population, id: family_member_master.Other_Population,
            name: Other Population}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Gender
    series_types: {}
    series_labels:
      family_member_master.count: Member Count
      family_member_master.Other_Population: Others
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
    hidden_fields:
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: This includes gender wise total count of urban members i.e., members
      from village type "Corporation"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 22
    col: 8
    width: 8
    height: 4
  - title: Other Population by Gender
    name: Other Population by Gender
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.village_type: Other
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: '" "', label: New Calculation,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: new_calculation, _type_hint: string}]
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
    y_axes: [{label: Population Count, orientation: left, series: [{axisId: family_member_master.Male_Population,
            id: family_member_master.Male_Population, name: Male Population}, {axisId: family_member_master.Female_Population,
            id: family_member_master.Female_Population, name: Female Population},
          {axisId: family_member_master.Other_Population, id: family_member_master.Other_Population,
            name: Other Population}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Gender
    series_types: {}
    series_labels:
      family_member_master.count: Member Count
      family_member_master.Other_Population: Others
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
    hidden_fields:
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'This includes gender wise total count of members i.e., members from
      village type "Other"

      '
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 22
    col: 16
    width: 8
    height: 4
  - title: 'Population : Municipality'
    name: 'Population : Municipality'
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.village_type, health_screening.Total_population]
    filters:
      family_member_master.village_type: MP
      family_member_master.gender: "-NULL"
    sorts: [family_member_master.village_type]
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
    custom_color: "#2333ff"
    value_format: ''
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      family_member_master.village_type: Village Type
      family_member_master.count: Members Count
    series_cell_visualizations:
      family_member_master.Members_count:
        is_active: false
    hidden_fields:
    series_types: {}
    defaults_version: 1
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
    note_state: collapsed
    note_display: hover
    note_text: Total count of members from Village Type "Municipality"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 13
    col: 8
    width: 8
    height: 3
  - title: 'Population :  Village Panchayat'
    name: 'Population :  Village Panchayat'
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.village_type, health_screening.Total_population]
    filters:
      family_member_master.village_type: VP
      family_member_master.gender: "-NULL"
    sorts: [family_member_master.village_type]
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
    custom_color: "#2333ff"
    value_format: ''
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      family_member_master.village_type: Village Type
      family_member_master.count: Members Count
    series_cell_visualizations:
      family_member_master.Members_count:
        is_active: false
    hidden_fields:
    series_types: {}
    defaults_version: 1
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
    note_state: collapsed
    note_display: hover
    note_text: Total count of members from Village Type "Village Panchayat"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 16
    col: 12
    width: 8
    height: 3
  - title: 'Population : Town Panchayat'
    name: 'Population : Town Panchayat'
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.village_type, health_screening.Total_population]
    filters:
      family_member_master.village_type: TP
      family_member_master.gender: "-NULL"
    sorts: [family_member_master.village_type]
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
    custom_color: "#2333ff"
    value_format: ''
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      family_member_master.village_type: Village Type
      family_member_master.count: Members Count
    series_cell_visualizations:
      family_member_master.Members_count:
        is_active: false
    hidden_fields:
    series_types: {}
    defaults_version: 1
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
    note_state: collapsed
    note_display: hover
    note_text: Total count of members from Village Type "Town Panchayat"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 13
    col: 16
    width: 8
    height: 3
  - title: 'Population : Corporation'
    name: 'Population : Corporation'
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.village_type, health_screening.Total_population]
    filters:
      family_member_master.village_type: CO
      family_member_master.gender: "-NULL"
    sorts: [family_member_master.village_type]
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
    custom_color: "#2333ff"
    value_format: ''
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      family_member_master.village_type: Village Type
      family_member_master.count: Members Count
    series_cell_visualizations:
      family_member_master.Members_count:
        is_active: false
    hidden_fields:
    series_types: {}
    defaults_version: 1
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
    note_state: collapsed
    note_display: hover
    note_text: Total count of members from Village Type "Corporation"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 13
    col: 0
    width: 8
    height: 3
  - title: 'Total Screenings : Corporation'
    name: 'Total Screenings : Corporation'
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.village_type, health_screening.Total_Screening]
    filters:
      family_member_master.village_type: CO
    sorts: [family_member_master.village_type]
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
    custom_color: "#9334E6"
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      family_member_master.village_type: Village Type
      family_member_master.count: Members Count
    series_cell_visualizations:
      family_member_master.Members_count:
        is_active: false
    hidden_fields:
    series_types: {}
    defaults_version: 1
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
    note_state: collapsed
    note_display: hover
    note_text: This includes count of total screenings of members who got screened
      (even if there are multiple screenings per member) from village type "Corporation"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    row: 29
    col: 0
    width: 8
    height: 3
  - title: 'Total Screenings : Municipality'
    name: 'Total Screenings : Municipality'
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.village_type, health_screening.Total_Screening]
    filters:
      family_member_master.village_type: MP
    sorts: [family_member_master.village_type]
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
    custom_color: "#9334E6"
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      family_member_master.village_type: Village Type
      family_member_master.count: Members Count
    series_cell_visualizations:
      family_member_master.Members_count:
        is_active: false
    hidden_fields:
    series_types: {}
    defaults_version: 1
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
    note_state: collapsed
    note_display: hover
    note_text: This includes count of total screenings of members who got screened
      (even if there are multiple screenings per member) from village type "Municipality"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    row: 29
    col: 8
    width: 8
    height: 3
  - title: 'Total Screenings : Town Panchayat'
    name: 'Total Screenings : Town Panchayat'
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.village_type, health_screening.Total_Screening]
    filters:
      family_member_master.village_type: TP
    sorts: [family_member_master.village_type]
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
    custom_color: "#9334E6"
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      family_member_master.village_type: Village Type
      family_member_master.count: Members Count
    series_cell_visualizations:
      family_member_master.Members_count:
        is_active: false
    hidden_fields:
    series_types: {}
    defaults_version: 1
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
    note_state: collapsed
    note_display: hover
    note_text: This includes count of total screenings of members who got screened
      (even if there are multiple screenings per member) from village type "Town Panchayat"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    row: 32
    col: 4
    width: 8
    height: 3
  - title: 'Total Screenings : Village Panchayat'
    name: 'Total Screenings : Village Panchayat'
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.village_type, health_screening.Total_Screening]
    filters:
      family_member_master.village_type: VP
    sorts: [family_member_master.village_type]
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
    custom_color: "#9334E6"
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      family_member_master.village_type: Village Type
      family_member_master.count: Members Count
    series_cell_visualizations:
      family_member_master.Members_count:
        is_active: false
    hidden_fields:
    series_types: {}
    defaults_version: 1
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
    note_state: collapsed
    note_display: hover
    note_text: This includes count of total screenings of members who got screened
      (even if there are multiple screenings per member) from village type "Village
      Panchayat"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    row: 29
    col: 16
    width: 8
    height: 3
  - title: 'Population :  Others'
    name: 'Population :  Others'
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.village_type, health_screening.Total_population]
    filters:
      family_member_master.village_type: Other
      family_member_master.gender: "-NULL"
    sorts: [family_member_master.village_type]
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
    custom_color: "#2333ff"
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      family_member_master.village_type: Village Type
      family_member_master.count: Members Count
    series_cell_visualizations:
      family_member_master.Members_count:
        is_active: false
    hidden_fields: [family_member_master.village_type]
    series_types: {}
    defaults_version: 1
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
    note_state: collapsed
    note_display: hover
    note_text: Total count of members from Village Type "Other"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 16
    col: 4
    width: 8
    height: 3
  - title: 'Total Screenings : Others'
    name: 'Total Screenings : Others'
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.village_type, health_screening.Total_Screening]
    filters:
      family_member_master.village_type: Other
    sorts: [family_member_master.village_type]
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
    custom_color: "#9334E6"
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      family_member_master.village_type: Village Type
      family_member_master.count: Members Count
    series_cell_visualizations:
      family_member_master.Members_count:
        is_active: false
    hidden_fields:
    series_types: {}
    defaults_version: 1
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
    note_state: collapsed
    note_display: above
    note_text: This includes count of total screenings of members who got screened
      (even if there are multiple screenings per member) from village type "Other"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    row: 32
    col: 12
    width: 8
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
  - name: "<H1>Village Type wise Population Details</H1>"
    type: text
    title_text: "<H1>Village Type wise Population Details</H1>"
    subtitle_text: ''
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 3
  - name: "<H1>Village Type wise Screening Details</H1>"
    type: text
    title_text: "<H1>Village Type wise Screening Details</H1>"
    subtitle_text: ''
    body_text: ''
    row: 26
    col: 0
    width: 24
    height: 3
  - title: Total Population
    name: Total Population
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Total_population]
    filters:
      family_member_master.gender: "-NULL"
      health_screening.district_name: ''
      health_screening.block_name: ''
      health_screening.hud_name: ''
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
    custom_color: "#EA4335"
    hidden_fields: []
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
    note_state: collapsed
    note_display: hover
    note_text: Total count of members
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 5
    col: 0
    width: 7
    height: 5
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population, family_member_master.village_type,
        family_member_master.district_name]
      filters:
        family_master.district_name: "-NULL"
      sorts: [health_screening.Total_population desc]
      limit: 500
      join_fields: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.village_type, family_member_master.district_name,
        health_screening.Drugs_count]
      filters:
        health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
        family_master.district_name: "-NULL"
      sorts: [health_screening.Drugs_count desc]
      limit: 5000
      hidden_fields: [health_screening.Drugs_count]
      join_fields:
      - field_name: family_member_master.village_type
        source_field_name: family_member_master.village_type
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.village_type, family_member_master.district_name]
      filters:
        family_master.district_name: "-NULL"
      sorts: [health_screening.mtm_beneficiary_v1_count desc]
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
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      hidden_fields: [health_history.mtm_beneficiary_v2_count, health_screening.mtm_beneficiary_v1_count]
      defaults_version: 1
      join_fields:
      - field_name: family_member_master.village_type
        source_field_name: family_member_master.village_type
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [family_member_master.village_type, health_screening.Total_Screening,
        family_member_master.district_name]
      filters:
        family_master.district_name: "-NULL"
        family_member_master.village_type: "-NULL"
      sorts: [family_member_master.village_type]
      limit: 5000
      show_view_names: false
      show_row_numbers: false
      transpose: false
      truncate_text: true
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
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      series_labels:
        family_member_master.village_type: Village Type
        family_member_master.count: Total Population
        family_member_master.Village_type_Others_count: Others
      series_cell_visualizations:
        family_member_master.Members_count:
          is_active: false
      hidden_fields:
      series_types: {}
      defaults_version: 1
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
      join_fields:
      - field_name: family_member_master.village_type
        source_field_name: family_member_master.village_type
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    show_sql_query_menu_options: false
    column_order: []
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      family_member_master.count: Total Population
      q2_health_screening.Total_Screening: MTM Beneficiary
      total_screening_count: Total Screenings
      total_drugs_count: Drugs Issued
    series_column_widths:
      health_screening.district_name: 150
      CO_total_population: 131
      CO_total_screening_count: 133
      CO_total_drugs_count: 112
      CO_total_mtm_beneficiaries: 177
      MP_total_population: 131
      MP_total_screening_count: 133
      MP_total_drugs_count: 112
      MP_total_mtm_beneficiaries: 177
      Other_total_population: 131
      Other_total_screening_count: 133
      Other_total_drugs_count: 112
      Other_total_mtm_beneficiaries: 177
      TP_total_population: 131
      TP_total_screening_count: 133
      TP_total_drugs_count: 112
      TP_total_mtm_beneficiaries: 177
      VP_total_population: 131
      VP_total_screening_count: 133
      VP_total_drugs_count: 112
      VP_total_mtm_beneficiaries: 177
      family_master.district_name: 188
      CO_health_screening.Total_population: 131
      Other_health_screening.Total_population: 131
      VP_health_screening.Total_population: 131
      TP_health_screening.Total_population: 131
      MP_health_screening.Total_population: 131
      family_member_master.district_name: 257
      CB_total_population: 131
      CB_total_screening_count: 133
      CB_total_drugs_count: 112
      CB_total_mtm_beneficiaries: 177
    series_cell_visualizations:
      family_member_master.count:
        is_active: true
    series_text_format:
      total_population:
        align: center
      total_screening_count:
        align: center
      total_drugs_count:
        align: center
      total_mtm_beneficiaries:
        align: center
      family_member_master.village_type:
        align: center
    table_theme: white
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '38'
    enable_conditional_formatting: false
    header_font_color: "#fff5f5"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '13'
    rows_font_size: '14'
    conditional_formatting: [{type: equal to, value: 0, background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [total_screening_count, total_drugs_count]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
    hidden_fields: [health_screening.Total_Screening, health_screening.Drugs_count,
      health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
      health_screening.Total_population]
    type: looker_grid
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: health_screening.Total_population
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
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1609"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
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
        label: Health Screening Drugs Count
        label_from_parameter:
        label_short: Drugs Count
        map_layer:
        name: health_screening.Drugs_count
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
        field_group_variant: Drugs Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Drugs_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1742"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'CONCAT(${member_id},${screening_id},${drugs_id}) '
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: health_screening.mtm_beneficiary_v1_count
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
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1883"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
          condition: "%yes%"
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=721"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
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
        label: Health Screening Total Screening
        label_from_parameter:
        label_short: Total Screening
        map_layer:
        name: health_screening.Total_Screening
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
        field_group_variant: Total Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1325"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
        sql_case:
        filters:
        times_used: 0
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
        label: Family Member Master District Name
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
        view_label: Family Member Master
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
      table_calculations:
      - label: Total Population
        name: total_population
        expression: if(${health_screening.Total_population}>0,${health_screening.Total_population},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Total Screening Count
        name: total_screening_count
        expression: if(${health_screening.Total_Screening}>0,${health_screening.Total_Screening},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Total Drugs Count
        name: total_drugs_count
        expression: if(${health_screening.Drugs_count}>0,${health_screening.Drugs_count},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: 'Total MTM beneficiaries '
        name: total_mtm_beneficiaries
        expression: if ((${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count})>1,${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count},0)
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
        label: Family Member Master Village Type
        label_from_parameter:
        label_short: Village Type
        map_layer:
        name: family_member_master.village_type
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Village Type
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.village_type
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=298"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: if (${TABLE}.village_type is null, "Other", ${TABLE}.village_type)
        sql_case:
        filters:
        times_used: 0
        sorted:
          desc: false
          sort_index: 0
    hide_totals: false
    hide_row_totals: false
    pivots: [family_member_master.village_type]
    sorts: [family_member_master.village_type]
    dynamic_fields: [{category: table_calculation, expression: 'if(${health_screening.Total_population}>0,${health_screening.Total_population},0)',
        label: Total Population, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: total_population,
        _type_hint: number}, {table_calculation: total_screening_count, label: Total
          Screening Count, expression: 'if(${health_screening.Total_Screening}>0,${health_screening.Total_Screening},0)',
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: total_drugs_count, label: Total Drugs Count, expression: 'if(${health_screening.Drugs_count}>0,${health_screening.Drugs_count},0)',
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        category: table_calculation, expression: 'if ((${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count})>1,${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count},0)',
        label: 'Total MTM beneficiaries ', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_mtm_beneficiaries, _type_hint: number}]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    row: 35
    col: 0
    width: 24
    height: 8
  - name: HUD Wise
    title: HUD Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population, family_member_master.village_type,
        family_member_master.hud_name]
      filters:
        family_member_master.hud_name: "-NULL"
      sorts: [health_screening.Total_population desc]
      limit: 500
      join_fields: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.village_type, health_screening.Drugs_count, family_member_master.hud_name]
      filters:
        health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
        family_member_master.hud_name: "-NULL"
      sorts: [health_screening.Drugs_count desc]
      limit: 5000
      hidden_fields: [health_screening.Drugs_count]
      join_fields:
      - field_name: family_member_master.village_type
        source_field_name: family_member_master.village_type
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.village_type, family_member_master.hud_name]
      filters:
        family_member_master.hud_name: "-NULL"
      sorts: [health_screening.mtm_beneficiary_v1_count desc]
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
      series_types: {}
      hidden_fields: [health_history.mtm_beneficiary_v2_count, health_screening.mtm_beneficiary_v1_count]
      defaults_version: 1
      join_fields:
      - field_name: family_member_master.village_type
        source_field_name: family_member_master.village_type
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [family_member_master.village_type, health_screening.Total_Screening,
        family_member_master.hud_name]
      filters:
        family_member_master.village_type: "-NULL"
        family_member_master.hud_name: "-NULL"
      sorts: [family_member_master.village_type]
      limit: 5000
      show_view_names: false
      show_row_numbers: false
      transpose: false
      truncate_text: true
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
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      series_labels:
        family_member_master.village_type: Village Type
        family_member_master.count: Total Population
        family_member_master.Village_type_Others_count: Others
      series_cell_visualizations:
        family_member_master.Members_count:
          is_active: false
      hidden_fields:
      series_types: {}
      defaults_version: 1
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
      join_fields:
      - field_name: family_member_master.village_type
        source_field_name: family_member_master.village_type
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    show_sql_query_menu_options: false
    column_order: []
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      family_member_master.count: Total Population
      q2_health_screening.Total_Screening: MTM Beneficiary
      total_screening_count: Total Screenings
      total_drugs_count: Drugs Issued
    series_column_widths:
      health_screening.district_name: 150
      CO_total_population: 131
      CO_total_screening_count: 133
      CO_total_drugs_count: 112
      CO_total_mtm_beneficiaries: 177
      MP_total_population: 131
      MP_total_screening_count: 133
      MP_total_drugs_count: 112
      MP_total_mtm_beneficiaries: 177
      Other_total_population: 131
      Other_total_screening_count: 133
      Other_total_drugs_count: 112
      Other_total_mtm_beneficiaries: 177
      TP_total_population: 131
      TP_total_screening_count: 133
      TP_total_drugs_count: 112
      TP_total_mtm_beneficiaries: 177
      VP_total_population: 131
      VP_total_screening_count: 133
      VP_total_drugs_count: 112
      VP_total_mtm_beneficiaries: 177
      family_master.district_name: 188
      CO_health_screening.Total_population: 131
      Other_health_screening.Total_population: 131
      VP_health_screening.Total_population: 131
      TP_health_screening.Total_population: 131
      MP_health_screening.Total_population: 131
      family_member_master.hud_name: 257
      CB_total_population: 131
      CB_total_screening_count: 133
      CB_total_drugs_count: 112
      CB_total_mtm_beneficiaries: 177
    series_cell_visualizations:
      family_member_master.count:
        is_active: true
    series_text_format:
      total_population:
        align: center
      total_screening_count:
        align: center
      total_drugs_count:
        align: center
      total_mtm_beneficiaries:
        align: center
      family_member_master.village_type:
        align: center
    table_theme: white
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '38'
    enable_conditional_formatting: false
    header_font_color: "#fff5f5"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '13'
    rows_font_size: '14'
    conditional_formatting: [{type: equal to, value: 0, background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [total_screening_count, total_drugs_count]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
    hidden_fields: [health_screening.Total_Screening, health_screening.Drugs_count,
      health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
      health_screening.Total_population]
    type: looker_grid
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: health_screening.Total_population
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
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1609"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
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
        label: Health Screening Drugs Count
        label_from_parameter:
        label_short: Drugs Count
        map_layer:
        name: health_screening.Drugs_count
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
        field_group_variant: Drugs Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Drugs_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1742"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'CONCAT(${member_id},${screening_id},${drugs_id}) '
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: health_screening.mtm_beneficiary_v1_count
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
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1883"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
          condition: "%yes%"
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=721"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
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
        label: Health Screening Total Screening
        label_from_parameter:
        label_short: Total Screening
        map_layer:
        name: health_screening.Total_Screening
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
        field_group_variant: Total Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1325"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
        sql_case:
        filters:
        times_used: 0
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
        label: Family Member Master Hud Name
        label_from_parameter:
        label_short: Hud Name
        map_layer:
        name: family_member_master.hud_name
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.hud_name
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=150"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.hud_name "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Total Population
        name: total_population
        expression: if(${health_screening.Total_population}>0,${health_screening.Total_population},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Total Screening Count
        name: total_screening_count
        expression: if(${health_screening.Total_Screening}>0,${health_screening.Total_Screening},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Total Drugs Count
        name: total_drugs_count
        expression: if(${health_screening.Drugs_count}>0,${health_screening.Drugs_count},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: 'Total MTM beneficiaries '
        name: total_mtm_beneficiaries
        expression: if ((${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count})>1,${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count},0)
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
        label: Family Member Master Village Type
        label_from_parameter:
        label_short: Village Type
        map_layer:
        name: family_member_master.village_type
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Village Type
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.village_type
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=298"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: if (${TABLE}.village_type is null, "Other", ${TABLE}.village_type)
        sql_case:
        filters:
        times_used: 0
        sorted:
          desc: false
          sort_index: 0
    hide_totals: false
    hide_row_totals: false
    pivots: [family_member_master.village_type]
    sorts: [family_member_master.village_type]
    dynamic_fields: [{category: table_calculation, expression: 'if(${health_screening.Total_population}>0,${health_screening.Total_population},0)',
        label: Total Population, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: total_population,
        _type_hint: number}, {table_calculation: total_screening_count, label: Total
          Screening Count, expression: 'if(${health_screening.Total_Screening}>0,${health_screening.Total_Screening},0)',
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: total_drugs_count, label: Total Drugs Count, expression: 'if(${health_screening.Drugs_count}>0,${health_screening.Drugs_count},0)',
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        category: table_calculation, expression: 'if ((${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count})>1,${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count},0)',
        label: 'Total MTM beneficiaries ', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_mtm_beneficiaries, _type_hint: number}]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    row: 43
    col: 0
    width: 24
    height: 7
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population, family_member_master.village_type,
        family_member_master.block_name]
      filters:
        family_member_master.block_name: "-NULL"
      sorts: [health_screening.Total_population desc]
      limit: 5000
      join_fields: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.village_type, health_screening.Drugs_count, family_member_master.block_name]
      filters:
        health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
        family_member_master.block_name: "-NULL"
      sorts: [health_screening.Drugs_count desc]
      limit: 5000
      hidden_fields: [health_screening.Drugs_count]
      join_fields:
      - field_name: family_member_master.village_type
        source_field_name: family_member_master.village_type
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.village_type, family_member_master.block_name]
      filters:
        family_member_master.block_name: "-NULL"
      sorts: [health_screening.mtm_beneficiary_v1_count desc]
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
      series_types: {}
      hidden_fields: [health_history.mtm_beneficiary_v2_count, health_screening.mtm_beneficiary_v1_count]
      defaults_version: 1
      join_fields:
      - field_name: family_member_master.village_type
        source_field_name: family_member_master.village_type
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [family_member_master.village_type, health_screening.Total_Screening,
        family_member_master.block_name]
      filters:
        family_member_master.village_type: "-NULL"
        family_member_master.block_name: "-NULL"
      sorts: [family_member_master.village_type]
      limit: 5000
      show_view_names: false
      show_row_numbers: false
      transpose: false
      truncate_text: true
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
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      series_labels:
        family_member_master.village_type: Village Type
        family_member_master.count: Total Population
        family_member_master.Village_type_Others_count: Others
      series_cell_visualizations:
        family_member_master.Members_count:
          is_active: false
      hidden_fields:
      series_types: {}
      defaults_version: 1
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
      join_fields:
      - field_name: family_member_master.village_type
        source_field_name: family_member_master.village_type
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    show_sql_query_menu_options: false
    column_order: []
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      family_member_master.count: Total Population
      q2_health_screening.Total_Screening: MTM Beneficiary
      total_screening_count: Total Screenings
      total_drugs_count: Drugs Issued
    series_column_widths:
      family_member_master.block_name: 257
      CB_total_population: 131
      CB_total_screening_count: 133
      CB_total_drugs_count: 112
      CB_total_mtm_beneficiaries: 177
      CO_total_population: 131
      CO_total_screening_count: 133
      CO_total_drugs_count: 112
      CO_total_mtm_beneficiaries: 177
      MP_total_population: 131
      MP_total_screening_count: 133
      MP_total_drugs_count: 112
      MP_total_mtm_beneficiaries: 177
      Other_total_population: 131
      Other_total_screening_count: 133
      Other_total_drugs_count: 112
      Other_total_mtm_beneficiaries: 177
      TP_total_population: 131
      TP_total_screening_count: 133
      TP_total_drugs_count: 112
      TP_total_mtm_beneficiaries: 177
      VP_total_population: 131
      VP_total_screening_count: 133
      VP_total_drugs_count: 112
    series_cell_visualizations:
      family_member_master.count:
        is_active: true
    series_text_format:
      total_population:
        align: center
      total_screening_count:
        align: center
      total_drugs_count:
        align: center
      total_mtm_beneficiaries:
        align: center
      family_member_master.village_type:
        align: center
    table_theme: white
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '38'
    enable_conditional_formatting: false
    header_font_color: "#fff5f5"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '13'
    rows_font_size: '14'
    conditional_formatting: [{type: equal to, value: 0, background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [total_screening_count, total_drugs_count]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
    hidden_fields: [health_screening.Total_Screening, health_screening.Drugs_count,
      health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
      health_screening.Total_population]
    type: looker_grid
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: health_screening.Total_population
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
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1609"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
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
        label: Health Screening Drugs Count
        label_from_parameter:
        label_short: Drugs Count
        map_layer:
        name: health_screening.Drugs_count
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
        field_group_variant: Drugs Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Drugs_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1742"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'CONCAT(${member_id},${screening_id},${drugs_id}) '
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: health_screening.mtm_beneficiary_v1_count
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
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1883"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
          condition: "%yes%"
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=721"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
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
        label: Health Screening Total Screening
        label_from_parameter:
        label_short: Total Screening
        map_layer:
        name: health_screening.Total_Screening
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
        field_group_variant: Total Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1325"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
        sql_case:
        filters:
        times_used: 0
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
        label: Family Member Master Block Name
        label_from_parameter:
        label_short: Block Name
        map_layer:
        name: family_member_master.block_name
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.block_name
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=67"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.block_name "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Total Population
        name: total_population
        expression: if(${health_screening.Total_population}>0,${health_screening.Total_population},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Total Screening Count
        name: total_screening_count
        expression: if(${health_screening.Total_Screening}>0,${health_screening.Total_Screening},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Total Drugs Count
        name: total_drugs_count
        expression: if(${health_screening.Drugs_count}>0,${health_screening.Drugs_count},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: 'Total MTM beneficiaries '
        name: total_mtm_beneficiaries
        expression: if ((${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count})>1,${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count},0)
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
        label: Family Member Master Village Type
        label_from_parameter:
        label_short: Village Type
        map_layer:
        name: family_member_master.village_type
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Village Type
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.village_type
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=298"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: if (${TABLE}.village_type is null, "Other", ${TABLE}.village_type)
        sql_case:
        filters:
        times_used: 0
        sorted:
          desc: false
          sort_index: 0
    hide_totals: false
    hide_row_totals: false
    pivots: [family_member_master.village_type]
    sorts: [family_member_master.village_type]
    dynamic_fields: [{category: table_calculation, expression: 'if(${health_screening.Total_population}>0,${health_screening.Total_population},0)',
        label: Total Population, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: total_population,
        _type_hint: number}, {table_calculation: total_screening_count, label: Total
          Screening Count, expression: 'if(${health_screening.Total_Screening}>0,${health_screening.Total_Screening},0)',
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: total_drugs_count, label: Total Drugs Count, expression: 'if(${health_screening.Drugs_count}>0,${health_screening.Drugs_count},0)',
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        category: table_calculation, expression: 'if ((${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count})>1,${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count},0)',
        label: 'Total MTM beneficiaries ', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_mtm_beneficiaries, _type_hint: number}]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
      Toggle Role: health_screening.role_toggle
    row: 50
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
    model: tnphr
    explore: family_member_master
    listens_to_filters: [Huds, Blocks]
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
    model: tnphr
    explore: family_member_master
    listens_to_filters: [Districts, Blocks]
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
    model: tnphr
    explore: family_member_master
    listens_to_filters: [Huds, Districts]
    field: family_member_master.block_name
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
    model: tnphr
    explore: facility_registry
    listens_to_filters: []
    field: facility_directorate_master.directorate_name
  - name: Toggle Role
    title: Toggle Role
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
      options: []
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.role_toggle
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
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.role_name
