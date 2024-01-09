- dashboard: uhc_performance_dashboard_v2_1_0
  title: UHC Performance Dashboard v2.1.0
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: v8m6TkfwShggyU55bxsrtD
  elements:
  - name: "<H3>All Facility</H3>"
    type: text
    title_text: "<H3>All Facility</H3>"
    subtitle_text: ''
    body_text: <body bgcolor="#a4bced"> </body>
    row: 4
    col: 18
    width: 5
    height: 3
  - name: "<H3>Rural PHC</H3>"
    type: text
    title_text: "<H3>Rural PHC</H3>"
    subtitle_text: ''
    body_text: <body bgcolor="#a4bced"> </body>
    row: 13
    col: 18
    width: 5
    height: 3
  - name: "<H3>Urban HSC</H3>"
    type: text
    title_text: "<H3>Urban HSC</H3>"
    subtitle_text: ''
    body_text: <body bgcolor="#a4bced"> </body>
    row: 10
    col: 18
    width: 5
    height: 3
  - name: "<H3>Rural HSC</H3>"
    type: text
    title_text: "<H3>Rural HSC</H3>"
    subtitle_text: ''
    body_text: <body bgcolor="#a4bced"> </body>
    row: 16
    col: 18
    width: 5
    height: 3
  - name: "<H3>Urban PHC</H3>"
    type: text
    title_text: "<H3>Urban PHC</H3>"
    subtitle_text: ''
    body_text: <body bgcolor="#a4bced"> </body>
    row: 7
    col: 18
    width: 5
    height: 3
  - title: Per day Drug delivery
    name: Per day Drug delivery
    model: tnphr-prod-kpi
    explore: drugs
    type: single_value
    fields: [drugs.count, drugs.Date_count]
    filters:
      drugs.citizen_screened_date: 30 days
    limit: 500
    dynamic_fields: [{table_calculation: per_day_drug_delivery, label: Per day Drug
          delivery, expression: "${drugs.count}/${drugs.Date_count}", value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}, {
        table_calculation: average_per_day_drug_delivery, label: Average Per day Drug
          delivery, expression: 'mean(${per_day_drug_delivery})', value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
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
    hidden_fields: [drugs.count, per_day_drug_delivery, drugs.Date_count]
    listen:
      " HWC/Not HWC": drugs.is_user_facility_hwc
      Community District Name: drugs.citizen_district_name
      Community  Hud Name: drugs.citizen_hud_name
      Community Block Name: drugs.citizen_block_name
      Community Block Type: drugs.citizen_block_type
      Institution Directorate: drugs.user_directorate
    row: 29
    col: 0
    width: 7
    height: 4
  - title: Lab Test Per day
    name: Lab Test Per day
    model: tnphr-prod-kpi
    explore: lab_test
    type: single_value
    fields: [lab_test.count, lab_test.Date_count]
    filters:
      lab_test.lab_test_date_date: 30 days
    limit: 500
    dynamic_fields: [{table_calculation: lab_test_per_day, label: Lab Test Per day,
        expression: "${lab_test.count}/${lab_test.Date_count}", value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}, {
        table_calculation: average_lab_test_per_day, label: Average Lab Test Per day,
        expression: 'mean(${lab_test_per_day})', value_format: !!null '', value_format_name: decimal_2,
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
    defaults_version: 1
    hidden_fields: [lab_test_per_day, lab_test.Date_count, lab_test.count]
    listen:
      Community District Name: lab_test.citizen_district_name
      Community  Hud Name: lab_test.citizen_hud_name
      Community Block Name: lab_test.citizen_block_name
      Community Block Type: lab_test.citizen_block_type
      Institution Directorate: lab_test.user_directorate
    row: 29
    col: 8
    width: 7
    height: 4
  - title: OP per facility Per day
    name: OP per facility Per day
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Total_OP_Count, screening.Date_count]
    filters:
      screening.screened_date: 30 days
    limit: 500
    dynamic_fields: [{table_calculation: op_per_facility_per_day, label: OP per facility
          Per day, expression: "${screening.Total_OP_Count}/${screening.Date_count}",
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
    hidden_fields: [screening.Total_OP_Count, screening.Date_count]
    listen:
      " HWC/Not HWC": screening.is_citizen_facility_hwc
      Community District Name: screening.citizen_district_name
      Community  Hud Name: screening.citizen_hud_name
      Community Block Name: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Institution Directorate: screening.user_directorate
    row: 29
    col: 16
    width: 7
    height: 4
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.Total_OP_Count, screening.citizen_district_name, screening.citizen_district_gid,
        screening.Date_count]
      filters:
        screening.screened_date: 30 days
      sorts: [screening.Total_OP_Count desc]
      limit: 500
      dynamic_fields: [{table_calculation: op_per_day, label: OP Per day, expression: "${screening.Total_OP_Count}/${screening.Date_count}",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: op_per_day_per_facility, label: OP
            Per day per facility, expression: 'mean(${op_per_day})', value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
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
        screening.Total_OP_Count:
          is_active: false
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
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      hidden_fields: [op_per_day, screening.Date_count]
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_gid, population.total_population]
      limit: 500
      join_fields:
      - field_name: population.citizen_district_gid
        source_field_name: screening.citizen_district_gid
    - model: tnphr-prod-kpi
      explore: drugs
      type: looker_column
      fields: [drugs.total_drugs_issued, drugs.citizen_district_gid, drugs.Date_count]
      filters:
        drugs.citizen_screened_date: 30 days
      sorts: [drugs.total_drugs_issued desc]
      limit: 500
      dynamic_fields: [{table_calculation: per_day_drug_delivery, label: Per day drug
            delivery, expression: "${drugs.total_drugs_issued}/${drugs.Date_count}",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: per_day_drug_delivery_per_facility,
          label: Per day drug delivery per facility, expression: 'mean(${per_day_drug_delivery})',
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
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
      hidden_fields: [drugs.Date_count, per_day_drug_delivery]
      defaults_version: 1
      join_fields:
      - field_name: drugs.citizen_district_gid
        source_field_name: screening.citizen_district_gid
    - model: tnphr-prod-kpi
      explore: lab_test
      type: table
      fields: [lab_test.citizen_district_gid, lab_test.count, lab_test.Date_count]
      filters:
        lab_test.lab_test_date_date: 30 days
      sorts: [lab_test.count desc]
      limit: 500
      dynamic_fields: [{table_calculation: per_day_lab_test, label: Per day Lab Test,
          expression: "${lab_test.count}/${lab_test.Date_count}", value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number},
        {table_calculation: per_day_lab_test_per_facility, label: Per day Lab Test
            per facility, expression: 'mean(${per_day_lab_test})', value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
      hidden_fields: [per_day_lab_test, lab_test.Date_count]
      join_fields:
      - field_name: lab_test.citizen_district_gid
        source_field_name: screening.citizen_district_gid
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.citizen_district_gid]
      limit: 500
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_gid
        source_field_name: screening.citizen_district_gid
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
      screening.citizen_district_name: Community  District
      screening.citizen_district_gid: Community  District  Gid
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    dynamic_fields: [{category: table_calculation, expression: "${population.total_population}/${mtm_beneficiary.total_confirmed_MTM_beneficiary}",
        label: "% Benefited", value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: benefited, _type_hint: number}]
    listen:
    - " HWC/Not HWC": screening.is_citizen_facility_hwc
      Community District Name: screening.citizen_district_name
      Community  Hud Name: screening.citizen_hud_name
      Community Block Name: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Institution Directorate: screening.user_directorate
    - Community District Name: population.citizen_district_name
      Community  Hud Name: population.citizen_hud_name
      Community Block Name: population.citizen_block_name
      Community Block Type: population.citizen_block_type
      Institution Directorate: population.user_directorate
    - " HWC/Not HWC": drugs.is_user_facility_hwc
      Community District Name: drugs.citizen_district_name
      Community  Hud Name: drugs.citizen_hud_name
      Community Block Name: drugs.citizen_block_name
      Community Block Type: drugs.citizen_block_type
      Institution Directorate: drugs.user_directorate
    - Community District Name: lab_test.citizen_district_name
      Community  Hud Name: lab_test.citizen_hud_name
      Community Block Name: lab_test.citizen_block_name
      Community Block Type: lab_test.citizen_block_type
      Institution Directorate: lab_test.user_directorate
    - " HWC/Not HWC": mtm_beneficiary.is_user_facility_hwc
      Community District Name: mtm_beneficiary.citizen_district_name
      Community  Hud Name: mtm_beneficiary.citizen_hud_name
      Community Block Name: mtm_beneficiary.citizen_block_name
      Community Block Type: mtm_beneficiary.citizen_block_type
      Institution Directorate: mtm_beneficiary.user_directorate
    row: 33
    col: 0
    width: 24
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
      <center>UHC Performance  - Use to understand the count of Drugs, Lab test and Op as per the type of facility in TN</center>
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Per day OP per facility
    name: Per day OP per facility
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Date_count, screening.user_facility_name, screening.Total_OP_Count]
    filters:
      screening.user_category_name: ''
    sorts: [screening.Date_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: average_screening_per_day, label: Average
          Screening per day, expression: "${screening.Total_OP_Count}/${screening.Date_count}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: average_screening_per_day_per_facility,
        label: Average Screening per day per facility, expression: 'mean(${average_screening_per_day})',
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
    hidden_fields: [screening.Date_count, screening.Total_OP_Count, average_screening_per_day]
    listen:
      " HWC/Not HWC": screening.is_citizen_facility_hwc
      Community District Name: screening.citizen_district_name
      Community  Hud Name: screening.citizen_hud_name
      Community Block Name: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Institution Directorate: screening.user_directorate
    row: 4
    col: 12
    width: 5
    height: 3
  - title: Per day OP per facility
    name: Per day OP per facility (2)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Date_count, screening.user_facility_name, screening.Total_OP_Count]
    filters:
      screening.user_category_name: Urban HSC
    sorts: [screening.Date_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: average_screening_per_day, label: Average
          Screening per day, expression: "${screening.Total_OP_Count}/${screening.Date_count}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: average_screening_per_day_per_facility,
        label: Average Screening per day per facility, expression: 'mean(${average_screening_per_day})',
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
    hidden_fields: [screening.Date_count, screening.Total_OP_Count, average_screening_per_day]
    listen:
      " HWC/Not HWC": screening.is_citizen_facility_hwc
      Community District Name: screening.citizen_district_name
      Community  Hud Name: screening.citizen_hud_name
      Community Block Name: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Institution Directorate: screening.user_directorate
    row: 10
    col: 12
    width: 5
    height: 3
  - title: Per day OP per facility
    name: Per day OP per facility (3)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Date_count, screening.user_facility_name, screening.Total_OP_Count]
    filters:
      screening.user_category_name: Urban PHC
    sorts: [screening.Date_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: average_screening_per_day, label: Average
          Screening per day, expression: "${screening.Total_OP_Count}/${screening.Date_count}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: average_screening_per_day_per_facility,
        label: Average Screening per day per facility, expression: 'mean(${average_screening_per_day})',
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
    hidden_fields: [screening.Date_count, screening.Total_OP_Count, average_screening_per_day]
    listen:
      " HWC/Not HWC": screening.is_citizen_facility_hwc
      Community District Name: screening.citizen_district_name
      Community  Hud Name: screening.citizen_hud_name
      Community Block Name: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Institution Directorate: screening.user_directorate
    row: 7
    col: 12
    width: 5
    height: 3
  - title: Per day OP per facility
    name: Per day OP per facility (4)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Date_count, screening.user_facility_name, screening.Total_OP_Count]
    filters:
      screening.user_category_name: Rural PHC
    sorts: [screening.Date_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: average_screening_per_day, label: Average
          Screening per day, expression: "${screening.Total_OP_Count}/${screening.Date_count}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: average_screening_per_day_per_facility,
        label: Average Screening per day per facility, expression: 'mean(${average_screening_per_day})',
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
    hidden_fields: [screening.Date_count, screening.Total_OP_Count, average_screening_per_day]
    listen:
      " HWC/Not HWC": screening.is_citizen_facility_hwc
      Community District Name: screening.citizen_district_name
      Community  Hud Name: screening.citizen_hud_name
      Community Block Name: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Institution Directorate: screening.user_directorate
    row: 13
    col: 12
    width: 5
    height: 3
  - title: Per day OP per facility
    name: Per day OP per facility (5)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Date_count, screening.user_facility_name, screening.Total_OP_Count]
    filters:
      screening.user_category_name: Rural HSC
    sorts: [screening.Date_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: average_screening_per_day, label: Average
          Screening per day, expression: "${screening.Total_OP_Count}/${screening.Date_count}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: average_screening_per_day_per_facility,
        label: Average Screening per day per facility, expression: 'mean(${average_screening_per_day})',
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
    hidden_fields: [screening.Date_count, screening.Total_OP_Count, average_screening_per_day]
    listen:
      " HWC/Not HWC": screening.is_citizen_facility_hwc
      Community District Name: screening.citizen_district_name
      Community  Hud Name: screening.citizen_hud_name
      Community Block Name: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Institution Directorate: screening.user_directorate
    row: 16
    col: 12
    width: 5
    height: 3
  - title: Per day Drug delivery per facility
    name: Per day Drug delivery per facility
    model: tnphr-prod-kpi
    explore: drugs
    type: single_value
    fields: [drugs.citizen_facility_name, drugs.total_drugs_issued, drugs.Date_count]
    sorts: [drugs.total_drugs_issued desc]
    limit: 5000
    dynamic_fields: [{table_calculation: per_day_drug_delivery_per_day, label: Per
          day Drug delivery per day, expression: "${drugs.total_drugs_issued}/${drugs.Date_count}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: per_day_drug_delivery_per_facility,
        label: Per day Drug delivery per facility, expression: 'mean(${per_day_drug_delivery_per_day})',
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
    series_types: {}
    defaults_version: 1
    hidden_fields: [drugs.total_drugs_issued, drugs.Date_count, per_day_drug_delivery_per_day,
      drugs.citizen_facility_name]
    listen:
      " HWC/Not HWC": drugs.is_user_facility_hwc
      Community District Name: drugs.citizen_district_name
      Community  Hud Name: drugs.citizen_hud_name
      Community Block Name: drugs.citizen_block_name
      Community Block Type: drugs.citizen_block_type
      Institution Directorate: drugs.user_directorate
    row: 4
    col: 0
    width: 5
    height: 3
  - title: Per day Drug delivery per facility
    name: Per day Drug delivery per facility (2)
    model: tnphr-prod-kpi
    explore: drugs
    type: single_value
    fields: [drugs.citizen_facility_name, drugs.total_drugs_issued, drugs.Date_count]
    filters:
      drugs.user_category_name: Urban HSC
    sorts: [drugs.total_drugs_issued desc]
    limit: 5000
    dynamic_fields: [{table_calculation: per_day_drug_delivery_per_day, label: Per
          day Drug delivery per day, expression: "${drugs.total_drugs_issued}/${drugs.Date_count}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: per_day_drug_delivery_per_facility,
        label: Per day Drug delivery per facility, expression: 'mean(${per_day_drug_delivery_per_day})',
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
    series_types: {}
    defaults_version: 1
    hidden_fields: [drugs.total_drugs_issued, drugs.Date_count, per_day_drug_delivery_per_day,
      drugs.citizen_facility_name]
    listen:
      " HWC/Not HWC": drugs.is_user_facility_hwc
      Community District Name: drugs.citizen_district_name
      Community  Hud Name: drugs.citizen_hud_name
      Community Block Name: drugs.citizen_block_name
      Community Block Type: drugs.citizen_block_type
      Institution Directorate: drugs.user_directorate
    row: 10
    col: 0
    width: 5
    height: 3
  - title: Per day Drug delivery per facility
    name: Per day Drug delivery per facility (3)
    model: tnphr-prod-kpi
    explore: drugs
    type: single_value
    fields: [drugs.citizen_facility_name, drugs.total_drugs_issued, drugs.Date_count]
    filters:
      drugs.user_category_name: Urban PHC
    sorts: [drugs.total_drugs_issued desc]
    limit: 5000
    dynamic_fields: [{table_calculation: per_day_drug_delivery_per_day, label: Per
          day Drug delivery per day, expression: "${drugs.total_drugs_issued}/${drugs.Date_count}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: per_day_drug_delivery_per_facility,
        label: Per day Drug delivery per facility, expression: 'mean(${per_day_drug_delivery_per_day})',
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
    series_types: {}
    defaults_version: 1
    hidden_fields: [drugs.total_drugs_issued, drugs.Date_count, per_day_drug_delivery_per_day,
      drugs.citizen_facility_name]
    listen:
      " HWC/Not HWC": drugs.is_user_facility_hwc
      Community District Name: drugs.citizen_district_name
      Community  Hud Name: drugs.citizen_hud_name
      Community Block Name: drugs.citizen_block_name
      Community Block Type: drugs.citizen_block_type
      Institution Directorate: drugs.user_directorate
    row: 7
    col: 0
    width: 5
    height: 3
  - title: Per day Drug delivery per facility
    name: Per day Drug delivery per facility (4)
    model: tnphr-prod-kpi
    explore: drugs
    type: single_value
    fields: [drugs.citizen_facility_name, drugs.total_drugs_issued, drugs.Date_count]
    filters:
      drugs.user_category_name: Rural HSC
    sorts: [drugs.total_drugs_issued desc]
    limit: 5000
    dynamic_fields: [{table_calculation: per_day_drug_delivery_per_day, label: Per
          day Drug delivery per day, expression: "${drugs.total_drugs_issued}/${drugs.Date_count}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: per_day_drug_delivery_per_facility,
        label: Per day Drug delivery per facility, expression: 'mean(${per_day_drug_delivery_per_day})',
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
    series_types: {}
    defaults_version: 1
    hidden_fields: [drugs.total_drugs_issued, drugs.Date_count, per_day_drug_delivery_per_day,
      drugs.citizen_facility_name]
    listen:
      " HWC/Not HWC": drugs.is_user_facility_hwc
      Community District Name: drugs.citizen_district_name
      Community  Hud Name: drugs.citizen_hud_name
      Community Block Name: drugs.citizen_block_name
      Community Block Type: drugs.citizen_block_type
      Institution Directorate: drugs.user_directorate
    row: 16
    col: 0
    width: 5
    height: 3
  - title: Per day Drug delivery per facility
    name: Per day Drug delivery per facility (5)
    model: tnphr-prod-kpi
    explore: drugs
    type: single_value
    fields: [drugs.citizen_facility_name, drugs.total_drugs_issued, drugs.Date_count]
    filters:
      drugs.user_category_name: Rural PHC
    sorts: [drugs.total_drugs_issued desc]
    limit: 5000
    dynamic_fields: [{table_calculation: per_day_drug_delivery_per_day, label: Per
          day Drug delivery per day, expression: "${drugs.total_drugs_issued}/${drugs.Date_count}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: per_day_drug_delivery_per_facility,
        label: Per day Drug delivery per facility, expression: 'mean(${per_day_drug_delivery_per_day})',
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
    series_types: {}
    defaults_version: 1
    hidden_fields: [drugs.total_drugs_issued, drugs.Date_count, per_day_drug_delivery_per_day,
      drugs.citizen_facility_name]
    listen:
      " HWC/Not HWC": drugs.is_user_facility_hwc
      Community District Name: drugs.citizen_district_name
      Community  Hud Name: drugs.citizen_hud_name
      Community Block Name: drugs.citizen_block_name
      Community Block Type: drugs.citizen_block_type
      Institution Directorate: drugs.user_directorate
    row: 13
    col: 0
    width: 5
    height: 3
  - title: Per day Lab Test per facility
    name: Per day Lab Test per facility
    model: tnphr-prod-kpi
    explore: lab_test
    type: single_value
    fields: [lab_test.count, lab_test.Date_count, lab_test.user_facility_name]
    sorts: [lab_test.count desc]
    limit: 500
    dynamic_fields: [{table_calculation: lab_test_per_day, label: Lab Test Per day,
        expression: "${lab_test.count}/${lab_test.Date_count}", value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}, {
        table_calculation: per_day_lab_test_per_facility, label: Per day Lab Test
          per facility, expression: 'mean(${lab_test_per_day})', value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [lab_test.count, lab_test.Date_count, lab_test_per_day]
    listen:
      Community District Name: lab_test.citizen_district_name
      Community  Hud Name: lab_test.citizen_hud_name
      Community Block Name: lab_test.citizen_block_name
      Community Block Type: lab_test.citizen_block_type
      Institution Directorate: lab_test.user_directorate
    row: 4
    col: 6
    width: 5
    height: 3
  - title: Per day Lab Test per facility
    name: Per day Lab Test per facility (2)
    model: tnphr-prod-kpi
    explore: lab_test
    type: single_value
    fields: [lab_test.count, lab_test.Date_count, lab_test.user_facility_name]
    filters:
      lab_test.user_category_name: Urban HSC
    sorts: [lab_test.count desc]
    limit: 500
    dynamic_fields: [{table_calculation: lab_test_per_day, label: Lab Test Per day,
        expression: "${lab_test.count}/${lab_test.Date_count}", value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}, {
        table_calculation: per_day_lab_test_per_facility, label: Per day Lab Test
          per facility, expression: 'mean(${lab_test_per_day})', value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [lab_test.count, lab_test.Date_count, lab_test_per_day]
    listen:
      Community District Name: lab_test.citizen_district_name
      Community  Hud Name: lab_test.citizen_hud_name
      Community Block Name: lab_test.citizen_block_name
      Community Block Type: lab_test.citizen_block_type
      Institution Directorate: lab_test.user_directorate
    row: 10
    col: 6
    width: 5
    height: 3
  - title: Per day Lab Test per facility
    name: Per day Lab Test per facility (3)
    model: tnphr-prod-kpi
    explore: lab_test
    type: single_value
    fields: [lab_test.count, lab_test.Date_count, lab_test.user_facility_name]
    filters:
      lab_test.user_category_name: Urban PHC
    sorts: [lab_test.count desc]
    limit: 500
    dynamic_fields: [{table_calculation: lab_test_per_day, label: Lab Test Per day,
        expression: "${lab_test.count}/${lab_test.Date_count}", value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}, {
        table_calculation: per_day_lab_test_per_facility, label: Per day Lab Test
          per facility, expression: 'mean(${lab_test_per_day})', value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [lab_test.count, lab_test.Date_count, lab_test_per_day]
    listen:
      Community District Name: lab_test.citizen_district_name
      Community  Hud Name: lab_test.citizen_hud_name
      Community Block Name: lab_test.citizen_block_name
      Community Block Type: lab_test.citizen_block_type
      Institution Directorate: lab_test.user_directorate
    row: 7
    col: 6
    width: 5
    height: 3
  - title: Per day Lab Test per facility
    name: Per day Lab Test per facility (4)
    model: tnphr-prod-kpi
    explore: lab_test
    type: single_value
    fields: [lab_test.count, lab_test.Date_count, lab_test.user_facility_name]
    filters:
      lab_test.user_category_name: Rural HSC
    sorts: [lab_test.count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: lab_test_per_day, label: Lab Test Per day,
        expression: "${lab_test.count}/${lab_test.Date_count}", value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}, {
        table_calculation: per_day_lab_test_per_facility, label: Per day Lab Test
          per facility, expression: 'mean(${lab_test_per_day})', value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [lab_test.count, lab_test.Date_count, lab_test_per_day]
    listen:
      Community District Name: lab_test.citizen_district_name
      Community  Hud Name: lab_test.citizen_hud_name
      Community Block Name: lab_test.citizen_block_name
      Community Block Type: lab_test.citizen_block_type
      Institution Directorate: lab_test.user_directorate
    row: 16
    col: 6
    width: 5
    height: 3
  - title: Per day Lab Test per facility
    name: Per day Lab Test per facility (5)
    model: tnphr-prod-kpi
    explore: lab_test
    type: single_value
    fields: [lab_test.count, lab_test.Date_count, lab_test.user_facility_name]
    filters:
      lab_test.user_category_name: Rural PHC
    sorts: [lab_test.count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: lab_test_per_day, label: Lab Test Per day,
        expression: "${lab_test.count}/${lab_test.Date_count}", value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}, {
        table_calculation: per_day_lab_test_per_facility, label: Per day Lab Test
          per facility, expression: 'mean(${lab_test_per_day})', value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [lab_test.count, lab_test.Date_count, lab_test_per_day]
    listen:
      Community District Name: lab_test.citizen_district_name
      Community  Hud Name: lab_test.citizen_hud_name
      Community Block Name: lab_test.citizen_block_name
      Community Block Type: lab_test.citizen_block_type
      Institution Directorate: lab_test.user_directorate
    row: 13
    col: 6
    width: 5
    height: 3
  - name: Hud Wise
    title: Hud Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.Total_OP_Count, screening.citizen_district_name, screening.citizen_district_gid,
        screening.Date_count, screening.citizen_hud_name, screening.citizen_hud_gid]
      filters:
        screening.screened_date: 30 days
      sorts: [screening.Total_OP_Count desc]
      limit: 500
      dynamic_fields: [{table_calculation: op_per_day, label: OP Per day, expression: "${screening.Total_OP_Count}/${screening.Date_count}",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: op_per_day_per_facility, label: OP
            Per day per facility, expression: 'mean(${op_per_day})', value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
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
        screening.Total_OP_Count:
          is_active: false
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
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      hidden_fields: [op_per_day, screening.Date_count]
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_gid, population.total_population, population.citizen_hud_gid]
      sorts: [population.total_population desc]
      limit: 500
      join_fields:
      - field_name: population.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: population.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
    - model: tnphr-prod-kpi
      explore: drugs
      type: looker_column
      fields: [drugs.total_drugs_issued, drugs.citizen_district_gid, drugs.Date_count,
        drugs.citizen_hud_gid]
      filters:
        drugs.citizen_screened_date: 30 days
      sorts: [drugs.total_drugs_issued desc]
      limit: 500
      dynamic_fields: [{table_calculation: per_day_drug_delivery, label: Per day drug
            delivery, expression: "${drugs.total_drugs_issued}/${drugs.Date_count}",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: per_day_drug_delivery_per_facility,
          label: Per day drug delivery per facility, expression: 'mean(${per_day_drug_delivery})',
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
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
      hidden_fields: [drugs.Date_count, per_day_drug_delivery]
      defaults_version: 1
      join_fields:
      - field_name: drugs.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: drugs.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
    - model: tnphr-prod-kpi
      explore: lab_test
      type: table
      fields: [lab_test.citizen_district_gid, lab_test.count, lab_test.Date_count,
        lab_test.citizen_hud_gid]
      filters:
        lab_test.lab_test_date_date: 30 days
      sorts: [lab_test.count desc]
      limit: 500
      dynamic_fields: [{table_calculation: per_day_lab_test, label: Per day Lab Test,
          expression: "${lab_test.count}/${lab_test.Date_count}", value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number},
        {table_calculation: per_day_lab_test_per_facility, label: Per day Lab Test
            per facility, expression: 'mean(${per_day_lab_test})', value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
      hidden_fields: [per_day_lab_test, lab_test.Date_count]
      join_fields:
      - field_name: lab_test.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: lab_test.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.citizen_district_gid,
        mtm_beneficiary.citizen_hud_gid]
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
      limit: 500
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: mtm_beneficiary.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
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
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    dynamic_fields: [{category: table_calculation, expression: "${population.total_population}/${mtm_beneficiary.total_confirmed_MTM_beneficiary}",
        label: "% Benefited", value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: benefited, _type_hint: number}]
    listen:
    - " HWC/Not HWC": screening.is_citizen_facility_hwc
      Community District Name: screening.citizen_district_name
      Community  Hud Name: screening.citizen_hud_name
      Community Block Name: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Institution Directorate: screening.user_directorate
    - Community District Name: population.citizen_district_name
      Community  Hud Name: population.citizen_hud_name
      Community Block Name: population.citizen_block_name
      Community Block Type: population.citizen_block_type
      Institution Directorate: population.user_directorate
    - " HWC/Not HWC": drugs.is_user_facility_hwc
      Community District Name: drugs.citizen_district_name
      Community  Hud Name: drugs.citizen_hud_name
      Community Block Name: drugs.citizen_block_name
      Community Block Type: drugs.citizen_block_type
      Institution Directorate: drugs.user_directorate
    - Community District Name: lab_test.citizen_district_name
      Community  Hud Name: lab_test.citizen_hud_name
      Community Block Name: lab_test.citizen_block_name
      Community Block Type: lab_test.citizen_block_type
      Institution Directorate: lab_test.user_directorate
    - " HWC/Not HWC": mtm_beneficiary.is_user_facility_hwc
      Community District Name: mtm_beneficiary.citizen_district_name
      Community  Hud Name: mtm_beneficiary.citizen_hud_name
      Community Block Name: mtm_beneficiary.citizen_block_name
      Community Block Type: mtm_beneficiary.citizen_block_type
      Institution Directorate: mtm_beneficiary.user_directorate
    row: 42
    col: 0
    width: 24
    height: 9
  - name: Block  Wise
    title: Block  Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.Total_OP_Count, screening.citizen_district_name, screening.citizen_district_gid,
        screening.Date_count, screening.citizen_hud_name, screening.citizen_hud_gid,
        screening.citizen_block_name, screening.citizen_block_gid]
      filters:
        screening.screened_date: 30 days
      sorts: [screening.Total_OP_Count desc]
      limit: 500
      dynamic_fields: [{table_calculation: op_per_day, label: OP Per day, expression: "${screening.Total_OP_Count}/${screening.Date_count}",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: op_per_day_per_facility, label: OP
            Per day per facility, expression: 'mean(${op_per_day})', value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
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
        screening.Total_OP_Count:
          is_active: false
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
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      hidden_fields: [op_per_day, screening.Date_count]
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_gid, population.total_population, population.citizen_hud_gid,
        population.citizen_block_gid]
      sorts: [population.total_population desc]
      limit: 500
      join_fields:
      - field_name: population.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: population.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: population.citizen_block_gid
        source_field_name: screening.citizen_block_gid
    - model: tnphr-prod-kpi
      explore: drugs
      type: looker_column
      fields: [drugs.total_drugs_issued, drugs.citizen_district_gid, drugs.Date_count,
        drugs.citizen_hud_gid, drugs.citizen_block_gid]
      filters:
        drugs.citizen_screened_date: 30 days
      sorts: [drugs.total_drugs_issued desc]
      limit: 500
      dynamic_fields: [{table_calculation: per_day_drug_delivery, label: Per day drug
            delivery, expression: "${drugs.total_drugs_issued}/${drugs.Date_count}",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: per_day_drug_delivery_per_facility,
          label: Per day drug delivery per facility, expression: 'mean(${per_day_drug_delivery})',
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
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
      hidden_fields: [drugs.Date_count, per_day_drug_delivery]
      defaults_version: 1
      join_fields:
      - field_name: drugs.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: drugs.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: drugs.citizen_block_gid
        source_field_name: screening.citizen_block_gid
    - model: tnphr-prod-kpi
      explore: lab_test
      type: table
      fields: [lab_test.citizen_district_gid, lab_test.count, lab_test.Date_count,
        lab_test.citizen_hud_gid, lab_test.citizen_block_gid]
      filters:
        lab_test.lab_test_date_date: 30 days
      sorts: [lab_test.count desc]
      limit: 500
      dynamic_fields: [{table_calculation: per_day_lab_test, label: Per day Lab Test,
          expression: "${lab_test.count}/${lab_test.Date_count}", value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number},
        {table_calculation: per_day_lab_test_per_facility, label: Per day Lab Test
            per facility, expression: 'mean(${per_day_lab_test})', value_format: !!null '',
          value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
      hidden_fields: [per_day_lab_test, lab_test.Date_count]
      join_fields:
      - field_name: lab_test.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: lab_test.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: lab_test.citizen_block_gid
        source_field_name: screening.citizen_block_gid
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.citizen_district_gid,
        mtm_beneficiary.citizen_hud_gid, mtm_beneficiary.citizen_block_gid]
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
      limit: 500
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: mtm_beneficiary.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: mtm_beneficiary.citizen_block_gid
        source_field_name: screening.citizen_block_gid
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
      screening.citizen_district_name: Community  District
      screening.citizen_district_gid: Community  District  Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
      screening.citizen_block_name: Community Block
      screening.citizen_block_gid: Community Block Gid
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    dynamic_fields: [{category: table_calculation, expression: "${population.total_population}/${mtm_beneficiary.total_confirmed_MTM_beneficiary}",
        label: "% Benefited", value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: benefited, _type_hint: number}]
    listen:
    - " HWC/Not HWC": screening.is_citizen_facility_hwc
      Community District Name: screening.citizen_district_name
      Community  Hud Name: screening.citizen_hud_name
      Community Block Name: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Institution Directorate: screening.user_directorate
    - Community District Name: population.citizen_district_name
      Community  Hud Name: population.citizen_hud_name
      Community Block Name: population.citizen_block_name
      Community Block Type: population.citizen_block_type
      Institution Directorate: population.user_directorate
    - " HWC/Not HWC": drugs.is_user_facility_hwc
      Community District Name: drugs.citizen_district_name
      Community  Hud Name: drugs.citizen_hud_name
      Community Block Name: drugs.citizen_block_name
      Community Block Type: drugs.citizen_block_type
      Institution Directorate: drugs.user_directorate
    - Community District Name: lab_test.citizen_district_name
      Community  Hud Name: lab_test.citizen_hud_name
      Community Block Name: lab_test.citizen_block_name
      Community Block Type: lab_test.citizen_block_type
      Institution Directorate: lab_test.user_directorate
    - " HWC/Not HWC": mtm_beneficiary.is_user_facility_hwc
      Community District Name: mtm_beneficiary.citizen_district_name
      Community  Hud Name: mtm_beneficiary.citizen_hud_name
      Community Block Name: mtm_beneficiary.citizen_block_name
      Community Block Type: mtm_beneficiary.citizen_block_type
      Institution Directorate: mtm_beneficiary.user_directorate
    row: 51
    col: 0
    width: 24
    height: 9
  - title: UHC Performance
    name: UHC Performance
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.citizen_service_name, screening.Referal_type, screening.Referal_count,
      screening.Total_screenings, screening.total_screening_male, screening.total_screening_female]
    filters:
      screening.citizen_service_name: "-NULL,-EMPTY"
      screening.Referal_type: -NULL,-EMPTY,-"null"
    sorts: [screening.Referal_count desc]
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
      screening.Referal_count:
        is_active: false
    series_text_format:
      screening.Referal_count:
        align: center
      screening.Total_screenings:
        align: center
      screening.total_screening_male:
        align: center
      screening.total_screening_female:
        align: center
    header_background_color: "#12B5CB"
    defaults_version: 1
    listen:
      " HWC/Not HWC": screening.is_citizen_facility_hwc
      Community District Name: screening.citizen_district_name
      Community  Hud Name: screening.citizen_hud_name
      Community Block Name: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Institution Directorate: screening.user_directorate
    row: 19
    col: 0
    width: 24
    height: 10
  filters:
  - name: Community District Name
    title: Community District Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community Block Type, " HWC/Not HWC", Community  Hud Name,
      Community Block Name]
    field: screening.citizen_district_name
  - name: Community  Hud Name
    title: Community  Hud Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community Block Type, Community District Name, Community
        Block Name]
    field: screening.citizen_hud_name
  - name: Community Block Name
    title: Community Block Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community Block Type, Community District Name, Community  Hud
        Name]
    field: screening.citizen_block_name
  - name: Community Block Type
    title: Community Block Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community District Name, Community  Hud Name, Community Block
        Name]
    field: screening.citizen_block_type
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
    listens_to_filters: []
    field: screening.user_directorate
  - name: " HWC/Not HWC"
    title: " HWC/Not HWC"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: []
    field: screening.is_citizen_facility_hwc
