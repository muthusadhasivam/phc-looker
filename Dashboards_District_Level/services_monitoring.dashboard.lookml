- dashboard: services_monitoring_d
  title: Services Monitoring D
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Street names with Screening count
    name: Street names with Screening count
    model: tnphr_district_level
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.street_name, health_screening.screening_count]
    sorts: [health_screening.screening_count desc]
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
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      health_screening.screening_count:
        is_active: true
    header_background_color: "#1A73E8"
    defaults_version: 1
    listen:
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    row: 26
    col: 0
    width: 24
    height: 9
  - title: New Tile
    name: New Tile
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.street_count]
    filters:
      health_screening.services_name: 'NULL'
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
    custom_color: "#1A73E8"
    single_value_title: Streets with undelivered services
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
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    row: 3
    col: 18
    width: 6
    height: 3
  - title: New Tile
    name: New Tile (2)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.street_count]
    filters:
      health_screening.services_name: "-NULL"
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
    custom_color: "#1A73E8"
    single_value_title: No.of streets which are delivered Services
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    row: 6
    col: 8
    width: 8
    height: 3
  - title: Street Count which services are not delivered in last 90 days
    name: Street Count which services are not delivered in last 90 days
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.street_count]
    filters:
      health_screening.services_name: 'NULL'
      health_screening.last_update_date: 90 days
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
    custom_color: "#1A73E8"
    single_value_title: Streets with undelivered services in last 90 days
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
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    row: 6
    col: 0
    width: 8
    height: 3
  - title: Streets with no screenings in last 90 days
    name: Streets with no screenings in last 90 days
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [address_street_master.street_name]
    filters:
      health_screening.screening_count: "<1"
      address_street_master.last_update_date: 90 days
    sorts: [address_street_master.street_name]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'count(${address_street_master.street_name})',
        label: New Calculation, value_format: !!null '', value_format_name: '', _kind_hint: dimension,
        table_calculation: new_calculation, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
    conditional_formatting: [{type: less than, value: 0, background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
    hidden_fields: [address_street_master.street_name]
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
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
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    row: 6
    col: 16
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
  - title: Drug Quantity issued in last 30 day
    name: Drug Quantity issued in last 30 day
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening__drugs.health_screening__drugs_drug_id, health_screening__drugs.health_screening__drugs_drug_type,
      health_screening__drugs.health_screening__drugs_quantity]
    filters:
      health_screening.last_update_date: 30 days
      health_screening__drugs.health_screening__drugs_quantity: NOT NULL
      facility_directorate_master.directorate_name: ''
      family_member_master.district_name: Villupuram
      family_member_master.block_name: ''
      family_member_master.hud_name: ''
      health_screening.role_toggle: ''
    sorts: [health_screening__drugs.health_screening__drugs_quantity desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'sum(${health_screening__drugs.health_screening__drugs_quantity})',
        label: drugs, value_format: !!null '', value_format_name: decimal_0, _kind_hint: dimension,
        table_calculation: drugs, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
    hidden_fields: [health_screening__drugs.health_screening__drugs_drug_id, health_screening__drugs.health_screening__drugs_drug_type,
      health_screening__drugs.health_screening__drugs_quantity]
    series_types: {}
    listen: {}
    row: 3
    col: 0
    width: 6
    height: 3
  - title: Lab Tests in last 30 days
    name: Lab Tests in last 30 days
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Lab_test_count]
    filters:
      health_screening.last_update_date: 30 days
      facility_directorate_master.directorate_name: ''
      family_member_master.district_name: Villupuram
      family_member_master.block_name: ''
      family_member_master.hud_name: ''
      health_screening.role_toggle: ''
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
    custom_color: "#1A73E8"
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
    listen: {}
    row: 3
    col: 6
    width: 6
    height: 3
  - title: Screenings per user in Last 30 days
    name: Screenings per user in Last 30 days
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.screening_count, health_screening__update_register.User_count]
    filters:
      health_screening.last_update_date: 30 days
      health_screening__update_register.health_screening__update_register_user_id: ''
      facility_directorate_master.directorate_name: ''
      family_member_master.district_name: Villupuram
      family_member_master.block_name: ''
      family_member_master.hud_name: ''
      health_screening.role_toggle: ''
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: screening_per_user, label: Screening per
          user, expression: "${health_screening.screening_count}/${health_screening__update_register.User_count}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
    custom_color: "#1A73E8"
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
    hidden_fields: [health_screening.screening_count, health_screening__update_register.User_count]
    series_types: {}
    listen: {}
    row: 3
    col: 12
    width: 6
    height: 3
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Lab_test_count, health_screening.screening_count,
        health_screening__update_register.User_count, family_member_master.district_name]
      filters:
        health_screening.last_update_date: 30 days
      sorts: [health_screening.screening_count desc]
      limit: 5000
      dynamic_fields: [{table_calculation: screening_count_per_user, label: Screening
            count per user, expression: "${health_screening.screening_count}/${health_screening__update_register.User_count}",
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}]
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
        health_screening.Lab_test_count:
          is_active: false
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      defaults_version: 1
      hidden_fields: []
      series_types: {}
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [family_member_master.district_name, health_screening.street_count]
      filters:
        health_screening.services_name: 'NULL'
        health_screening.last_update_date: 90 days
      sorts: [health_screening.street_count desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
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
      health_screening.Lab_test_count: Lab Tests in last 30 days
      health_screening.screening_count: Total Screenings
      screening_count_per_user: Screenings per user in last 30 days
      health_screening.street_count: Street Count with undelivered services in last
        90 days
    series_column_widths:
      family_member_master.district_name: 225
    series_cell_visualizations:
      health_screening.Lab_test_count:
        is_active: false
    series_text_format:
      family_member_master.district_name:
        align: center
      health_screening.Lab_test_count:
        align: center
      health_screening.screening_count:
        align: center
      screening_count_per_user:
        align: center
      health_screening.street_count:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffff8"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
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
        label: Health Screening Lab Test Count
        label_from_parameter:
        label_short: Lab Test Count
        map_layer:
        name: health_screening.Lab_test_count
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
        field_group_variant: Lab Test Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Lab_test_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1849"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.lab_test_id
          condition: "-NULL"
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
        label: Health Screening Screening Count
        label_from_parameter:
        label_short: Screening Count
        map_layer:
        name: health_screening.screening_count
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
        field_group_variant: Screening Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.screening_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1336"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
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
        label: 'Health Screening: Update Register User Count'
        label_from_parameter:
        label_short: User Count
        map_layer:
        name: health_screening__update_register.User_count
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
        view: health_screening__update_register
        view_label: 'Health Screening: Update Register'
        dynamic: false
        week_start_day: monday
        original_view: health_screening__update_register
        dimension_group:
        error:
        field_group_variant: User Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening__update_register
        suggest_dimension: health_screening__update_register.User_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=2026"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${health_screening__update_register_user_id} "
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: screening_count_per_user
        label: Screening count per user
        value_format: "#,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
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
        label: Health Screening Street Count
        label_from_parameter:
        label_short: Street Count
        map_layer:
        name: health_screening.street_count
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
        field_group_variant: Street Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.street_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1855"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${street_id} "
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
        label: Family member Master District Name
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
        view_label: Family member Master
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
      table_calculations: []
      pivots: []
    hidden_fields: [health_screening__update_register.User_count]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    row: 9
    col: 0
    width: 24
    height: 5
  - name: HUD Wise
    title: HUD Wise
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Lab_test_count, health_screening.screening_count,
        health_screening__update_register.User_count, family_member_master.hud_name]
      filters:
        health_screening.last_update_date: 30 days
      sorts: [health_screening.screening_count desc]
      limit: 5000
      dynamic_fields: [{table_calculation: screening_count_per_user, label: Screening
            count per user, expression: "${health_screening.screening_count}/${health_screening__update_register.User_count}",
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}]
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
        health_screening.Lab_test_count:
          is_active: false
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      defaults_version: 1
      hidden_fields: []
      series_types: {}
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.street_count, family_member_master.hud_name]
      filters:
        health_screening.services_name: 'NULL'
        health_screening.last_update_date: 90 days
      sorts: [health_screening.street_count desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
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
      health_screening.Lab_test_count: Lab Tests in last 30 days
      health_screening.screening_count: Total Screenings
      screening_count_per_user: Screenings per user in last 30 days
      health_screening.street_count: Street Count with undelivered services in last
        90 days
    series_column_widths:
      family_member_master.district_name: 225
    series_cell_visualizations:
      health_screening.Lab_test_count:
        is_active: false
    series_text_format:
      family_member_master.district_name:
        align: center
      health_screening.Lab_test_count:
        align: center
      health_screening.screening_count:
        align: center
      screening_count_per_user:
        align: center
      health_screening.street_count:
        align: center
      family_member_master.hud_name:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffff8"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
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
        label: Health Screening Lab Test Count
        label_from_parameter:
        label_short: Lab Test Count
        map_layer:
        name: health_screening.Lab_test_count
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
        field_group_variant: Lab Test Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Lab_test_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1849"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.lab_test_id
          condition: "-NULL"
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
        label: Health Screening Screening Count
        label_from_parameter:
        label_short: Screening Count
        map_layer:
        name: health_screening.screening_count
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
        field_group_variant: Screening Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.screening_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1336"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
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
        label: 'Health Screening: Update Register User Count'
        label_from_parameter:
        label_short: User Count
        map_layer:
        name: health_screening__update_register.User_count
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
        view: health_screening__update_register
        view_label: 'Health Screening: Update Register'
        dynamic: false
        week_start_day: monday
        original_view: health_screening__update_register
        dimension_group:
        error:
        field_group_variant: User Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening__update_register
        suggest_dimension: health_screening__update_register.User_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=2026"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${health_screening__update_register_user_id} "
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: screening_count_per_user
        label: Screening count per user
        value_format: "#,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
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
        label: Health Screening Street Count
        label_from_parameter:
        label_short: Street Count
        map_layer:
        name: health_screening.street_count
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
        field_group_variant: Street Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.street_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1855"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${street_id} "
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
        label: Family member Master District Name
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
        view_label: Family member Master
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
      table_calculations: []
      pivots: []
    hidden_fields: [health_screening__update_register.User_count]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    row: 14
    col: 0
    width: 24
    height: 5
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Lab_test_count, health_screening.screening_count,
        health_screening__update_register.User_count, family_member_master.block_name]
      filters:
        health_screening.last_update_date: 30 days
      sorts: [health_screening.screening_count desc]
      limit: 5000
      dynamic_fields: [{table_calculation: screening_count_per_user, label: Screening
            count per user, expression: "${health_screening.screening_count}/${health_screening__update_register.User_count}",
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}]
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
        health_screening.Lab_test_count:
          is_active: false
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      defaults_version: 1
      hidden_fields: []
      series_types: {}
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.street_count, family_member_master.block_name]
      filters:
        health_screening.services_name: 'NULL'
        health_screening.last_update_date: 90 days
      sorts: [health_screening.street_count desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
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
      health_screening.Lab_test_count: Lab Tests in last 30 days
      health_screening.screening_count: Total Screenings
      screening_count_per_user: Screenings per user in last 30 days
      health_screening.street_count: Street Count with undelivered services in last
        90 days
    series_column_widths:
      family_member_master.district_name: 225
    series_cell_visualizations:
      health_screening.Lab_test_count:
        is_active: false
    series_text_format:
      family_member_master.district_name:
        align: center
      health_screening.Lab_test_count:
        align: center
      health_screening.screening_count:
        align: center
      screening_count_per_user:
        align: center
      health_screening.street_count:
        align: center
      family_member_master.hud_name:
        align: center
      family_member_master.block_name:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffff8"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
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
        label: Health Screening Lab Test Count
        label_from_parameter:
        label_short: Lab Test Count
        map_layer:
        name: health_screening.Lab_test_count
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
        field_group_variant: Lab Test Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Lab_test_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1849"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.lab_test_id
          condition: "-NULL"
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
        label: Health Screening Screening Count
        label_from_parameter:
        label_short: Screening Count
        map_layer:
        name: health_screening.screening_count
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
        field_group_variant: Screening Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.screening_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1336"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
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
        label: 'Health Screening: Update Register User Count'
        label_from_parameter:
        label_short: User Count
        map_layer:
        name: health_screening__update_register.User_count
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
        view: health_screening__update_register
        view_label: 'Health Screening: Update Register'
        dynamic: false
        week_start_day: monday
        original_view: health_screening__update_register
        dimension_group:
        error:
        field_group_variant: User Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening__update_register
        suggest_dimension: health_screening__update_register.User_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=2026"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${health_screening__update_register_user_id} "
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: screening_count_per_user
        label: Screening count per user
        value_format: "#,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
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
        label: Health Screening Street Count
        label_from_parameter:
        label_short: Street Count
        map_layer:
        name: health_screening.street_count
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
        field_group_variant: Street Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.street_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1855"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${street_id} "
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
        label: Family member Master District Name
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
        view_label: Family member Master
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
      table_calculations: []
      pivots: []
    hidden_fields: [health_screening__update_register.User_count]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    row: 19
    col: 0
    width: 24
    height: 7
  filters:
  - name: Last Update Date
    title: Last Update Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tnphr_district_level
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.last_update_date
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
    model: tnphr_district_level
    explore: family_member_master
    listens_to_filters: []
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
    model: tnphr_district_level
    explore: family_member_master
    listens_to_filters: []
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
    model: tnphr_district_level
    explore: family_member_master
    listens_to_filters: []
    field: family_member_master.block_name
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
    model: tnphr_district_level
    explore: facility_registry
    listens_to_filters: []
    field: facility_directorate_master.directorate_name
