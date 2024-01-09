- dashboard: field_verification_v2_0_1
  title: Field Verification v2.0.1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: w7QMhW1yWVHihTeg29JrCY
  elements:
  - title: Total verified population
    name: Total verified population
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.verified_population]
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
      Community District: population.citizen_district_name
      Community HUD: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Institution Directorate: population.user_directorate
      Date: population.citizen_created_date
    row: 4
    col: 0
    width: 8
    height: 6
  - title: Families Added
    name: Families Added
    model: tnphr-prod-kpi
    explore: family
    type: single_value
    fields: [family.total_families]
    filters:
      family.user_created_by: user
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
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
    defaults_version: 1
    series_types: {}
    listen:
      Community District: family.family_district_name
      Community HUD: family.family_hud_name
      Community Block: family.family_block_name
      Community Village: family.family_village_name
      Institution Directorate: family.user_directorate
      Date: family.family_created_date
    row: 10
    col: 0
    width: 4
    height: 6
  - title: Members Status
    name: Members Status
    model: tnphr-prod-kpi
    explore: population
    type: looker_column
    fields: [population.resident_status_resident, population.resident_status_death,
      population.resident_status_duplicate, population.resident_status_non_traceable,
      population.resident_status_migrated, population.resident_status_Visitor]
    filters:
      population.user_role: ''
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
    y_axes: [{label: Population, orientation: left, series: [{axisId: population.resident_status_resident,
            id: population.resident_status_resident, name: Resident Count}, {axisId: population.resident_status_death,
            id: population.resident_status_death, name: Death Count}, {axisId: population.resident_status_duplicate,
            id: population.resident_status_duplicate, name: Duplicate Count}, {axisId: population.resident_status_non_traceable,
            id: population.resident_status_non_traceable, name: Non-traceable Count},
          {axisId: population.resident_status_migrated, id: population.resident_status_migrated,
            name: Migrated Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Resident Status
    series_types: {}
    series_labels:
      population.Other_resident_status_population: Others
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 1
    listen:
      Community District: population.citizen_district_name
      Community HUD: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Institution Directorate: population.user_directorate
      Date: population.citizen_created_date
    row: 22
    col: 0
    width: 8
    height: 6
  - title: District Wise
    name: District Wise
    model: tnphr-prod-kpi
    explore: population
    type: looker_grid
    fields: [population.total_population, population.verified_population, population.resident_status_resident,
      population.resident_status_death, population.resident_status_non_traceable,
      population.resident_status_migrated, population.resident_status_duplicate, population.citizen_district_name,
      population.citizen_district_gid, population.resident_status_Visitor]
    sorts: [population.verified_population desc]
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
      population.citizen_district_gid: Community District Gid
      population.citizen_district_name: Community District
      population.resident_status_death: Death
      population.resident_status_resident: Resident
      population.resident_status_duplicate: Duplicate
      population.resident_status_migrated: Migrated
      population.resident_status_non_traceable: Non-traceable
      population.Other_resident_status_population: Others
      population.total_population: Total Population
      population.verified_population: Verified Population
      population.resident_status_Visitor: Visitor
    series_column_widths:
      population.citizen_district_name: 200
      population.citizen_district_gid: 200
      population.total_population: 200
      population.verified_population: 200
      population.resident_status_resident: 200
      population.resident_status_death: 200
      population.resident_status_non_traceable: 200
      population.resident_status_migrated: 200
      population.resident_status_duplicate: 200
      population.Other_resident_status_population: 200
      population.resident_status_Visitor: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.total_population:
        align: center
      population.verified_population:
        align: center
      population.district_name:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_district_name:
        align: center
      population.Other_resident_status_population:
        align: center
      population.resident_status_resident:
        align: center
      population.resident_status_death:
        align: center
      population.resident_status_non_traceable:
        align: center
      population.resident_status_migrated:
        align: center
      population.resident_status_duplicate:
        align: center
      population.resident_status_Visitor:
        align: center
    header_font_color: "#ffffff"
    header_background_color: "#1f2aff"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community HUD: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Institution Directorate: population.user_directorate
      Date: population.citizen_created_date
    row: 4
    col: 8
    width: 16
    height: 6
  - title: HUD Wise
    name: HUD Wise
    model: tnphr-prod-kpi
    explore: population
    type: looker_grid
    fields: [population.total_population, population.verified_population, population.resident_status_resident,
      population.resident_status_death, population.resident_status_non_traceable,
      population.resident_status_migrated, population.resident_status_duplicate, population.citizen_hud_name,
      population.citizen_hud_gid, population.citizen_district_name, population.citizen_district_gid,
      population.resident_status_Visitor]
    sorts: [population.verified_population desc]
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
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.total_population,
      population.verified_population, population.resident_status_resident, population.resident_status_death,
      population.resident_status_non_traceable, population.resident_status_migrated,
      population.resident_status_duplicate, population.Other_resident_status_population]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.resident_status_resident: Resident
      population.resident_status_death: Death
      population.resident_status_non_traceable: Non-traceable
      population.resident_status_migrated: Migrated
      population.resident_status_duplicate: Duplicate
      population.Other_resident_status_population: Others
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.total_population: Total Population
      population.verified_population: Verified Population
      population.resident_status_Visitor: Visitor
    series_column_widths:
      population.citizen_hud_name: 200
      population.citizen_district_name: 200
      population.citizen_hud_gid: 200
      population.citizen_district_gid: 200
      population.total_population: 200
      population.verified_population: 200
      population.resident_status_resident: 200
      population.resident_status_death: 200
      population.resident_status_non_traceable: 200
      population.resident_status_migrated: 200
      population.resident_status_duplicate: 200
      population.Other_resident_status_population: 200
      population.resident_status_Visitor: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.total_population:
        align: center
      population.verified_population:
        align: center
      population.district_name:
        align: center
      population.hud_name:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      population.Other_resident_status_population:
        align: center
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      population.resident_status_death:
        align: center
      population.resident_status_resident:
        align: center
      population.resident_status_non_traceable:
        align: center
      population.resident_status_migrated:
        align: center
      population.resident_status_duplicate:
        align: center
      population.resident_status_Visitor:
        align: center
    header_font_color: "#ffffff"
    header_background_color: "#1f2aff"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community HUD: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Institution Directorate: population.user_directorate
      Date: population.citizen_created_date
    row: 10
    col: 8
    width: 16
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
      <center>Field Verification - Use to understand the count of verified/non-verified population in TN</center>
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Members Added
    name: Members Added
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    filters:
      population.user_created_by: user
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
      Community District: population.citizen_district_name
      Community HUD: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Institution Directorate: population.user_directorate
      Date: population.citizen_created_date
    row: 10
    col: 4
    width: 4
    height: 6
  - name: Additions in Last 6 Weeks
    title: Additions in Last 6 Weeks
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: looker_line
      fields: [population.total_population, population.citizen_created_week]
      fill_fields: [population.citizen_created_week]
      filters:
        population.citizen_created_week: 6 weeks
        population.user_created_by: user
      sorts: [population.citizen_created_week desc]
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
      show_null_points: true
      interpolation: linear
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      defaults_version: 1
      series_types: {}
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families, family.family_created_week]
      fill_fields: [family.family_created_week]
      filters:
        family.family_created_week: 6 weeks
        family.user_created_by: user
      sorts: [family.family_created_week desc]
      limit: 500
      join_fields:
      - field_name: family.family_created_week
        source_field_name: population.citizen_created_week
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: population.total_population,
            id: population.total_population, name: Total Population}, {axisId: family.total_families,
            id: family.total_families, name: Total Families}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types:
      population.total_population: area
      family.total_families: area
      members_added: area
      families_added: area
    point_style: circle
    series_labels:
      population.total_population: Members added
      family.total_families: Families added
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    type: looker_line
    hidden_fields: [population.total_population, family.total_families]
    dynamic_fields: [{category: table_calculation, expression: 'if(${population.total_population}>0,${population.total_population},0)',
        label: Members Added, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: members_added, _type_hint: number},
      {category: table_calculation, expression: 'if(${family.total_families}>0,${family.total_families},0)',
        label: Families Added, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: families_added, _type_hint: number}]
    listen:
    - Community District: population.citizen_district_name
      Community HUD: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Institution Directorate: population.user_directorate
    - Community District: family.family_district_name
      Community HUD: family.family_hud_name
      Community Block: family.family_block_name
      Community Village: family.family_village_name
      Institution Directorate: family.user_directorate
    row: 16
    col: 0
    width: 8
    height: 6
  - title: Block Wise
    name: Block Wise
    model: tnphr-prod-kpi
    explore: population
    type: looker_grid
    fields: [population.total_population, population.verified_population, population.resident_status_resident,
      population.resident_status_death, population.resident_status_non_traceable,
      population.resident_status_migrated, population.resident_status_duplicate, population.citizen_hud_name,
      population.citizen_hud_gid, population.citizen_district_name, population.citizen_district_gid,
      population.citizen_block_name, population.citizen_block_gid, population.resident_status_Visitor]
    sorts: [population.verified_population desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
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
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
      population.citizen_block_gid, population.total_population, population.verified_population,
      population.resident_status_resident, population.resident_status_death, population.resident_status_non_traceable,
      population.resident_status_migrated, population.resident_status_duplicate, population.Other_resident_status_population]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.resident_status_resident: Resident
      population.resident_status_death: Death
      population.resident_status_non_traceable: Non-traceable
      population.resident_status_migrated: Migrated
      population.resident_status_duplicate: Duplicate
      population.Other_resident_status_population: Others
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.total_population: Total Population
      population.verified_population: Verified Population
      population.citizen_block_name: Community Block
      population.citizen_block_gid: Community Block Gid
      population.resident_status_Visitor: Visitor
    series_column_widths:
      population.citizen_hud_name: 200
      population.citizen_district_name: 200
      population.citizen_hud_gid: 200
      population.citizen_district_gid: 200
      population.total_population: 200
      population.verified_population: 200
      population.resident_status_resident: 200
      population.resident_status_death: 200
      population.resident_status_non_traceable: 200
      population.resident_status_migrated: 200
      population.resident_status_duplicate: 200
      population.Other_resident_status_population: 200
      population.citizen_block_name: 200
      population.citizen_block_gid: 200
      population.resident_status_Visitor: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.total_population:
        align: center
      population.verified_population:
        align: center
      population.district_name:
        align: center
      population.hud_name:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      population.Other_resident_status_population:
        align: center
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      population.resident_status_death:
        align: center
      population.resident_status_resident:
        align: center
      population.resident_status_non_traceable:
        align: center
      population.resident_status_migrated:
        align: center
      population.resident_status_duplicate:
        align: center
      population.citizen_block_name:
        align: center
      population.citizen_block_gid:
        align: center
      population.resident_status_Visitor:
        align: center
    header_font_color: "#ffffff"
    header_background_color: "#1f2aff"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community HUD: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Institution Directorate: population.user_directorate
      Date: population.citizen_created_date
    row: 16
    col: 8
    width: 16
    height: 6
  - title: Village Wise
    name: Village Wise
    model: tnphr-prod-kpi
    explore: population
    type: looker_grid
    fields: [population.total_population, population.verified_population, population.resident_status_resident,
      population.resident_status_death, population.resident_status_non_traceable,
      population.resident_status_migrated, population.resident_status_duplicate, population.citizen_hud_name,
      population.citizen_hud_gid, population.citizen_district_name, population.citizen_district_gid,
      population.citizen_block_name, population.citizen_block_gid, population.citizen_village_name,
      population.citizen_village_gid, population.resident_status_Visitor]
    sorts: [population.verified_population desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
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
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
      population.citizen_block_gid, population.citizen_village_name, population.citizen_village_gid,
      population.total_population, population.verified_population, population.resident_status_resident,
      population.resident_status_death, population.resident_status_non_traceable,
      population.resident_status_migrated, population.resident_status_duplicate, population.resident_status_Visitor]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.resident_status_resident: Resident
      population.resident_status_death: Death
      population.resident_status_non_traceable: Non-traceable
      population.resident_status_migrated: Migrated
      population.resident_status_duplicate: Duplicate
      population.Other_resident_status_population: Others
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.total_population: Total Population
      population.verified_population: Verified Population
      population.citizen_block_name: Community Block
      population.citizen_block_gid: Community Block Gid
      population.citizen_village_name: Community Village
      population.citizen_village_gid: Community Village Gid
      population.resident_status_Visitor: Visitor
    series_column_widths:
      population.citizen_hud_name: 200
      population.citizen_district_name: 200
      population.citizen_hud_gid: 200
      population.citizen_district_gid: 200
      population.total_population: 200
      population.verified_population: 200
      population.resident_status_resident: 200
      population.resident_status_death: 200
      population.resident_status_non_traceable: 200
      population.resident_status_migrated: 200
      population.resident_status_duplicate: 200
      population.Other_resident_status_population: 200
      population.citizen_block_name: 200
      population.citizen_block_gid: 200
      population.citizen_village_name: 200
      population.citizen_village_gid: 200
      population.resident_status_Visitor: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.total_population:
        align: center
      population.verified_population:
        align: center
      population.district_name:
        align: center
      population.hud_name:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      population.Other_resident_status_population:
        align: center
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      population.resident_status_death:
        align: center
      population.resident_status_resident:
        align: center
      population.resident_status_non_traceable:
        align: center
      population.resident_status_migrated:
        align: center
      population.resident_status_duplicate:
        align: center
      population.citizen_block_name:
        align: center
      population.citizen_block_gid:
        align: center
      population.citizen_village_name:
        align: center
      population.citizen_village_gid:
        align: center
      population.resident_status_Visitor:
        align: center
    header_font_color: "#ffffff"
    header_background_color: "#1f2aff"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community HUD: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Village: population.citizen_village_name
      Institution Directorate: population.user_directorate
      Date: population.citizen_created_date
    row: 22
    col: 8
    width: 16
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
    explore: population
    listens_to_filters: [Community HUD, Community Block, Community Village]
    field: population.citizen_district_name
  - name: Community HUD
    title: Community HUD
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: population
    listens_to_filters: [Community District, Community Block, Community Village]
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
    listens_to_filters: [Community District, Community HUD, Community Village]
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
    listens_to_filters: [Community District, Community HUD, Community Block]
    field: population.citizen_village_name
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
    explore: population
    listens_to_filters: []
    field: population.user_directorate
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
