- dashboard: population_dashboard_v2_1_0
  title: Population Dashboard v2.1.0
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: ymYMxDIBPSmNiCMMsbhqAE
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
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen:
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
    row: 4
    col: 0
    width: 5
    height: 3
  - title: Verified Population
    name: Verified Population
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
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen:
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 7
    col: 0
    width: 5
    height: 3
  - title: Total Families
    name: Total Families
    model: tnphr-prod-kpi
    explore: family
    type: single_value
    fields: [family.total_families]
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
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen:
      Community Village: family.family_village_name
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Institution Role: family.user_role
      Date: family.family_created_date
      Institution Directorate: family.user_directorate
    row: 10
    col: 0
    width: 5
    height: 3
  - title: No of Individuals linked with Aadhar
    name: No of Individuals linked with Aadhar
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.Aadhaar_linked_members]
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
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 19
    col: 9
    width: 8
    height: 3
  - title: Population Break-up on Gender
    name: Population Break-up on Gender
    model: tnphr-prod-kpi
    explore: population
    type: looker_column
    fields: [population.male_population, population.female_population, population.other_population]
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
    x_axis_label: Gender
    defaults_version: 1
    listen:
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 4
    col: 5
    width: 6
    height: 6
  - title: Resident status - Null
    name: Resident status - Null
    model: tnphr-prod-kpi
    explore: population
    type: looker_column
    fields: [population.male_population, population.female_population, population.other_population]
    filters:
      population.citizen_resident_status: 'NULL'
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
    x_axis_label: Gender
    defaults_version: 1
    hidden_fields:
    listen:
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 4
    col: 17
    width: 7
    height: 6
  - title: Child health Target
    name: Child health Target
    model: tnphr-prod-kpi
    explore: population
    type: looker_grid
    fields: [population.Child_Health, population.total_population]
    filters:
      population.Child_Health: "-Below 0,-13 or Above"
    sorts: [population.Child_Health]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      population.total_population: Population
    series_cell_visualizations:
      population:
        is_active: true
      population.total_population:
        is_active: true
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
    x_axis_label: Gender
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    listen:
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 10
    col: 5
    width: 6
    height: 3
  - title: MTM Target
    name: MTM Target
    model: tnphr-prod-kpi
    explore: population
    type: looker_grid
    fields: [population.MTM_Target, population.total_population]
    filters:
      population.MTM_Target: "-Below 18,-Undefined"
    sorts: [population.MTM_Target]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      population.total_population: Population
    series_cell_visualizations:
      population:
        is_active: true
      population.total_population:
        is_active: true
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
    x_axis_label: Gender
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    listen:
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 13
    col: 5
    width: 6
    height: 3
  - title: School Health Target
    name: School Health Target
    model: tnphr-prod-kpi
    explore: population
    type: looker_grid
    fields: [population.School_Health_Target, population.total_population]
    filters:
      population.School_Health_Target: "-20 or Above,-Undefined"
    sorts: [population.School_Health_Target]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      population.total_population: Population
    series_cell_visualizations:
      population:
        is_active: true
      population.total_population:
        is_active: true
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
    x_axis_label: Gender
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    listen:
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 16
    col: 5
    width: 6
    height: 3
  - title: Resident Population 0-100 Target
    name: Resident Population 0-100 Target
    model: tnphr-prod-kpi
    explore: population
    type: looker_column
    fields: [population.age_tier_1_to_100, population.total_population, population.Population_Without_DOB]
    filters:
      population.age_tier_1_to_100: "-Undefined,-Below 0"
    sorts: [population.age_tier_1_to_100]
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
    x_axis_label: Age Tier
    series_types: {}
    series_colors:
      population.total_population: "#7CB342"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      population:
        is_active: true
    defaults_version: 1
    hidden_fields: []
    listen:
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 10
    col: 11
    width: 13
    height: 9
  - title: Family Size
    name: Family Size
    model: tnphr-prod-kpi
    explore: family
    type: single_value
    fields: [family.family_size]
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
      Community Village: family.family_village_name
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Institution Role: family.user_role
      Date: family.family_created_date
      Institution Directorate: family.user_directorate
    row: 13
    col: 0
    width: 5
    height: 3
  - title: Sex Ratio
    name: Sex Ratio
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.male_population, population.female_population]
    limit: 500
    dynamic_fields: [{table_calculation: sex_ratio, label: Sex Ratio, expression: "(${population.male_population}/${population.female_population})*1000",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
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
    hidden_fields: [population.male_population, population.female_population]
    series_types: {}
    defaults_version: 1
    listen:
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 16
    col: 0
    width: 5
    height: 3
  - title: NCD Age group
    name: NCD Age group
    model: tnphr-prod-kpi
    explore: population
    type: looker_column
    fields: [population.NCD_Age, population.total_population]
    filters:
      population.NCD_Age: "-Below 18"
    sorts: [population.NCD_Age]
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
    x_axis_label: Age Tier
    defaults_version: 1
    listen:
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 19
    col: 17
    width: 7
    height: 6
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: looker_grid
      fields: [population.total_population, population.male_population, population.female_population,
        population.other_population, population.Aadhaar_linked_members, population.verified_population,
        population.citizen_district_name, population.citizen_district_gid, population.citizen_with_udid,
        population.total_disability_beneficiary]
      sorts: [population.total_population desc]
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
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      series_cell_visualizations:
        population:
          is_active: true
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
      x_axis_label: Gender
      defaults_version: 1
      hidden_fields: []
      series_types: {}
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families, family.family_district_name, family.CMCHIS_Beneficiaries]
      sorts: [family.total_families desc]
      limit: 5000
      join_fields:
      - field_name: family.family_district_name
        source_field_name: population.citizen_district_name
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families, family.family_district_name]
      filters:
        family.user_created_by: user
      sorts: [family.total_families desc]
      limit: 5000
      join_fields:
      - field_name: family.family_district_name
        source_field_name: population.citizen_district_name
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.total_population, population.citizen_district_name]
      filters:
        population.user_created_by: user
      sorts: [population.total_population desc]
      limit: 5000
      join_fields:
      - field_name: population.citizen_district_name
        source_field_name: population.citizen_district_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.total_population, population.verified_population, population.male_population,
      population.female_population, population.other_population, population.Aadhaar_linked_members,
      population.citizen_with_udid, population.total_disability_beneficiary, family.total_families]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      population.citizen_district_gid: Community District Gid
      population.citizen_district_name: Community District
      q2_family.total_families: Families Added
      family.total_families: Total Families
      q3_population.total_population: Members Added
      population.total_population: Total Population
    series_column_widths:
      population.citizen_district_name: 200
      population.citizen_district_gid: 200
      population.total_population: 200
      population.male_population: 200
      population.female_population: 200
      population.other_population: 200
      population.Aadhaar_linked_members: 200
      population.verified_population: 200
      population.citizen_with_udid: 200
      population.total_disability_beneficiary: 200
      family.total_families: 200
      family.CMCHIS_Beneficiaries: 200
      q2_family.total_families: 200
      q3_population.total_population: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.district_name:
        align: center
      population.total_population:
        align: center
      population.male_population:
        align: center
      population.female_population:
        align: center
      population.other_population:
        align: center
      population.Aadhaar_linked_members:
        align: center
      population.verified_population:
        align: center
      family.total_families:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_district_name:
        align: center
      population.citizen_with_udid:
        align: center
      population.total_disability_beneficiary:
        align: center
      q2_family.total_families:
        align: center
      q3_population.total_population:
        align: center
      family.CMCHIS_Beneficiaries:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffefa"
    header_background_color: "#3b26ff"
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=317"
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
        label: population Male Population
        label_from_parameter:
        label_short: Male Population
        map_layer:
        name: population.male_population
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
        field_group_variant: Male Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.male_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=345"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_gender
          condition: Male
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
        label: population Female Population
        label_from_parameter:
        label_short: Female Population
        map_layer:
        name: population.female_population
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
        field_group_variant: Female Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.female_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=354"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_gender
          condition: Female
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
        label: population Other Population
        label_from_parameter:
        label_short: Other Population
        map_layer:
        name: population.other_population
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
        field_group_variant: Other Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.other_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=363"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_gender
          condition: Other,Transgender
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
        label: population Aadhaar Linked Members
        label_from_parameter:
        label_short: Aadhaar Linked Members
        map_layer:
        name: population.Aadhaar_linked_members
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
        field_group_variant: Aadhaar Linked Members
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.Aadhaar_linked_members
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=372"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count"
        sql_case:
        filters:
        - field: population.is_citizen_aadhaar_number
          condition: 'yes'
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
        label: population Verified Population
        label_from_parameter:
        label_short: Verified Population
        map_layer:
        name: population.verified_population
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
        field_group_variant: Verified Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.verified_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=397"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_resident_status
          condition: "-Null"
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
        label: population Citizen with Udid
        label_from_parameter:
        label_short: Citizen with Udid
        map_layer:
        name: population.citizen_with_udid
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
        view: population
        view_label: population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen with Udid
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_with_udid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=391"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count"
        sql_case:
        filters:
        - field: population.is_citizen_udid
          condition: 'yes'
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
        label: population Total Disability Beneficiary
        label_from_parameter:
        label_short: Total Disability Beneficiary
        map_layer:
        name: population.total_disability_beneficiary
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
        view: population
        view_label: population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Total Disability Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.total_disability_beneficiary
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=385"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count"
        sql_case:
        filters:
        - field: population.citizen_disability
          condition: 'Yes'
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
        label: Family Total Families
        label_from_parameter:
        label_short: Total Families
        map_layer:
        name: family.total_families
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
        field_group_variant: Total Families
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.total_families
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=188"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
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
    - Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    - Community Village: family.family_village_name
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Institution Role: family.user_role
      Date: family.family_created_date
      Institution Directorate: family.user_directorate
    - Community Village: family.family_village_name
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Institution Role: family.user_role
      Date: family.family_created_date
      Institution Directorate: family.user_directorate
    - Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 25
    col: 0
    width: 24
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
      <center>Population Dashboard - Used to understand the metrics related to population</center>
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Eligible Couple Target
    name: Eligible Couple Target
    model: tnphr-prod-kpi
    explore: population
    type: looker_column
    fields: [population.male_population, population.female_population, population.Eligible_Couple]
    filters:
      population.Eligible_Couple: 15 to 49
      population.citizen_marriage_age: "-NULL"
    sorts: [population.male_population desc]
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
    x_axis_label: Eligible couple age
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '1'
    series_types: {}
    series_colors:
      population.female_population: "#E52592"
    series_labels:
      population.male_population: Married Males
      population.female_population: Married Females
    hidden_fields:
    defaults_version: 1
    listen:
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 4
    col: 11
    width: 6
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
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
    defaults_version: 1
    series_types: {}
    listen:
      Community Village: family.family_village_name
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Institution Role: family.user_role
      Date: family.family_created_date
      Institution Directorate: family.user_directorate
    row: 22
    col: 0
    width: 5
    height: 3
  - title: Members Added
    name: Members Added
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    filters:
      population.user_created_by: user
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
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 19
    col: 0
    width: 5
    height: 3
  - title: Congenital Anomaly
    name: Congenital Anomaly
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_congenital_anomaly]
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
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 22
    col: 13
    width: 4
    height: 3
  - title: No of Disability Beneficiary
    name: No of Disability Beneficiary
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_disability_beneficiary]
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
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 19
    col: 5
    width: 4
    height: 3
  - title: No of Individuals with UDID
    name: No of Individuals with UDID
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.citizen_with_udid]
    filters: {}
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
      Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 22
    col: 5
    width: 4
    height: 3
  - title: CMCHIS Beneficiaries
    name: CMCHIS Beneficiaries
    model: tnphr-prod-kpi
    explore: family
    type: single_value
    fields: [family.CMCHIS_Beneficiaries]
    filters: {}
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
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
    defaults_version: 1
    series_types: {}
    listen:
      Community Village: family.family_village_name
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Institution Role: family.user_role
      Date: family.family_created_date
      Institution Directorate: family.user_directorate
    row: 22
    col: 9
    width: 4
    height: 3
  - name: HUD wise
    title: HUD wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: looker_grid
      fields: [population.total_population, population.male_population, population.female_population,
        population.other_population, population.Aadhaar_linked_members, population.verified_population,
        population.citizen_with_udid, population.total_disability_beneficiary, population.citizen_hud_name,
        population.citizen_hud_gid, population.citizen_district_name, population.citizen_district_gid]
      sorts: [population.total_population desc]
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
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      series_cell_visualizations:
        population:
          is_active: true
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
      x_axis_label: Gender
      defaults_version: 1
      hidden_fields: []
      series_types: {}
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families, family.CMCHIS_Beneficiaries, family.family_hud_name,
        family.family_district_name]
      sorts: [family.total_families desc]
      limit: 5000
      join_fields:
      - field_name: family.family_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: family.family_district_name
        source_field_name: population.citizen_district_name
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families, family.family_hud_name, family.family_district_name]
      filters:
        family.user_created_by: user
      sorts: [family.total_families desc]
      limit: 5000
      join_fields:
      - field_name: family.family_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: family.family_district_name
        source_field_name: population.citizen_district_name
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.total_population, population.citizen_hud_name, population.citizen_district_name]
      filters:
        population.user_created_by: user
      sorts: [population.total_population desc]
      limit: 5000
      join_fields:
      - field_name: population.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: population.citizen_district_name
        source_field_name: population.citizen_district_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.total_population,
      population.verified_population, population.male_population, population.female_population,
      population.other_population, population.Aadhaar_linked_members, population.citizen_with_udid,
      population.total_disability_beneficiary, family.total_families, family.CMCHIS_Beneficiaries,
      q2_family.total_families, q3_population.total_population]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      population.citizen_district_gid: Community District Gid
      population.citizen_district_name: Community District
      q2_family.total_families: Families Added
      family.total_families: Total Families
      q3_population.total_population: Members Added
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.total_population: Total Population
    series_column_widths:
      population.citizen_district_name: 200
      population.citizen_district_gid: 200
      population.citizen_hud_name: 200
      population.citizen_hud_gid: 200
      population.total_population: 200
      population.male_population: 200
      population.female_population: 200
      population.other_population: 200
      population.Aadhaar_linked_members: 200
      population.verified_population: 200
      population.citizen_with_udid: 200
      population.total_disability_beneficiary: 200
      family.total_families: 200
      family.CMCHIS_Beneficiaries: 200
      q2_family.total_families: 200
      q3_population.total_population: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.district_name:
        align: center
      population.total_population:
        align: center
      population.male_population:
        align: center
      population.female_population:
        align: center
      population.other_population:
        align: center
      population.Aadhaar_linked_members:
        align: center
      population.verified_population:
        align: center
      family.total_families:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_district_name:
        align: center
      population.citizen_with_udid:
        align: center
      population.total_disability_beneficiary:
        align: center
      q2_family.total_families:
        align: center
      q3_population.total_population:
        align: center
      family.CMCHIS_Beneficiaries:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffefa"
    header_background_color: "#3b26ff"
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
        label: Population Male Population
        label_from_parameter:
        label_short: Male Population
        map_layer:
        name: population.male_population
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
        field_group_variant: Male Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.male_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=350"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_gender
          condition: Male
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
        label: Population Female Population
        label_from_parameter:
        label_short: Female Population
        map_layer:
        name: population.female_population
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
        field_group_variant: Female Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.female_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=359"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_gender
          condition: Female
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
        label: Population Other Population
        label_from_parameter:
        label_short: Other Population
        map_layer:
        name: population.other_population
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
        field_group_variant: Other Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.other_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=368"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_gender
          condition: Transgender
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
        label: Population Aadhaar Linked Members
        label_from_parameter:
        label_short: Aadhaar Linked Members
        map_layer:
        name: population.Aadhaar_linked_members
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
        field_group_variant: Aadhaar Linked Members
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.Aadhaar_linked_members
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=377"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count"
        sql_case:
        filters:
        - field: population.is_citizen_aadhaar_number
          condition: 'yes'
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
        label: Population Verified Population
        label_from_parameter:
        label_short: Verified Population
        map_layer:
        name: population.verified_population
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
        field_group_variant: Verified Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.verified_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=405"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_resident_status
          condition: "-Null"
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
        label: Population Citizen with Udid
        label_from_parameter:
        label_short: Citizen with Udid
        map_layer:
        name: population.citizen_with_udid
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
        field_group_variant: Citizen with Udid
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_with_udid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=398"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count"
        sql_case:
        filters:
        - field: population.is_citizen_udid
          condition: 'yes'
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
        label: Population Total Disability Beneficiary
        label_from_parameter:
        label_short: Total Disability Beneficiary
        map_layer:
        name: population.total_disability_beneficiary
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
        field_group_variant: Total Disability Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.total_disability_beneficiary
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=391"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count"
        sql_case:
        filters:
        - field: population.citizen_disability
          condition: 'Yes'
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
        label: Family Total Families
        label_from_parameter:
        label_short: Total Families
        map_layer:
        name: family.total_families
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
        field_group_variant: Total Families
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.total_families
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=188"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
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
        label: Family CMCHIS Beneficiaries
        label_from_parameter:
        label_short: CMCHIS Beneficiaries
        map_layer:
        name: family.CMCHIS_Beneficiaries
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
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: CMCHIS Beneficiaries
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.CMCHIS_Beneficiaries
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=221"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count"
        sql_case:
        filters:
        - field: family.is_citizen_govt_insurance
          condition: 'yes'
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
        label: Family Total Families
        label_from_parameter:
        label_short: Total Families
        map_layer:
        name: q2_family.total_families
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
        field_group_variant: Total Families
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.total_families
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=188"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
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
        label: Population Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: q3_population.total_population
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
      table_calculations: []
      pivots: []
    listen:
    - Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    - Community Village: family.family_village_name
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Institution Role: family.user_role
      Date: family.family_created_date
      Institution Directorate: family.user_directorate
    - Community Village: family.family_village_name
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Institution Role: family.user_role
      Date: family.family_created_date
      Institution Directorate: family.user_directorate
    - Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 31
    col: 0
    width: 24
    height: 6
  - name: Block wise
    title: Block wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: looker_grid
      fields: [population.total_population, population.male_population, population.female_population,
        population.other_population, population.Aadhaar_linked_members, population.verified_population,
        population.citizen_with_udid, population.total_disability_beneficiary, population.citizen_hud_name,
        population.citizen_hud_gid, population.citizen_district_name, population.citizen_district_gid,
        population.citizen_block_name, population.citizen_block_gid]
      sorts: [population.total_population desc]
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
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      series_cell_visualizations:
        population:
          is_active: true
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
      x_axis_label: Gender
      defaults_version: 1
      hidden_fields: []
      series_types: {}
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families, family.CMCHIS_Beneficiaries, family.family_hud_name,
        family.family_district_name, family.family_block_name]
      sorts: [family.total_families desc]
      limit: 5000
      join_fields:
      - field_name: family.family_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: family.family_district_name
        source_field_name: population.citizen_district_name
      - field_name: family.family_block_name
        source_field_name: population.citizen_block_name
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families, family.family_hud_name, family.family_district_name,
        family.family_block_name]
      filters:
        family.user_created_by: user
      sorts: [family.total_families desc]
      limit: 5000
      join_fields:
      - field_name: family.family_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: family.family_district_name
        source_field_name: population.citizen_district_name
      - field_name: family.family_block_name
        source_field_name: population.citizen_block_name
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.total_population, population.citizen_hud_name, population.citizen_district_name,
        population.citizen_block_name]
      filters:
        population.user_created_by: user
      sorts: [population.total_population desc]
      limit: 5000
      join_fields:
      - field_name: population.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: population.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: population.citizen_block_name
        source_field_name: population.citizen_block_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
      population.citizen_block_gid, population.total_population, population.verified_population,
      population.male_population, population.female_population, population.other_population,
      population.Aadhaar_linked_members, population.citizen_with_udid, population.total_disability_beneficiary,
      family.total_families, family.CMCHIS_Beneficiaries, q2_family.total_families,
      q3_population.total_population]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      population.citizen_district_gid: Community District Gid
      population.citizen_district_name: Community District
      q2_family.total_families: Families Added
      family.total_families: Total Families
      q3_population.total_population: Members Added
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.total_population: Total Population
      population.citizen_block_name: Community Block
      population.citizen_block_gid: Community Block Gid
    series_column_widths:
      population.citizen_district_name: 200
      population.citizen_district_gid: 200
      population.citizen_hud_name: 200
      population.citizen_hud_gid: 200
      population.total_population: 200
      population.male_population: 200
      population.female_population: 200
      population.other_population: 200
      population.Aadhaar_linked_members: 200
      population.verified_population: 200
      population.citizen_with_udid: 200
      population.total_disability_beneficiary: 200
      family.total_families: 200
      family.CMCHIS_Beneficiaries: 200
      q2_family.total_families: 200
      q3_population.total_population: 200
      population.citizen_block_name: 200
      population.citizen_block_gid: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.district_name:
        align: center
      population.total_population:
        align: center
      population.male_population:
        align: center
      population.female_population:
        align: center
      population.other_population:
        align: center
      population.Aadhaar_linked_members:
        align: center
      population.verified_population:
        align: center
      family.total_families:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_district_name:
        align: center
      population.citizen_with_udid:
        align: center
      population.total_disability_beneficiary:
        align: center
      q2_family.total_families:
        align: center
      q3_population.total_population:
        align: center
      family.CMCHIS_Beneficiaries:
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
    header_font_color: "#fffefa"
    header_background_color: "#3b26ff"
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
        label: Population Male Population
        label_from_parameter:
        label_short: Male Population
        map_layer:
        name: population.male_population
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
        field_group_variant: Male Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.male_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=350"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_gender
          condition: Male
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
        label: Population Female Population
        label_from_parameter:
        label_short: Female Population
        map_layer:
        name: population.female_population
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
        field_group_variant: Female Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.female_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=359"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_gender
          condition: Female
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
        label: Population Other Population
        label_from_parameter:
        label_short: Other Population
        map_layer:
        name: population.other_population
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
        field_group_variant: Other Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.other_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=368"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_gender
          condition: Transgender
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
        label: Population Aadhaar Linked Members
        label_from_parameter:
        label_short: Aadhaar Linked Members
        map_layer:
        name: population.Aadhaar_linked_members
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
        field_group_variant: Aadhaar Linked Members
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.Aadhaar_linked_members
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=377"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count"
        sql_case:
        filters:
        - field: population.is_citizen_aadhaar_number
          condition: 'yes'
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
        label: Population Verified Population
        label_from_parameter:
        label_short: Verified Population
        map_layer:
        name: population.verified_population
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
        field_group_variant: Verified Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.verified_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=405"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_resident_status
          condition: "-Null"
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
        label: Population Citizen with Udid
        label_from_parameter:
        label_short: Citizen with Udid
        map_layer:
        name: population.citizen_with_udid
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
        field_group_variant: Citizen with Udid
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_with_udid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=398"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count"
        sql_case:
        filters:
        - field: population.is_citizen_udid
          condition: 'yes'
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
        label: Population Total Disability Beneficiary
        label_from_parameter:
        label_short: Total Disability Beneficiary
        map_layer:
        name: population.total_disability_beneficiary
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
        field_group_variant: Total Disability Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.total_disability_beneficiary
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=391"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count"
        sql_case:
        filters:
        - field: population.citizen_disability
          condition: 'Yes'
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
        label: Family Total Families
        label_from_parameter:
        label_short: Total Families
        map_layer:
        name: family.total_families
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
        field_group_variant: Total Families
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.total_families
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=188"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
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
        label: Family CMCHIS Beneficiaries
        label_from_parameter:
        label_short: CMCHIS Beneficiaries
        map_layer:
        name: family.CMCHIS_Beneficiaries
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
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: CMCHIS Beneficiaries
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.CMCHIS_Beneficiaries
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=221"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count"
        sql_case:
        filters:
        - field: family.is_citizen_govt_insurance
          condition: 'yes'
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
        label: Family Total Families
        label_from_parameter:
        label_short: Total Families
        map_layer:
        name: q2_family.total_families
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
        field_group_variant: Total Families
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.total_families
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=188"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
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
        label: Population Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: q3_population.total_population
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
      table_calculations: []
      pivots: []
    listen:
    - Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    - Community Village: family.family_village_name
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Institution Role: family.user_role
      Date: family.family_created_date
      Institution Directorate: family.user_directorate
    - Community Village: family.family_village_name
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Institution Role: family.user_role
      Date: family.family_created_date
      Institution Directorate: family.user_directorate
    - Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 37
    col: 0
    width: 24
    height: 6
  - name: Village wise
    title: Village wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: looker_grid
      fields: [population.total_population, population.male_population, population.female_population,
        population.other_population, population.Aadhaar_linked_members, population.verified_population,
        population.citizen_with_udid, population.total_disability_beneficiary, population.citizen_hud_name,
        population.citizen_hud_gid, population.citizen_district_name, population.citizen_district_gid,
        population.citizen_block_name, population.citizen_block_gid, population.citizen_village_name,
        population.citizen_village_gid]
      sorts: [population.total_population desc]
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
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      series_cell_visualizations:
        population:
          is_active: true
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
      x_axis_label: Gender
      defaults_version: 1
      hidden_fields: []
      series_types: {}
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families, family.CMCHIS_Beneficiaries, family.family_hud_name,
        family.family_district_name, family.family_block_name, family.family_village_name]
      sorts: [family.total_families desc]
      limit: 5000
      join_fields:
      - field_name: family.family_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: family.family_district_name
        source_field_name: population.citizen_district_name
      - field_name: family.family_block_name
        source_field_name: population.citizen_block_name
      - field_name: family.family_village_name
        source_field_name: population.citizen_village_name
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.total_families, family.family_hud_name, family.family_district_name,
        family.family_block_name, family.family_village_name]
      filters:
        family.user_created_by: user
      sorts: [family.total_families desc]
      limit: 5000
      join_fields:
      - field_name: family.family_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: family.family_district_name
        source_field_name: population.citizen_district_name
      - field_name: family.family_block_name
        source_field_name: population.citizen_block_name
      - field_name: family.family_village_name
        source_field_name: population.citizen_village_name
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.total_population, population.citizen_hud_name, population.citizen_district_name,
        population.citizen_block_name, population.citizen_village_name]
      filters:
        population.user_created_by: user
      sorts: [population.total_population desc]
      limit: 5000
      join_fields:
      - field_name: population.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: population.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: population.citizen_block_name
        source_field_name: population.citizen_block_name
      - field_name: population.citizen_village_name
        source_field_name: population.citizen_village_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
      population.citizen_block_gid, population.citizen_village_name, population.citizen_village_gid,
      population.total_population, population.verified_population, population.male_population,
      population.female_population, population.other_population, population.Aadhaar_linked_members,
      population.citizen_with_udid, population.total_disability_beneficiary, family.total_families,
      family.CMCHIS_Beneficiaries, q2_family.total_families, q3_population.total_population]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      population.citizen_district_gid: Community District Gid
      population.citizen_district_name: Community District
      q2_family.total_families: Families Added
      family.total_families: Total Families
      q3_population.total_population: Members Added
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.total_population: Total Population
      population.citizen_block_name: Community Block
      population.citizen_block_gid: Community Block Gid
      population.citizen_village_name: Community Village
      population.citizen_village_gid: Community Village Gid
    series_column_widths:
      population.citizen_district_name: 200
      population.citizen_district_gid: 200
      population.citizen_hud_name: 200
      population.citizen_hud_gid: 200
      population.total_population: 200
      population.male_population: 200
      population.female_population: 200
      population.other_population: 200
      population.Aadhaar_linked_members: 200
      population.verified_population: 200
      population.citizen_with_udid: 200
      population.total_disability_beneficiary: 200
      family.total_families: 200
      family.CMCHIS_Beneficiaries: 200
      q2_family.total_families: 200
      q3_population.total_population: 200
      population.citizen_block_name: 200
      population.citizen_block_gid: 200
      population.citizen_village_gid: 200
      population.citizen_village_name: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.district_name:
        align: center
      population.total_population:
        align: center
      population.male_population:
        align: center
      population.female_population:
        align: center
      population.other_population:
        align: center
      population.Aadhaar_linked_members:
        align: center
      population.verified_population:
        align: center
      family.total_families:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_district_name:
        align: center
      population.citizen_with_udid:
        align: center
      population.total_disability_beneficiary:
        align: center
      q2_family.total_families:
        align: center
      q3_population.total_population:
        align: center
      family.CMCHIS_Beneficiaries:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
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
    header_font_color: "#fffefa"
    header_background_color: "#3b26ff"
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
        label: Population Male Population
        label_from_parameter:
        label_short: Male Population
        map_layer:
        name: population.male_population
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
        field_group_variant: Male Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.male_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=350"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_gender
          condition: Male
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
        label: Population Female Population
        label_from_parameter:
        label_short: Female Population
        map_layer:
        name: population.female_population
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
        field_group_variant: Female Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.female_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=359"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_gender
          condition: Female
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
        label: Population Other Population
        label_from_parameter:
        label_short: Other Population
        map_layer:
        name: population.other_population
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
        field_group_variant: Other Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.other_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=368"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_gender
          condition: Transgender
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
        label: Population Aadhaar Linked Members
        label_from_parameter:
        label_short: Aadhaar Linked Members
        map_layer:
        name: population.Aadhaar_linked_members
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
        field_group_variant: Aadhaar Linked Members
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.Aadhaar_linked_members
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=377"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count"
        sql_case:
        filters:
        - field: population.is_citizen_aadhaar_number
          condition: 'yes'
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
        label: Population Verified Population
        label_from_parameter:
        label_short: Verified Population
        map_layer:
        name: population.verified_population
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
        field_group_variant: Verified Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.verified_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=405"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_resident_status
          condition: "-Null"
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
        label: Population Citizen with Udid
        label_from_parameter:
        label_short: Citizen with Udid
        map_layer:
        name: population.citizen_with_udid
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
        field_group_variant: Citizen with Udid
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_with_udid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=398"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count"
        sql_case:
        filters:
        - field: population.is_citizen_udid
          condition: 'yes'
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
        label: Population Total Disability Beneficiary
        label_from_parameter:
        label_short: Total Disability Beneficiary
        map_layer:
        name: population.total_disability_beneficiary
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
        field_group_variant: Total Disability Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.total_disability_beneficiary
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=391"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count"
        sql_case:
        filters:
        - field: population.citizen_disability
          condition: 'Yes'
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
        label: Family Total Families
        label_from_parameter:
        label_short: Total Families
        map_layer:
        name: family.total_families
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
        field_group_variant: Total Families
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.total_families
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=188"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
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
        label: Family CMCHIS Beneficiaries
        label_from_parameter:
        label_short: CMCHIS Beneficiaries
        map_layer:
        name: family.CMCHIS_Beneficiaries
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
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: CMCHIS Beneficiaries
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.CMCHIS_Beneficiaries
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=221"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count"
        sql_case:
        filters:
        - field: family.is_citizen_govt_insurance
          condition: 'yes'
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
        label: Family Total Families
        label_from_parameter:
        label_short: Total Families
        map_layer:
        name: q2_family.total_families
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
        field_group_variant: Total Families
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.total_families
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=188"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
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
        label: Population Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: q3_population.total_population
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
      table_calculations: []
      pivots: []
    listen:
    - Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    - Community Village: family.family_village_name
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Institution Role: family.user_role
      Date: family.family_created_date
      Institution Directorate: family.user_directorate
    - Community Village: family.family_village_name
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Institution Role: family.user_role
      Date: family.family_created_date
      Institution Directorate: family.user_directorate
    - Community Village: population.citizen_village_name
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Institution Directorate: population.user_directorate
    row: 43
    col: 0
    width: 24
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
    listens_to_filters: [Community Village, Community Block, Community Hud]
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
    listens_to_filters: [Community Village, Community Block, Community District]
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
    listens_to_filters: [Community Village, Community Hud, Community District]
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
    listens_to_filters: [Community Block, Community Hud, Community District]
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
    listens_to_filters: [Institution Role]
    field: population.user_directorate
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
    explore: population
    listens_to_filters: [Institution Directorate]
    field: population.user_role
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
