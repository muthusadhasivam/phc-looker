- dashboard: pbs_screening_v2_0_1
  title: Pbs Screening V2 0 1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: gBVmPaxq2Uwvhm1iGCR0KJ
  elements:
  - title: Role based Screening
    name: Role based Screening
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.Total_screenings, screening.role_name]
    sorts: [screening.Total_screenings desc]
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: screening.Total_screenings,
            id: screening.Total_screenings, name: Total Screenings}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors:
      screening.Total_screenings: "#2643d1"
    series_labels:
      screening.unique_screening_male: Males
      screening.unique_screening_female: Females
      screening.unique_screening_other: Others
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: true
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
      Date: screening.screened_date
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution District: screening.user_district_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
    row: 4
    col: 12
    width: 12
    height: 6
  - name: 10 Priority Diseases
    title: 10 Priority Diseases
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.Unique_Screening, screening.Total_screenings, screening.citizen_diagnosis_name]
      filters:
        screening.citizen_diagnosis_name: Hypertension (BP),Diabetes (Sugar),Tuberculosis,Oral
          Cancer Screening,Breast Cancer Screening,Cervical Cancer Screening,Chronic
          Kidney Disease,CAPD (Ambulatory Dialysis) bags,Mental followup,Palliative
          Care,Physiotheraphy Care
      sorts: [screening.Unique_Screening desc]
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
        screening.Unique_Screening:
          is_active: false
      defaults_version: 1
    - model: tnphr-prod-kpi
      explore: diseases
      type: table
      fields: [diseases.citizen_diagnosis_name, diseases.refferal_count]
      sorts: [diseases.refferal_count desc]
      limit: 5000
      join_fields:
      - field_name: diseases.citizen_diagnosis_name
        source_field_name: screening.citizen_diagnosis_name
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
      screening.Unique_Screening: No. of Individuals Screened
      diseases.refferal_count: Number of Individuals Referred
      screening.citizen_diagnosis_name: Diagnosis
    series_column_widths:
      screening.Unique_Screening: 230
      screening.Total_screenings: 200
      diseases.refferal_count: 230
      screening.citizen_diagnosis_name: 200
    series_cell_visualizations:
      screening.Unique_Screening:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      diseases.refferal_count:
        align: center
      screening.Unique_Screening:
        align: center
      screening.citizen_diagnosis_name:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f9fff2"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    listen:
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution District: screening.user_district_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
    - Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Date: diseases.screened_date
      Institution Block: diseases.user_block_name
      Institution Hud: diseases.user_hud_name
      Institution District: diseases.user_district_name
      Institution Directorate: diseases.user_directorate
      Institution Role: diseases.role_name
    row: 4
    col: 0
    width: 12
    height: 6
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.Unique_Screening, screening.Total_screenings, screening.citizen_district_name,
        screening.citizen_district_gid]
      sorts: [screening.Unique_Screening desc]
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
        screening.Unique_Screening:
          is_active: false
      defaults_version: 1
    - model: tnphr-prod-kpi
      explore: diseases
      type: table
      fields: [diseases.refferal_count, diseases.citizen_district_name]
      sorts: [diseases.refferal_count desc]
      limit: 5000
      join_fields:
      - field_name: diseases.citizen_district_name
        source_field_name: screening.citizen_district_name
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
      screening.Unique_Screening: No. of Individuals Screened
      diseases.refferal_count: Number of Individuals Referred
      screening.citizen_diagnosis_name: Diagnosis
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
    series_column_widths:
      screening.Unique_Screening: 230
      screening.Total_screenings: 200
      diseases.refferal_count: 230
      screening.citizen_diagnosis_name: 200
      screening.citizen_district_gid: 200
      screening.citizen_district_name: 200
    series_cell_visualizations:
      screening.Unique_Screening:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      diseases.refferal_count:
        align: center
      screening.Unique_Screening:
        align: center
      screening.citizen_diagnosis_name:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_district_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f9fff2"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    listen:
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution District: screening.user_district_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
    - Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Date: diseases.screened_date
      Institution Block: diseases.user_block_name
      Institution Hud: diseases.user_hud_name
      Institution District: diseases.user_district_name
      Institution Directorate: diseases.user_directorate
      Institution Role: diseases.role_name
    row: 10
    col: 0
    width: 12
    height: 6
  - name: Hud Wise
    title: Hud Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.Unique_Screening, screening.Total_screenings, screening.citizen_district_name,
        screening.citizen_district_gid, screening.citizen_hud_name, screening.citizen_hud_gid]
      sorts: [screening.Unique_Screening desc]
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
        screening.Unique_Screening:
          is_active: false
      defaults_version: 1
    - model: tnphr-prod-kpi
      explore: diseases
      type: table
      fields: [diseases.refferal_count, diseases.citizen_district_name, diseases.citizen_hud_name]
      sorts: [diseases.refferal_count desc]
      limit: 5000
      join_fields:
      - field_name: diseases.citizen_district_name
        source_field_name: screening.citizen_district_name
      - field_name: diseases.citizen_hud_name
        source_field_name: screening.citizen_hud_name
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
      screening.Unique_Screening: No. of Individuals Screened
      diseases.refferal_count: Number of Individuals Referred
      screening.citizen_diagnosis_name: Diagnosis
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
    series_column_widths:
      screening.Unique_Screening: 230
      screening.Total_screenings: 200
      diseases.refferal_count: 230
      screening.citizen_diagnosis_name: 200
      screening.citizen_district_gid: 200
      screening.citizen_district_name: 200
      screening.citizen_hud_gid: 200
      screening.citizen_hud_name: 200
    series_cell_visualizations:
      screening.Unique_Screening:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      diseases.refferal_count:
        align: center
      screening.Unique_Screening:
        align: center
      screening.citizen_diagnosis_name:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_district_gid:
        align: center
      screening.citizen_hud_name:
        align: center
      screening.citizen_hud_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f9fff2"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    listen:
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution District: screening.user_district_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
    - Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Date: diseases.screened_date
      Institution Block: diseases.user_block_name
      Institution Hud: diseases.user_hud_name
      Institution District: diseases.user_district_name
      Institution Directorate: diseases.user_directorate
      Institution Role: diseases.role_name
    row: 10
    col: 12
    width: 12
    height: 6
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.Unique_Screening, screening.Total_screenings, screening.citizen_district_name,
        screening.citizen_district_gid, screening.citizen_hud_name, screening.citizen_hud_gid,
        screening.citizen_block_name, screening.citizen_block_gid]
      sorts: [screening.Unique_Screening desc]
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
        screening.Unique_Screening:
          is_active: false
      defaults_version: 1
    - model: tnphr-prod-kpi
      explore: diseases
      type: table
      fields: [diseases.refferal_count, diseases.citizen_district_name, diseases.citizen_hud_name,
        diseases.citizen_block_name]
      sorts: [diseases.refferal_count desc]
      limit: 5000
      join_fields:
      - field_name: diseases.citizen_district_name
        source_field_name: screening.citizen_district_name
      - field_name: diseases.citizen_hud_name
        source_field_name: screening.citizen_hud_name
      - field_name: diseases.citizen_block_name
        source_field_name: screening.citizen_block_name
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
      screening.Unique_Screening: No. of Individuals Screened
      diseases.refferal_count: Number of Individuals Referred
      screening.citizen_diagnosis_name: Diagnosis
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
      screening.citizen_block_name: Community Block
      screening.citizen_block_gid: Community Block Gid
    series_column_widths:
      screening.Unique_Screening: 230
      screening.Total_screenings: 200
      diseases.refferal_count: 230
      screening.citizen_diagnosis_name: 200
      screening.citizen_district_gid: 200
      screening.citizen_district_name: 200
      screening.citizen_hud_gid: 200
      screening.citizen_hud_name: 200
      screening.citizen_block_gid: 200
      screening.citizen_block_name: 200
    series_cell_visualizations:
      screening.Unique_Screening:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      diseases.refferal_count:
        align: center
      screening.Unique_Screening:
        align: center
      screening.citizen_diagnosis_name:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_district_gid:
        align: center
      screening.citizen_hud_name:
        align: center
      screening.citizen_hud_gid:
        align: center
      screening.citizen_block_name:
        align: center
      screening.citizen_block_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f9fff2"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    listen:
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution District: screening.user_district_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
    - Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Date: diseases.screened_date
      Institution Block: diseases.user_block_name
      Institution Hud: diseases.user_hud_name
      Institution District: diseases.user_district_name
      Institution Directorate: diseases.user_directorate
      Institution Role: diseases.role_name
    row: 16
    col: 0
    width: 12
    height: 6
  - name: Village Wise
    title: Village Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.Unique_Screening, screening.Total_screenings, screening.citizen_district_name,
        screening.citizen_district_gid, screening.citizen_hud_name, screening.citizen_hud_gid,
        screening.citizen_block_name, screening.citizen_block_gid, screening.citizen_village_name,
        screening.citizen_village_gid]
      sorts: [screening.Unique_Screening desc]
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
        screening.Unique_Screening:
          is_active: false
      defaults_version: 1
    - model: tnphr-prod-kpi
      explore: diseases
      type: table
      fields: [diseases.refferal_count, diseases.citizen_district_name, diseases.citizen_hud_name,
        diseases.citizen_block_name, diseases.citizen_village_name]
      sorts: [diseases.refferal_count desc]
      limit: 5000
      join_fields:
      - field_name: diseases.citizen_district_name
        source_field_name: screening.citizen_district_name
      - field_name: diseases.citizen_hud_name
        source_field_name: screening.citizen_hud_name
      - field_name: diseases.citizen_block_name
        source_field_name: screening.citizen_block_name
      - field_name: diseases.citizen_village_name
        source_field_name: screening.citizen_village_name
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
      screening.Unique_Screening: No. of Individuals Screened
      diseases.refferal_count: Number of Individuals Referred
      screening.citizen_diagnosis_name: Diagnosis
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
      screening.citizen_block_name: Community Block
      screening.citizen_block_gid: Community Block Gid
      screening.citizen_village_gid: Community Village Gid
      screening.citizen_village_name: Community Village
    series_column_widths:
      screening.Unique_Screening: 230
      screening.Total_screenings: 200
      diseases.refferal_count: 230
      screening.citizen_diagnosis_name: 200
      screening.citizen_district_gid: 200
      screening.citizen_district_name: 200
      screening.citizen_hud_gid: 200
      screening.citizen_hud_name: 200
      screening.citizen_block_gid: 200
      screening.citizen_block_name: 200
      screening.citizen_village_name: 200
      screening.citizen_village_gid: 200
    series_cell_visualizations:
      screening.Unique_Screening:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      diseases.refferal_count:
        align: center
      screening.Unique_Screening:
        align: center
      screening.citizen_diagnosis_name:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_district_gid:
        align: center
      screening.citizen_hud_name:
        align: center
      screening.citizen_hud_gid:
        align: center
      screening.citizen_block_name:
        align: center
      screening.citizen_block_gid:
        align: center
      screening.citizen_village_gid:
        align: center
      screening.citizen_village_name:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f9fff2"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    listen:
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution District: screening.user_district_name
      Institution Directorate: screening.user_directorate
      Institution Role: screening.role_name
    - Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Date: diseases.screened_date
      Institution Block: diseases.user_block_name
      Institution Hud: diseases.user_hud_name
      Institution District: diseases.user_district_name
      Institution Directorate: diseases.user_directorate
      Institution Role: diseases.role_name
    row: 16
    col: 12
    width: 12
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
      <center>PBS Screening - Used to understand the metrics for screening  done by the TN govt</center>
    row: 0
    col: 0
    width: 24
    height: 4
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
    listens_to_filters: [Institution Role, Institution Directorate, Institution Block,
      Institution Hud]
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
    listens_to_filters: [Institution Role, Institution Directorate, Institution Block,
      Institution District]
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
    listens_to_filters: [Institution Role, Institution Directorate, Institution Hud,
      Institution District]
    field: screening.user_block_name
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
    listens_to_filters: [Institution Role, Institution Block, Institution Hud, Institution
        District]
    field: screening.user_directorate
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
    listens_to_filters: [Institution Directorate, Institution Block, Institution Hud,
      Institution District]
    field: screening.role_name
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
