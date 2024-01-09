- dashboard: mtm_compliance___control_rate_2_0_1
  title: Mtm Compliance Control Rate 2 0 1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: QerW0kwB0pIPfAjVOyDwz4
  elements:
  - title: Unique Screenings
    name: Unique Screenings
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.unique_screenings, screening.Total_screenings]
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
    custom_color: "#9334E6"
    comparison_label: Total Screenings
    defaults_version: 1
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
    row: 4
    col: 0
    width: 5
    height: 6
  - title: Confirmed Diabetes mellitus (Age >18)
    name: Confirmed Diabetes mellitus (Age >18)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Confirmed_Diabetes_mellitus, screening.Total_screenings]
    filters:
      screening.citizen_age: ">18"
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'round(${screening.Confirmed_Diabetes_mellitus}/${screening.Total_screenings}*100,2)',
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: Calculation
          2, expression: 'concat(${calculation_1},"%")', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: of Total Screenings (Age >18)
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#6fabe8",
        font_color: "#030303", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
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
    hidden_fields: [screening.Total_screenings, calculation_1]
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
    row: 10
    col: 0
    width: 6
    height: 6
  - title: Confirmed Hypertension (Age >18)
    name: Confirmed Hypertension (Age >18)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Confirmed_Hypertension, screening.Total_screenings]
    filters:
      screening.citizen_age: ">18"
    limit: 500
    dynamic_fields: [{table_calculation: percentage, label: Percentage, expression: 'round(${screening.Confirmed_Hypertension}/${screening.Total_screenings}*100,2)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: value, label: Value, expression: 'concat(${percentage},"%")',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: of Total Screenings (Age >18)
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#75ccca",
        font_color: "#050505", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
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
    hidden_fields: [percentage, screening.Total_screenings]
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
    row: 10
    col: 6
    width: 6
    height: 6
  - title: Controlled Diabetes Mellitus (Age >18)
    name: Controlled Diabetes Mellitus (Age >18)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Controlled_Diabetes_Mellitus, screening.Total_screenings]
    filters:
      screening.citizen_age: ">18"
    limit: 500
    dynamic_fields: [{table_calculation: percentage, label: Percentage, expression: 'round(${screening.Controlled_Diabetes_Mellitus}/${screening.Total_screenings}*100,2)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: value, label: value, expression: 'concat(${percentage},"%")',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: of Total Screenings (Age >18)
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#6fabe8",
        font_color: "#080808", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
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
    hidden_fields: [percentage, screening.Total_screenings]
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
    row: 10
    col: 12
    width: 6
    height: 6
  - title: Controlled Hypertension (Age >18)
    name: Controlled Hypertension (Age >18)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Controlled_Hypertension, screening.Total_screenings]
    filters:
      screening.citizen_age: ">18"
    limit: 500
    dynamic_fields: [{table_calculation: percentage, label: Percentage, expression: 'round(${screening.Controlled_Hypertension}/${screening.Total_screenings}*100,2)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: value, label: value, expression: 'concat(${percentage},"%")',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: of Total Screenings (Age >18)
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#75ccca",
        font_color: "#080808", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
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
    hidden_fields: [screening.Total_screenings, percentage]
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
    row: 10
    col: 18
    width: 6
    height: 6
  - title: Controlled Hypertension and Diabetes Milletus
    name: Controlled Hypertension and Diabetes Milletus
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Controlled_Hypertension_and_Diabetes_Mellitus, screening.Total_screenings]
    filters:
      screening.citizen_age: ">18"
    limit: 500
    dynamic_fields: [{table_calculation: percentage, label: Percentage, expression: 'round(${screening.Controlled_Hypertension_and_Diabetes_Mellitus}/${screening.Total_screenings}*100,2)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: value, label: value, expression: 'concat(${percentage},"%")',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: of Total Screenings (Age >18)
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6649a",
        font_color: "#080808", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
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
    hidden_fields: [percentage, screening.Total_screenings]
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
    row: 16
    col: 0
    width: 24
    height: 5
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
      <center>MTM Compliance & Control Rate - Used to understand the metrics for mtm schemes implemented by the TN govt</center>
    row: 0
    col: 0
    width: 24
    height: 4
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.Total_screenings, screening.unique_screenings,
        screening.Confirmed_Diabetes_mellitus, screening.Confirmed_Hypertension, screening.Controlled_Hypertension,
        screening.Controlled_Hypertension_and_Diabetes_Mellitus, screening.Confirmed_Hypertension_and_DiabetesMellitus,
        screening.Controlled_Diabetes_Mellitus, screening.citizen_district_gid]
      sorts: [screening.Confirmed_Diabetes_mellitus desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.total_confirmed_MTM_beneficiary,
        mtm_beneficiary.Treatment_compliance_MTM_beneficiary]
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
      limit: 5000
      column_limit: 50
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_name
        source_field_name: screening.citizen_district_name
    - model: tnphr-prod-kpi
      explore: diseases
      type: table
      fields: [diseases.citizen_district_name, diseases.refferal_count, diseases.Compliance_count]
      sorts: [diseases.refferal_count desc]
      limit: 5000
      join_fields:
      - field_name: diseases.citizen_district_name
        source_field_name: screening.citizen_district_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.Total_screenings, screening.unique_screenings, mtm_beneficiary.total_confirmed_MTM_beneficiary,
      mtm_beneficiary.Treatment_compliance_MTM_beneficiary, diseases.refferal_count,
      diseases.Compliance_count, screening.Confirmed_Diabetes_mellitus, screening.Controlled_Diabetes_Mellitus,
      screening.Confirmed_Hypertension, screening.Controlled_Hypertension, screening.Controlled_Hypertension_and_Diabetes_Mellitus,
      screening.Confirmed_Hypertension_and_DiabetesMellitus]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
    series_column_widths:
      screening.citizen_district_name: 200
      screening.citizen_district_gid: 200
      screening.Total_screenings: 200
      screening.unique_screenings: 200
      screening.Confirmed_Diabetes_mellitus: 230
      screening.Confirmed_Hypertension: 200
      screening.Controlled_Hypertension: 200
      screening.Controlled_Hypertension_and_Diabetes_Mellitus: 200
      screening.Confirmed_Hypertension_and_DiabetesMellitus: 230
      screening.Controlled_Diabetes_Mellitus: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      mtm_beneficiary.Treatment_compliance_MTM_beneficiary: 230
      diseases.refferal_count: 200
      diseases.Compliance_count: 200
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      screening.unique_screenings:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_district_gid:
        align: center
      screening.Confirmed_Diabetes_mellitus:
        align: center
      screening.Confirmed_Hypertension:
        align: center
      screening.Controlled_Hypertension:
        align: center
      screening.Controlled_Hypertension_and_Diabetes_Mellitus:
        align: center
      screening.Confirmed_Hypertension_and_DiabetesMellitus:
        align: center
      screening.Controlled_Diabetes_Mellitus:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      mtm_beneficiary.Treatment_compliance_MTM_beneficiary:
        align: center
      diseases.refferal_count:
        align: center
      diseases.Compliance_count:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fdfcff"
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=485"
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
        label: Screening Unique Screenings
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
        view_label: Screening
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=416"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: Screening Confirmed Diabetes Mellitus
        label_from_parameter:
        label_short: Confirmed Diabetes Mellitus
        map_layer:
        name: screening.Confirmed_Diabetes_mellitus
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Diabetes_mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=598"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_dm_status
          condition: "%Known DM%"
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
        label: Screening Confirmed Hypertension
        label_from_parameter:
        label_short: Confirmed Hypertension
        map_layer:
        name: screening.Confirmed_Hypertension
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=609"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Known HT%"
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
        label: Screening Controlled Hypertension
        label_from_parameter:
        label_short: Controlled Hypertension
        map_layer:
        name: screening.Controlled_Hypertension
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
        field_group_variant: Controlled Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=645"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_ht_status
          condition: controlled
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
        label: Screening Controlled Both
        label_from_parameter:
        label_short: Controlled Both
        map_layer:
        name: screening.Controlled_Hypertension_and_Diabetes_Mellitus
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
        field_group_variant: Controlled Both
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Hypertension_and_Diabetes_Mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=657"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_dm_status
          condition: controlled
        - field: screening.citizen_dm_status
          condition: DM under control
        - field: screening.citizen_control_ht_status
          condition: controlled
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
        label: Screening Confirmed Both
        label_from_parameter:
        label_short: Confirmed Both
        map_layer:
        name: screening.Confirmed_Hypertension_and_DiabetesMellitus
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Both
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Hypertension_and_DiabetesMellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=620"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Known HT%"
        - field: screening.citizen_dm_status
          condition: "%Known DM%"
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
        label: Screening Controlled Diabetes Mellitus
        label_from_parameter:
        label_short: Controlled Diabetes Mellitus
        map_layer:
        name: screening.Controlled_Diabetes_Mellitus
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
        field_group_variant: Controlled Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Diabetes_Mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=633"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_dm_status
          condition: controlled
        - field: screening.citizen_dm_status
          condition: DM under control
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
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Mtm Beneficiary Treatment Compliance of MTM Beneficiary
        label_from_parameter:
        label_short: Treatment Compliance of MTM Beneficiary
        map_layer:
        name: mtm_beneficiary.Treatment_compliance_MTM_beneficiary
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Treatment Compliance of MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.Treatment_compliance_MTM_beneficiary
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=307"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        - field: mtm_beneficiary.is_compliance
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
        label: Diseases Refferal Count
        label_from_parameter:
        label_short: Refferal Count
        map_layer:
        name: diseases.refferal_count
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
        view: diseases
        view_label: Diseases
        dynamic: false
        week_start_day: monday
        original_view: diseases
        dimension_group:
        error:
        field_group_variant: Refferal Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: diseases
        suggest_dimension: diseases.refferal_count
        suggest_explore: diseases
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdiseases.view.lkml?line=259"
        permanent: true
        source_file: tnphr_views/diseases.view.lkml
        source_file_path: looker-tnphr/tnphr_views/diseases.view.lkml
        sql: "${TABLE}.total_screening_count  "
        sql_case:
        filters:
        - field: diseases.is_citizen_refferal
          condition: 'yes'
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
        label: Diseases Compliance Count
        label_from_parameter:
        label_short: Compliance Count
        map_layer:
        name: diseases.Compliance_count
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
        view: diseases
        view_label: Diseases
        dynamic: false
        week_start_day: monday
        original_view: diseases
        dimension_group:
        error:
        field_group_variant: Compliance Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: diseases
        suggest_dimension: diseases.Compliance_count
        suggest_explore: diseases
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdiseases.view.lkml?line=267"
        permanent: true
        source_file: tnphr_views/diseases.view.lkml
        source_file_path: looker-tnphr/tnphr_views/diseases.view.lkml
        sql: "${TABLE}.total_screening_count  "
        sql_case:
        filters:
        - field: diseases.is_citizen_compliance
          condition: 'yes'
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
        label: Screening Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: screening.citizen_district_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=42"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: screening.citizen_district_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=36"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.citizen_district_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations: []
      pivots: []
    listen:
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
    - Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Institution Directorate: diseases.user_directorate
      Institution District: diseases.user_district_name
      Institution Hud: diseases.user_hud_name
      Institution Block: diseases.user_block_name
    row: 21
    col: 0
    width: 24
    height: 12
  - title: Treatment Compliance of MTM Beneficiaries
    name: Treatment Compliance of MTM Beneficiaries
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: single_value
    fields: [mtm_beneficiary.Treatment_compliance_MTM_beneficiary, mtm_beneficiary.total_confirmed_MTM_beneficiary]
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
    custom_color: "#9334E6"
    comparison_label: Total Confirmed MTM Beneficiaries
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
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
    row: 4
    col: 5
    width: 7
    height: 6
  - title: Compliance of Referral
    name: Compliance of Referral
    model: tnphr-prod-kpi
    explore: diseases
    type: single_value
    fields: [diseases.Compliance_count, diseases.refferal_count]
    filters:
      diseases.screened_date: ''
      diseases.user_block_type: ''
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#9334E6"
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
      Institution District: diseases.user_district_name
      Institution Hud: diseases.user_hud_name
      Institution Block: diseases.user_block_name
    row: 4
    col: 19
    width: 5
    height: 6
  - name: Number of Referred
    title: Number of Referred
    merged_queries:
    - model: tnphr-prod-kpi
      explore: diseases
      type: single_value
      fields: [diseases.refferal_count]
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
      explore: screening
      type: table
      fields: [screening.Total_screenings]
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Total Screenings
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    listen:
    - Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Institution Directorate: diseases.user_directorate
      Institution District: diseases.user_district_name
      Institution Hud: diseases.user_hud_name
      Institution Block: diseases.user_block_name
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
    row: 4
    col: 12
    width: 7
    height: 6
  - name: Hud Wise
    title: Hud Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.Total_screenings, screening.unique_screenings,
        screening.Confirmed_Diabetes_mellitus, screening.Confirmed_Hypertension, screening.Controlled_Hypertension,
        screening.Controlled_Hypertension_and_Diabetes_Mellitus, screening.Confirmed_Hypertension_and_DiabetesMellitus,
        screening.Controlled_Diabetes_Mellitus, screening.citizen_district_gid, screening.citizen_hud_name,
        screening.citizen_hud_gid]
      sorts: [screening.Confirmed_Diabetes_mellitus desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.total_confirmed_MTM_beneficiary,
        mtm_beneficiary.Treatment_compliance_MTM_beneficiary, mtm_beneficiary.citizen_hud_name]
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
      limit: 5000
      column_limit: 50
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_name
        source_field_name: screening.citizen_district_name
      - field_name: mtm_beneficiary.citizen_hud_name
        source_field_name: screening.citizen_hud_name
    - model: tnphr-prod-kpi
      explore: diseases
      type: table
      fields: [diseases.citizen_district_name, diseases.refferal_count, diseases.Compliance_count,
        diseases.citizen_hud_name]
      sorts: [diseases.refferal_count desc]
      limit: 5000
      join_fields:
      - field_name: diseases.citizen_district_name
        source_field_name: screening.citizen_district_name
      - field_name: diseases.citizen_hud_name
        source_field_name: screening.citizen_hud_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.Total_screenings,
      screening.unique_screenings, mtm_beneficiary.total_confirmed_MTM_beneficiary,
      mtm_beneficiary.Treatment_compliance_MTM_beneficiary, diseases.refferal_count,
      diseases.Compliance_count, screening.Confirmed_Diabetes_mellitus, screening.Controlled_Diabetes_Mellitus,
      screening.Confirmed_Hypertension, screening.Controlled_Hypertension, screening.Controlled_Hypertension_and_Diabetes_Mellitus,
      screening.Confirmed_Hypertension_and_DiabetesMellitus]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
    series_column_widths:
      screening.citizen_district_name: 200
      screening.citizen_district_gid: 200
      screening.Total_screenings: 200
      screening.unique_screenings: 200
      screening.Confirmed_Diabetes_mellitus: 230
      screening.Confirmed_Hypertension: 200
      screening.Controlled_Hypertension: 200
      screening.Controlled_Hypertension_and_Diabetes_Mellitus: 200
      screening.Confirmed_Hypertension_and_DiabetesMellitus: 230
      screening.Controlled_Diabetes_Mellitus: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      mtm_beneficiary.Treatment_compliance_MTM_beneficiary: 230
      diseases.refferal_count: 200
      diseases.Compliance_count: 200
      screening.citizen_hud_gid: 200
      screening.citizen_hud_name: 200
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      screening.unique_screenings:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_district_gid:
        align: center
      screening.Confirmed_Diabetes_mellitus:
        align: center
      screening.Confirmed_Hypertension:
        align: center
      screening.Controlled_Hypertension:
        align: center
      screening.Controlled_Hypertension_and_Diabetes_Mellitus:
        align: center
      screening.Confirmed_Hypertension_and_DiabetesMellitus:
        align: center
      screening.Controlled_Diabetes_Mellitus:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      mtm_beneficiary.Treatment_compliance_MTM_beneficiary:
        align: center
      diseases.refferal_count:
        align: center
      diseases.Compliance_count:
        align: center
      screening.citizen_hud_name:
        align: center
      screening.citizen_hud_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fdfcff"
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=485"
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
        label: Screening Unique Screenings
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
        view_label: Screening
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=416"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: Screening Confirmed Diabetes Mellitus
        label_from_parameter:
        label_short: Confirmed Diabetes Mellitus
        map_layer:
        name: screening.Confirmed_Diabetes_mellitus
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Diabetes_mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=598"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_dm_status
          condition: "%Known DM%"
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
        label: Screening Confirmed Hypertension
        label_from_parameter:
        label_short: Confirmed Hypertension
        map_layer:
        name: screening.Confirmed_Hypertension
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=609"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Known HT%"
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
        label: Screening Controlled Hypertension
        label_from_parameter:
        label_short: Controlled Hypertension
        map_layer:
        name: screening.Controlled_Hypertension
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
        field_group_variant: Controlled Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=645"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_ht_status
          condition: controlled
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
        label: Screening Controlled Both
        label_from_parameter:
        label_short: Controlled Both
        map_layer:
        name: screening.Controlled_Hypertension_and_Diabetes_Mellitus
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
        field_group_variant: Controlled Both
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Hypertension_and_Diabetes_Mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=657"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_dm_status
          condition: controlled
        - field: screening.citizen_dm_status
          condition: DM under control
        - field: screening.citizen_control_ht_status
          condition: controlled
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
        label: Screening Confirmed Both
        label_from_parameter:
        label_short: Confirmed Both
        map_layer:
        name: screening.Confirmed_Hypertension_and_DiabetesMellitus
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Both
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Hypertension_and_DiabetesMellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=620"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Known HT%"
        - field: screening.citizen_dm_status
          condition: "%Known DM%"
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
        label: Screening Controlled Diabetes Mellitus
        label_from_parameter:
        label_short: Controlled Diabetes Mellitus
        map_layer:
        name: screening.Controlled_Diabetes_Mellitus
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
        field_group_variant: Controlled Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Diabetes_Mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=633"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_dm_status
          condition: controlled
        - field: screening.citizen_dm_status
          condition: DM under control
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
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Mtm Beneficiary Treatment Compliance of MTM Beneficiary
        label_from_parameter:
        label_short: Treatment Compliance of MTM Beneficiary
        map_layer:
        name: mtm_beneficiary.Treatment_compliance_MTM_beneficiary
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Treatment Compliance of MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.Treatment_compliance_MTM_beneficiary
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=307"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        - field: mtm_beneficiary.is_compliance
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
        label: Diseases Refferal Count
        label_from_parameter:
        label_short: Refferal Count
        map_layer:
        name: diseases.refferal_count
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
        view: diseases
        view_label: Diseases
        dynamic: false
        week_start_day: monday
        original_view: diseases
        dimension_group:
        error:
        field_group_variant: Refferal Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: diseases
        suggest_dimension: diseases.refferal_count
        suggest_explore: diseases
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdiseases.view.lkml?line=259"
        permanent: true
        source_file: tnphr_views/diseases.view.lkml
        source_file_path: looker-tnphr/tnphr_views/diseases.view.lkml
        sql: "${TABLE}.total_screening_count  "
        sql_case:
        filters:
        - field: diseases.is_citizen_refferal
          condition: 'yes'
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
        label: Diseases Compliance Count
        label_from_parameter:
        label_short: Compliance Count
        map_layer:
        name: diseases.Compliance_count
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
        view: diseases
        view_label: Diseases
        dynamic: false
        week_start_day: monday
        original_view: diseases
        dimension_group:
        error:
        field_group_variant: Compliance Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: diseases
        suggest_dimension: diseases.Compliance_count
        suggest_explore: diseases
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdiseases.view.lkml?line=267"
        permanent: true
        source_file: tnphr_views/diseases.view.lkml
        source_file_path: looker-tnphr/tnphr_views/diseases.view.lkml
        sql: "${TABLE}.total_screening_count  "
        sql_case:
        filters:
        - field: diseases.is_citizen_compliance
          condition: 'yes'
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
        label: Screening Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: screening.citizen_district_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=42"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: screening.citizen_district_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=36"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: screening.citizen_hud_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_hud_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=79"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: screening.citizen_hud_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_hud_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=73"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.citizen_hud_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations: []
      pivots: []
    listen:
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
    - Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Institution Directorate: diseases.user_directorate
      Institution District: diseases.user_district_name
      Institution Hud: diseases.user_hud_name
      Institution Block: diseases.user_block_name
    row: 33
    col: 0
    width: 24
    height: 12
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.Total_screenings, screening.unique_screenings,
        screening.Confirmed_Diabetes_mellitus, screening.Confirmed_Hypertension, screening.Controlled_Hypertension,
        screening.Controlled_Hypertension_and_Diabetes_Mellitus, screening.Confirmed_Hypertension_and_DiabetesMellitus,
        screening.Controlled_Diabetes_Mellitus, screening.citizen_district_gid, screening.citizen_hud_name,
        screening.citizen_hud_gid, screening.citizen_block_name, screening.citizen_block_gid]
      sorts: [screening.Confirmed_Diabetes_mellitus desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.total_confirmed_MTM_beneficiary,
        mtm_beneficiary.Treatment_compliance_MTM_beneficiary, mtm_beneficiary.citizen_hud_name,
        mtm_beneficiary.citizen_block_name]
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
      limit: 5000
      column_limit: 50
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_name
        source_field_name: screening.citizen_district_name
      - field_name: mtm_beneficiary.citizen_hud_name
        source_field_name: screening.citizen_hud_name
      - field_name: mtm_beneficiary.citizen_block_name
        source_field_name: screening.citizen_block_name
    - model: tnphr-prod-kpi
      explore: diseases
      type: table
      fields: [diseases.citizen_district_name, diseases.refferal_count, diseases.Compliance_count,
        diseases.citizen_hud_name, diseases.citizen_block_name]
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
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.citizen_block_name,
      screening.citizen_block_gid, screening.Total_screenings, screening.unique_screenings,
      mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.Treatment_compliance_MTM_beneficiary,
      diseases.refferal_count, diseases.Compliance_count, screening.Confirmed_Diabetes_mellitus,
      screening.Controlled_Diabetes_Mellitus, screening.Confirmed_Hypertension, screening.Controlled_Hypertension,
      screening.Controlled_Hypertension_and_Diabetes_Mellitus, screening.Confirmed_Hypertension_and_DiabetesMellitus]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
      screening.citizen_block_name: Community Block
      screening.citizen_block_gid: Community Block Gid
    series_column_widths:
      screening.citizen_district_name: 200
      screening.citizen_district_gid: 200
      screening.Total_screenings: 200
      screening.unique_screenings: 200
      screening.Confirmed_Diabetes_mellitus: 230
      screening.Confirmed_Hypertension: 200
      screening.Controlled_Hypertension: 200
      screening.Controlled_Hypertension_and_Diabetes_Mellitus: 200
      screening.Confirmed_Hypertension_and_DiabetesMellitus: 230
      screening.Controlled_Diabetes_Mellitus: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      mtm_beneficiary.Treatment_compliance_MTM_beneficiary: 230
      diseases.refferal_count: 200
      diseases.Compliance_count: 200
      screening.citizen_hud_gid: 200
      screening.citizen_hud_name: 200
      screening.citizen_block_gid: 200
      screening.citizen_block_name: 200
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      screening.unique_screenings:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_district_gid:
        align: center
      screening.Confirmed_Diabetes_mellitus:
        align: center
      screening.Confirmed_Hypertension:
        align: center
      screening.Controlled_Hypertension:
        align: center
      screening.Controlled_Hypertension_and_Diabetes_Mellitus:
        align: center
      screening.Confirmed_Hypertension_and_DiabetesMellitus:
        align: center
      screening.Controlled_Diabetes_Mellitus:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      mtm_beneficiary.Treatment_compliance_MTM_beneficiary:
        align: center
      diseases.refferal_count:
        align: center
      diseases.Compliance_count:
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
    header_font_color: "#fdfcff"
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=485"
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
        label: Screening Unique Screenings
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
        view_label: Screening
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=416"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: Screening Confirmed Diabetes Mellitus
        label_from_parameter:
        label_short: Confirmed Diabetes Mellitus
        map_layer:
        name: screening.Confirmed_Diabetes_mellitus
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Diabetes_mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=598"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_dm_status
          condition: "%Known DM%"
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
        label: Screening Confirmed Hypertension
        label_from_parameter:
        label_short: Confirmed Hypertension
        map_layer:
        name: screening.Confirmed_Hypertension
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=609"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Known HT%"
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
        label: Screening Controlled Hypertension
        label_from_parameter:
        label_short: Controlled Hypertension
        map_layer:
        name: screening.Controlled_Hypertension
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
        field_group_variant: Controlled Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=645"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_ht_status
          condition: controlled
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
        label: Screening Controlled Both
        label_from_parameter:
        label_short: Controlled Both
        map_layer:
        name: screening.Controlled_Hypertension_and_Diabetes_Mellitus
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
        field_group_variant: Controlled Both
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Hypertension_and_Diabetes_Mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=657"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_dm_status
          condition: controlled
        - field: screening.citizen_dm_status
          condition: DM under control
        - field: screening.citizen_control_ht_status
          condition: controlled
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
        label: Screening Confirmed Both
        label_from_parameter:
        label_short: Confirmed Both
        map_layer:
        name: screening.Confirmed_Hypertension_and_DiabetesMellitus
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Both
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Hypertension_and_DiabetesMellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=620"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Known HT%"
        - field: screening.citizen_dm_status
          condition: "%Known DM%"
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
        label: Screening Controlled Diabetes Mellitus
        label_from_parameter:
        label_short: Controlled Diabetes Mellitus
        map_layer:
        name: screening.Controlled_Diabetes_Mellitus
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
        field_group_variant: Controlled Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Diabetes_Mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=633"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_dm_status
          condition: controlled
        - field: screening.citizen_dm_status
          condition: DM under control
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
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Mtm Beneficiary Treatment Compliance of MTM Beneficiary
        label_from_parameter:
        label_short: Treatment Compliance of MTM Beneficiary
        map_layer:
        name: mtm_beneficiary.Treatment_compliance_MTM_beneficiary
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Treatment Compliance of MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.Treatment_compliance_MTM_beneficiary
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=307"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        - field: mtm_beneficiary.is_compliance
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
        label: Diseases Refferal Count
        label_from_parameter:
        label_short: Refferal Count
        map_layer:
        name: diseases.refferal_count
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
        view: diseases
        view_label: Diseases
        dynamic: false
        week_start_day: monday
        original_view: diseases
        dimension_group:
        error:
        field_group_variant: Refferal Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: diseases
        suggest_dimension: diseases.refferal_count
        suggest_explore: diseases
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdiseases.view.lkml?line=259"
        permanent: true
        source_file: tnphr_views/diseases.view.lkml
        source_file_path: looker-tnphr/tnphr_views/diseases.view.lkml
        sql: "${TABLE}.total_screening_count  "
        sql_case:
        filters:
        - field: diseases.is_citizen_refferal
          condition: 'yes'
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
        label: Diseases Compliance Count
        label_from_parameter:
        label_short: Compliance Count
        map_layer:
        name: diseases.Compliance_count
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
        view: diseases
        view_label: Diseases
        dynamic: false
        week_start_day: monday
        original_view: diseases
        dimension_group:
        error:
        field_group_variant: Compliance Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: diseases
        suggest_dimension: diseases.Compliance_count
        suggest_explore: diseases
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdiseases.view.lkml?line=267"
        permanent: true
        source_file: tnphr_views/diseases.view.lkml
        source_file_path: looker-tnphr/tnphr_views/diseases.view.lkml
        sql: "${TABLE}.total_screening_count  "
        sql_case:
        filters:
        - field: diseases.is_citizen_compliance
          condition: 'yes'
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
        label: Screening Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: screening.citizen_district_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=42"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: screening.citizen_district_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=36"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: screening.citizen_hud_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_hud_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=79"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: screening.citizen_hud_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_hud_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=73"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Block Name
        label_from_parameter:
        label_short: Citizen Block Name
        map_layer:
        name: screening.citizen_block_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_block_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=16"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Block Gid
        label_from_parameter:
        label_short: Citizen Block Gid
        map_layer:
        name: screening.citizen_block_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Block Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_block_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=10"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.citizen_block_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations: []
      pivots: []
    listen:
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
    - Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Institution Directorate: diseases.user_directorate
      Institution District: diseases.user_district_name
      Institution Hud: diseases.user_hud_name
      Institution Block: diseases.user_block_name
    row: 45
    col: 0
    width: 24
    height: 12
  - name: Village Wise
    title: Village Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.Total_screenings, screening.unique_screenings,
        screening.Confirmed_Diabetes_mellitus, screening.Confirmed_Hypertension, screening.Controlled_Hypertension,
        screening.Controlled_Hypertension_and_Diabetes_Mellitus, screening.Confirmed_Hypertension_and_DiabetesMellitus,
        screening.Controlled_Diabetes_Mellitus, screening.citizen_district_gid, screening.citizen_hud_name,
        screening.citizen_hud_gid, screening.citizen_block_name, screening.citizen_block_gid,
        screening.citizen_village_name, screening.citizen_village_gid]
      sorts: [screening.Confirmed_Diabetes_mellitus desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.total_confirmed_MTM_beneficiary,
        mtm_beneficiary.Treatment_compliance_MTM_beneficiary, mtm_beneficiary.citizen_hud_name,
        mtm_beneficiary.citizen_block_name, mtm_beneficiary.citizen_village_name]
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
      limit: 5000
      column_limit: 50
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_name
        source_field_name: screening.citizen_district_name
      - field_name: mtm_beneficiary.citizen_hud_name
        source_field_name: screening.citizen_hud_name
      - field_name: mtm_beneficiary.citizen_block_name
        source_field_name: screening.citizen_block_name
      - field_name: mtm_beneficiary.citizen_village_name
        source_field_name: screening.citizen_village_name
    - model: tnphr-prod-kpi
      explore: diseases
      type: table
      fields: [diseases.citizen_district_name, diseases.refferal_count, diseases.Compliance_count,
        diseases.citizen_hud_name, diseases.citizen_block_name, diseases.citizen_village_name]
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
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.citizen_block_name,
      screening.citizen_block_gid, screening.citizen_village_name, screening.citizen_village_gid,
      screening.Total_screenings, screening.unique_screenings, total_confirmed_mtm_beneficiaries,
      treatment_compliance_of_mtm_beneficiary, refferal_count, compliance_count, screening.Confirmed_Diabetes_mellitus,
      screening.Controlled_Diabetes_Mellitus, screening.Confirmed_Hypertension, screening.Controlled_Hypertension,
      screening.Controlled_Hypertension_and_Diabetes_Mellitus, screening.Confirmed_Hypertension_and_DiabetesMellitus]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
      screening.citizen_block_name: Community Block
      screening.citizen_block_gid: Community Block Gid
      screening.citizen_village_name: Community Village
      screening.citizen_village_gid: Community Village Gid
    series_column_widths:
      screening.citizen_district_name: 200
      screening.citizen_district_gid: 200
      screening.Total_screenings: 200
      screening.unique_screenings: 200
      screening.Confirmed_Diabetes_mellitus: 230
      screening.Confirmed_Hypertension: 200
      screening.Controlled_Hypertension: 200
      screening.Controlled_Hypertension_and_Diabetes_Mellitus: 200
      screening.Confirmed_Hypertension_and_DiabetesMellitus: 230
      screening.Controlled_Diabetes_Mellitus: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      mtm_beneficiary.Treatment_compliance_MTM_beneficiary: 230
      diseases.refferal_count: 200
      diseases.Compliance_count: 200
      screening.citizen_hud_gid: 200
      screening.citizen_hud_name: 200
      screening.citizen_block_gid: 200
      screening.citizen_block_name: 200
      screening.citizen_village_name: 200
      screening.citizen_village_gid: 200
      total_confirmed_mtm_beneficiaries: 230
      treatment_compliance_of_mtm_beneficiary: 230
      refferal_count: 200
      compliance_count: 200
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      screening.unique_screenings:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_district_gid:
        align: center
      screening.Confirmed_Diabetes_mellitus:
        align: center
      screening.Confirmed_Hypertension:
        align: center
      screening.Controlled_Hypertension:
        align: center
      screening.Controlled_Hypertension_and_Diabetes_Mellitus:
        align: center
      screening.Confirmed_Hypertension_and_DiabetesMellitus:
        align: center
      screening.Controlled_Diabetes_Mellitus:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      mtm_beneficiary.Treatment_compliance_MTM_beneficiary:
        align: center
      diseases.refferal_count:
        align: center
      diseases.Compliance_count:
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
      total_confirmed_mtm_beneficiaries:
        align: center
      treatment_compliance_of_mtm_beneficiary:
        align: center
      refferal_count:
        align: center
      compliance_count:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fdfcff"
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=485"
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
        label: Screening Unique Screenings
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
        view_label: Screening
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=416"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: Screening Confirmed Diabetes Mellitus
        label_from_parameter:
        label_short: Confirmed Diabetes Mellitus
        map_layer:
        name: screening.Confirmed_Diabetes_mellitus
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Diabetes_mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=598"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_dm_status
          condition: "%Known DM%"
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
        label: Screening Confirmed Hypertension
        label_from_parameter:
        label_short: Confirmed Hypertension
        map_layer:
        name: screening.Confirmed_Hypertension
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=609"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Known HT%"
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
        label: Screening Controlled Hypertension
        label_from_parameter:
        label_short: Controlled Hypertension
        map_layer:
        name: screening.Controlled_Hypertension
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
        field_group_variant: Controlled Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=645"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_ht_status
          condition: controlled
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
        label: Screening Controlled Both
        label_from_parameter:
        label_short: Controlled Both
        map_layer:
        name: screening.Controlled_Hypertension_and_Diabetes_Mellitus
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
        field_group_variant: Controlled Both
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Hypertension_and_Diabetes_Mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=657"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_dm_status
          condition: controlled
        - field: screening.citizen_dm_status
          condition: DM under control
        - field: screening.citizen_control_ht_status
          condition: controlled
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
        label: Screening Confirmed Both
        label_from_parameter:
        label_short: Confirmed Both
        map_layer:
        name: screening.Confirmed_Hypertension_and_DiabetesMellitus
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Both
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Hypertension_and_DiabetesMellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=620"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Known HT%"
        - field: screening.citizen_dm_status
          condition: "%Known DM%"
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
        label: Screening Controlled Diabetes Mellitus
        label_from_parameter:
        label_short: Controlled Diabetes Mellitus
        map_layer:
        name: screening.Controlled_Diabetes_Mellitus
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
        field_group_variant: Controlled Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Diabetes_Mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=633"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_dm_status
          condition: controlled
        - field: screening.citizen_dm_status
          condition: DM under control
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
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Mtm Beneficiary Treatment Compliance of MTM Beneficiary
        label_from_parameter:
        label_short: Treatment Compliance of MTM Beneficiary
        map_layer:
        name: mtm_beneficiary.Treatment_compliance_MTM_beneficiary
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Treatment Compliance of MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.Treatment_compliance_MTM_beneficiary
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=307"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        - field: mtm_beneficiary.is_compliance
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
        label: Diseases Refferal Count
        label_from_parameter:
        label_short: Refferal Count
        map_layer:
        name: diseases.refferal_count
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
        view: diseases
        view_label: Diseases
        dynamic: false
        week_start_day: monday
        original_view: diseases
        dimension_group:
        error:
        field_group_variant: Refferal Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: diseases
        suggest_dimension: diseases.refferal_count
        suggest_explore: diseases
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdiseases.view.lkml?line=259"
        permanent: true
        source_file: tnphr_views/diseases.view.lkml
        source_file_path: looker-tnphr/tnphr_views/diseases.view.lkml
        sql: "${TABLE}.total_screening_count  "
        sql_case:
        filters:
        - field: diseases.is_citizen_refferal
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
        label: Diseases Compliance Count
        label_from_parameter:
        label_short: Compliance Count
        map_layer:
        name: diseases.Compliance_count
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
        view: diseases
        view_label: Diseases
        dynamic: false
        week_start_day: monday
        original_view: diseases
        dimension_group:
        error:
        field_group_variant: Compliance Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: diseases
        suggest_dimension: diseases.Compliance_count
        suggest_explore: diseases
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdiseases.view.lkml?line=267"
        permanent: true
        source_file: tnphr_views/diseases.view.lkml
        source_file_path: looker-tnphr/tnphr_views/diseases.view.lkml
        sql: "${TABLE}.total_screening_count  "
        sql_case:
        filters:
        - field: diseases.is_citizen_compliance
          condition: 'yes'
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
        label: Screening Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: screening.citizen_district_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=42"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: screening.citizen_district_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=36"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: screening.citizen_hud_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_hud_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=79"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: screening.citizen_hud_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_hud_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=73"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Block Name
        label_from_parameter:
        label_short: Citizen Block Name
        map_layer:
        name: screening.citizen_block_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_block_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=16"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Block Gid
        label_from_parameter:
        label_short: Citizen Block Gid
        map_layer:
        name: screening.citizen_block_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Block Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_block_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=10"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Village Name
        label_from_parameter:
        label_short: Citizen Village Name
        map_layer:
        name: screening.citizen_village_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Village Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_village_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=133"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Village Gid
        label_from_parameter:
        label_short: Citizen Village Gid
        map_layer:
        name: screening.citizen_village_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Village Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_village_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=127"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.citizen_village_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Total confirmed MTM Beneficiaries
        name: total_confirmed_mtm_beneficiaries
        expression: if(is_null(${mtm_beneficiary.total_confirmed_MTM_beneficiary}),0,${mtm_beneficiary.total_confirmed_MTM_beneficiary})
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Treatment compliance of MTM Beneficiary
        name: treatment_compliance_of_mtm_beneficiary
        expression: if(is_null(${mtm_beneficiary.Treatment_compliance_MTM_beneficiary}),0,${mtm_beneficiary.Treatment_compliance_MTM_beneficiary})
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Refferal Count
        name: refferal_count
        expression: if(is_null(${diseases.refferal_count}),0,${diseases.refferal_count})
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Compliance Count
        name: compliance_count
        expression: if(is_null(${diseases.Compliance_count}),0,${diseases.Compliance_count})
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      pivots: []
    hidden_fields: [mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.Treatment_compliance_MTM_beneficiary,
      diseases.refferal_count, diseases.Compliance_count]
    sorts: [total_confirmed_mtm_beneficiaries desc]
    dynamic_fields: [{category: table_calculation, expression: 'if(is_null(${mtm_beneficiary.total_confirmed_MTM_beneficiary}),0,${mtm_beneficiary.total_confirmed_MTM_beneficiary})',
        label: Total confirmed MTM Beneficiaries, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_confirmed_mtm_beneficiaries,
        _type_hint: number}, {category: table_calculation, expression: 'if(is_null(${mtm_beneficiary.Treatment_compliance_MTM_beneficiary}),0,${mtm_beneficiary.Treatment_compliance_MTM_beneficiary})',
        label: Treatment compliance of MTM Beneficiary, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: treatment_compliance_of_mtm_beneficiary,
        _type_hint: number}, {category: table_calculation, expression: 'if(is_null(${diseases.refferal_count}),0,${diseases.refferal_count})',
        label: Refferal Count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: refferal_count, _type_hint: number},
      {category: table_calculation, expression: 'if(is_null(${diseases.Compliance_count}),0,${diseases.Compliance_count})',
        label: Compliance Count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: compliance_count, _type_hint: number}]
    listen:
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Village: screening.citizen_village_name
      Institution Directorate: screening.user_directorate
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Village: mtm_beneficiary.citizen_village_name
      Institution Directorate: mtm_beneficiary.user_directorate
      Institution District: mtm_beneficiary.user_district_name
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
    - Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Village: diseases.citizen_village_name
      Institution Directorate: diseases.user_directorate
      Institution District: diseases.user_district_name
      Institution Hud: diseases.user_hud_name
      Institution Block: diseases.user_block_name
    row: 57
    col: 0
    width: 24
    height: 12
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
    listens_to_filters: [Community Village, Community Hud, Community Block]
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
    listens_to_filters: [Community Village, Community District, Community Block]
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
    listens_to_filters: [Community Village, Community Hud, Community District]
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
    listens_to_filters: [Community Hud, Community District, Community Block]
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
    listens_to_filters: [Institution Block, Institution Hud, Institution Directorate]
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
    listens_to_filters: [Institution Block, Institution District, Institution Directorate]
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
    listens_to_filters: [Institution District, Institution Hud, Institution Directorate]
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
    listens_to_filters: [Institution Block, Institution District, Institution Hud]
    field: screening.user_directorate
