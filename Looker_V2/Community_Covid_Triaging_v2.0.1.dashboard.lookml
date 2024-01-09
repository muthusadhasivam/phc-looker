- dashboard: community_covid_triaging_v2_0_1
  title: Community Covid Triaging V2 0 1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: qhYHMhFDKq0DSgo4KN1KEe
  elements:
  - title: Normal
    name: Normal
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Covid_triaging_normal]
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
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution Block Type: screening.user_block_type
      Date: screening.screened_date
    row: 7
    col: 14
    width: 5
    height: 5
  - title: High Risk
    name: High Risk
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Covid_triaging_High]
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
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution Block Type: screening.user_block_type
      Date: screening.screened_date
    row: 7
    col: 0
    width: 5
    height: 5
  - title: Medium Risk
    name: Medium Risk
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Covid_triaging_Medium]
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
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution Block Type: screening.user_block_type
      Date: screening.screened_date
    row: 7
    col: 5
    width: 5
    height: 5
  - title: Low Risk
    name: Low Risk
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Covid_triaging_Low]
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
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution Block Type: screening.user_block_type
      Date: screening.screened_date
    row: 7
    col: 10
    width: 4
    height: 5
  - title: Risk Comparison
    name: Risk Comparison
    model: tnphr-prod-kpi
    explore: screening
    type: looker_pie
    fields: [screening.covid_outcome, screening.Total_screenings]
    filters:
      screening.covid_outcome: "-NULL"
    sorts: [screening.covid_outcome]
    limit: 500
    dynamic_fields: [{table_calculation: count, label: Count, expression: 'if(${screening.Total_screenings}>0,${screening.Total_screenings},0)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    value_labels: legend
    label_type: labPer
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
    hidden_fields: [screening.Total_screenings]
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution Block Type: screening.user_block_type
      Date: screening.screened_date
    row: 7
    col: 19
    width: 5
    height: 5
  - title: District Wise
    name: District Wise
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.citizen_district_name, screening.Covid_triaging_Medium, screening.Covid_triaging_normal,
      screening.Covid_triaging_Low, screening.citizen_district_gid, screening.Covid_triaging_High]
    sorts: [screening.Covid_triaging_Medium desc]
    limit: 500
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
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.Covid_triaging_normal, screening.Covid_triaging_Low, screening.Covid_triaging_Medium,
      screening.Covid_triaging_High]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.Covid_triaging_Medium: Medium Risk
      screening.Covid_triaging_normal: Normal
      screening.Covid_triaging_Low: Low Risk
      screening.Covid_triaging_High: High Risk
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
    series_column_widths:
      screening.citizen_district_gid: 200
      screening.citizen_district_name: 200
      screening.Covid_triaging_Medium: 200
      screening.Covid_triaging_normal: 200
      screening.Covid_triaging_Low: 200
      screening.Covid_triaging_High: 200
    series_cell_visualizations:
      screening.Covid_triaging_Medium:
        is_active: false
    series_text_format:
      screening.Covid_triaging_Medium:
        align: center
      screening.Covid_triaging_normal:
        align: center
      screening.Covid_triaging_Low:
        align: center
      screening.Covid_triaging_High:
        align: center
      screening.citizen_district_gid:
        align: center
      screening.citizen_district_name:
        align: center
    header_background_color: "#12B5CB"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution Block Type: screening.user_block_type
      Date: screening.screened_date
    row: 12
    col: 0
    width: 12
    height: 8
  - title: Hud Wise
    name: Hud Wise
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.citizen_district_name, screening.Covid_triaging_Medium, screening.Covid_triaging_normal,
      screening.Covid_triaging_Low, screening.citizen_district_gid, screening.Covid_triaging_High,
      screening.citizen_hud_name, screening.citizen_hud_gid]
    sorts: [screening.Covid_triaging_Medium desc]
    limit: 500
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
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.Covid_triaging_normal,
      screening.Covid_triaging_Low, screening.Covid_triaging_Medium, screening.Covid_triaging_High]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.Covid_triaging_normal: Normal
      screening.Covid_triaging_Low: Low Risk
      screening.Covid_triaging_High: High Risk
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
      screening.Covid_triaging_Medium: Medium Risk
    series_column_widths:
      screening.citizen_district_name: 200
      screening.citizen_district_gid: 200
      screening.citizen_hud_name: 200
      screening.citizen_hud_gid: 200
      screening.Covid_triaging_Medium: 200
      screening.Covid_triaging_normal: 200
      screening.Covid_triaging_Low: 200
      screening.Covid_triaging_High: 200
    series_cell_visualizations:
      screening.Covid_triaging_Medium:
        is_active: false
    series_text_format:
      screening.Covid_triaging_Medium:
        align: center
      screening.Covid_triaging_normal:
        align: center
      screening.Covid_triaging_Low:
        align: center
      screening.Covid_triaging_High:
        align: center
      screening.citizen_district_gid:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_hud_name:
        align: center
      screening.citizen_hud_gid:
        align: center
    header_background_color: "#12B5CB"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution Block Type: screening.user_block_type
      Date: screening.screened_date
    row: 20
    col: 0
    width: 12
    height: 8
  - title: Block Wise
    name: Block Wise
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.citizen_district_name, screening.Covid_triaging_Medium, screening.Covid_triaging_normal,
      screening.Covid_triaging_Low, screening.citizen_district_gid, screening.Covid_triaging_High,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.citizen_block_name,
      screening.citizen_block_gid]
    sorts: [screening.Covid_triaging_Medium desc]
    limit: 500
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.citizen_block_name,
      screening.citizen_block_gid, screening.Covid_triaging_normal, screening.Covid_triaging_Low,
      screening.Covid_triaging_Medium, screening.Covid_triaging_High]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.Covid_triaging_Medium: Medium Risk
      screening.Covid_triaging_normal: Normal
      screening.Covid_triaging_Low: Low Risk
      screening.Covid_triaging_High: High Risk
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
      screening.citizen_block_name: Community Block
      screening.citizen_block_gid: Community Block Gid
    series_cell_visualizations:
      screening.Covid_triaging_Medium:
        is_active: false
    series_text_format:
      screening.Covid_triaging_Medium:
        align: center
      screening.Covid_triaging_normal:
        align: center
      screening.Covid_triaging_Low:
        align: center
      screening.Covid_triaging_High:
        align: center
      screening.citizen_district_gid:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_hud_name:
        align: center
      screening.citizen_hud_gid:
        align: center
      screening.citizen_block_name:
        align: center
      screening.citizen_block_gid:
        align: center
    header_background_color: "#12B5CB"
    series_column_widths:
      screening.citizen_district_name: 200
      screening.citizen_district_gid: 200
      screening.citizen_hud_name: 200
      screening.citizen_hud_gid: 200
      screening.citizen_block_name: 200
      screening.citizen_block_gid: 200
      screening.Covid_triaging_Medium: 200
      screening.Covid_triaging_normal: 200
      screening.Covid_triaging_Low: 200
      screening.Covid_triaging_High: 200
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution Block Type: screening.user_block_type
      Date: screening.screened_date
    row: 12
    col: 12
    width: 12
    height: 8
  - title: Village wise
    name: Village wise
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.citizen_district_name, screening.Covid_triaging_Medium, screening.Covid_triaging_normal,
      screening.Covid_triaging_Low, screening.citizen_district_gid, screening.Covid_triaging_High,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.citizen_block_name,
      screening.citizen_block_gid, screening.citizen_village_name, screening.citizen_village_gid]
    sorts: [screening.Covid_triaging_Medium desc]
    limit: 5000
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
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.citizen_block_name,
      screening.citizen_block_gid, screening.citizen_village_name, screening.citizen_village_gid,
      screening.Covid_triaging_normal, screening.Covid_triaging_Low, screening.Covid_triaging_Medium,
      screening.Covid_triaging_High]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.Covid_triaging_normal: Normal
      screening.Covid_triaging_Low: Low Risk
      screening.Covid_triaging_High: High Risk
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
      screening.citizen_block_name: Community Block
      screening.citizen_block_gid: Community Block Gid
      screening.citizen_village_name: Community Village
      screening.Covid_triaging_Medium: Medium Risk
      screening.citizen_village_gid: Community Village Gid
    series_column_widths:
      screening.citizen_district_name: 200
      screening.citizen_district_gid: 200
      screening.citizen_hud_gid: 200
      screening.citizen_hud_name: 200
      screening.citizen_block_gid: 200
      screening.citizen_block_name: 200
      screening.Covid_triaging_Medium: 200
      screening.citizen_village_gid: 200
      screening.citizen_village_name: 200
      screening.Covid_triaging_normal: 200
      screening.Covid_triaging_Low: 200
      screening.Covid_triaging_High: 200
    series_cell_visualizations:
      screening.Covid_triaging_Medium:
        is_active: false
    series_text_format:
      screening.Covid_triaging_Medium:
        align: center
      screening.Covid_triaging_normal:
        align: center
      screening.Covid_triaging_Low:
        align: center
      screening.Covid_triaging_High:
        align: center
      screening.citizen_district_gid:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_hud_name:
        align: center
      screening.citizen_hud_gid:
        align: center
      screening.citizen_block_name:
        align: center
      screening.citizen_block_gid:
        align: center
      screening.citizen_village_name:
        align: center
      screening.citizen_village_gid:
        align: center
    header_background_color: "#12B5CB"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution Block Type: screening.user_block_type
      Date: screening.screened_date
    row: 20
    col: 12
    width: 12
    height: 8
  - title: Compliance of Referral
    name: Compliance of Referral
    model: tnphr-prod-kpi
    explore: diseases
    type: single_value
    fields: [diseases.Compliance_count, diseases.refferal_count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    comparison_label: Members referred
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
      Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Institution Directorate: diseases.user_directorate
      Institution Block Type: diseases.user_block_type
      Date: diseases.screened_date
    row: 30
    col: 0
    width: 12
    height: 6
  - title: District Wise
    name: District Wise (2)
    model: tnphr-prod-kpi
    explore: diseases
    type: looker_grid
    fields: [diseases.Compliance_count, diseases.citizen_district_name, diseases.citizen_district_gid]
    filters:
      diseases.screened_date: 7 days
    sorts: [diseases.Compliance_count desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      diseases.citizen_district_name: Community District
      diseases.citizen_district_gid: Community District Gid
      diseases.Compliance_count: Compliance of referral within 7 days
    series_column_widths:
      diseases.citizen_district_name: 200
      diseases.citizen_district_gid: 200
    series_text_format:
      diseases.Compliance_count:
        align: center
      diseases.citizen_district_gid:
        align: center
      diseases.citizen_district_name:
        align: center
    header_font_color: "#fff8f5"
    header_background_color: "#1A73E8"
    defaults_version: 1
    listen:
      Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Institution Directorate: diseases.user_directorate
      Institution Block Type: diseases.user_block_type
    row: 36
    col: 0
    width: 12
    height: 7
  - title: Hud Wise
    name: Hud Wise (2)
    model: tnphr-prod-kpi
    explore: diseases
    type: looker_grid
    fields: [diseases.Compliance_count, diseases.citizen_district_name, diseases.citizen_district_gid,
      diseases.citizen_hud_name, diseases.citizen_hud_gid]
    filters:
      diseases.screened_date: 7 days
    sorts: [diseases.Compliance_count desc]
    limit: 5000
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      diseases.citizen_district_name: Community District
      diseases.citizen_district_gid: Community District Gid
      diseases.citizen_hud_name: Community Hud
      diseases.citizen_hud_gid: Community Hud Gid
      diseases.Compliance_count: Compliance of referral within 7 days
    series_column_widths:
      diseases.citizen_district_name: 200
      diseases.citizen_district_gid: 200
      diseases.citizen_hud_gid: 200
      diseases.citizen_hud_name: 200
      diseases.Compliance_count: 200
    series_text_format:
      diseases.citizen_district_name:
        align: center
      diseases.citizen_district_gid:
        align: center
      diseases.citizen_hud_name:
        align: center
      diseases.citizen_hud_gid:
        align: center
      diseases.Compliance_count:
        align: center
    header_font_color: "#f9f2ff"
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
      Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Institution Directorate: diseases.user_directorate
      Institution Block Type: diseases.user_block_type
    row: 43
    col: 0
    width: 12
    height: 9
  - title: Block Wise
    name: Block Wise (2)
    model: tnphr-prod-kpi
    explore: diseases
    type: looker_grid
    fields: [diseases.Compliance_count, diseases.citizen_district_name, diseases.citizen_district_gid,
      diseases.citizen_hud_name, diseases.citizen_hud_gid, diseases.citizen_block_name,
      diseases.citizen_block_gid]
    filters:
      diseases.screened_date: 7 days
    sorts: [diseases.Compliance_count desc]
    limit: 5000
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      diseases.citizen_district_name: Community District
      diseases.citizen_district_gid: Community District Gid
      diseases.citizen_hud_name: Community Hud
      diseases.citizen_hud_gid: Community Hud Gid
      diseases.citizen_block_name: Community Block
      diseases.citizen_block_gid: Community Block Gid
      diseases.Compliance_count: Compliance of referral within 7 days
    series_column_widths:
      diseases.citizen_district_name: 200
      diseases.citizen_district_gid: 200
      diseases.citizen_hud_gid: 200
      diseases.citizen_hud_name: 200
      diseases.citizen_block_gid: 200
      diseases.citizen_block_name: 200
      diseases.Compliance_count: 200
    series_text_format:
      diseases.citizen_district_name:
        align: center
      diseases.citizen_district_gid:
        align: center
      diseases.citizen_hud_name:
        align: center
      diseases.citizen_hud_gid:
        align: center
      diseases.citizen_block_name:
        align: center
      diseases.citizen_block_gid:
        align: center
      diseases.Compliance_count:
        align: center
    header_font_color: "#fffef4"
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
      Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Institution Directorate: diseases.user_directorate
      Institution Block Type: diseases.user_block_type
    row: 36
    col: 12
    width: 12
    height: 7
  - title: Village wise
    name: Village wise (2)
    model: tnphr-prod-kpi
    explore: diseases
    type: looker_grid
    fields: [diseases.Compliance_count, diseases.citizen_district_name, diseases.citizen_district_gid,
      diseases.citizen_hud_name, diseases.citizen_hud_gid, diseases.citizen_block_name,
      diseases.citizen_block_gid, diseases.citizen_village_name, diseases.citizen_village_gid]
    filters:
      diseases.screened_date: 7 days
    sorts: [diseases.Compliance_count desc]
    limit: 5000
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      diseases.citizen_district_name: Community District
      diseases.citizen_district_gid: Community District Gid
      diseases.citizen_hud_name: Community Hud
      diseases.citizen_hud_gid: Community Hud Gid
      diseases.citizen_block_name: Community Block
      diseases.citizen_block_gid: Community Block Gid
      diseases.citizen_village_gid: Community Village Gid
      diseases.citizen_village_name: Community Village
      diseases.Compliance_count: Compliance of referral within 7 days
    series_column_widths:
      diseases.citizen_district_name: 200
      diseases.citizen_district_gid: 200
      diseases.citizen_hud_gid: 200
      diseases.citizen_hud_name: 200
      diseases.citizen_block_gid: 200
      diseases.citizen_block_name: 200
      diseases.Compliance_count: 200
      diseases.citizen_village_gid: 200
      diseases.citizen_village_name: 200
    series_text_format:
      diseases.citizen_district_name:
        align: center
      diseases.citizen_district_gid:
        align: center
      diseases.citizen_hud_name:
        align: center
      diseases.citizen_hud_gid:
        align: center
      diseases.citizen_block_name:
        align: center
      diseases.citizen_block_gid:
        align: center
      diseases.Compliance_count:
        align: center
      diseases.citizen_village_gid:
        align: center
      diseases.citizen_village_name:
        align: center
    header_font_color: "#fafcff"
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
      Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Institution Directorate: diseases.user_directorate
      Institution Block Type: diseases.user_block_type
    row: 43
    col: 12
    width: 12
    height: 9
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
      <center>Community Covid triaging - Use to understand the count of Covid patients in TN</center>
    row: 0
    col: 0
    width: 24
    height: 5
  - name: Compliance of Referral (2)
    type: text
    title_text: Compliance of Referral
    subtitle_text: ''
    body_text: ''
    row: 28
    col: 0
    width: 24
    height: 2
  - name: Covid Triaging
    type: text
    title_text: Covid Triaging
    subtitle_text: ''
    body_text: ''
    row: 5
    col: 0
    width: 24
    height: 2
  - title: Compliance of referral % within 7 days
    name: Compliance of referral % within 7 days
    model: tnphr-prod-kpi
    explore: diseases
    type: single_value
    fields: [diseases.Compliance_count, diseases.refferal_count]
    filters:
      diseases.screened_date: 7 days
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    comparison_label: Members referred within 7 days
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
    note_text: "Compliance is calculated based on current screening and next followup\
      \ date \nwhere as Referred is calculated based on referral place id's"
    listen:
      Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Institution Directorate: diseases.user_directorate
      Institution Block Type: diseases.user_block_type
    row: 30
    col: 12
    width: 12
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
  - name: Institution Block Type
    title: Institution Block Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Directorate]
    field: screening.user_block_type
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
    listens_to_filters: [Institution Block Type]
    field: screening.user_directorate
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
