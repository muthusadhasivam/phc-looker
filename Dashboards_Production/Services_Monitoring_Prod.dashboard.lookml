- dashboard: services_monitoring_prod
  title: Services Monitoring v1.0.3 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: rBF5RPSretFwsgQgH02xsj
  elements:
  - title: Drug Quantity issued in last 30 day
    name: Drug Quantity issued in last 30 day
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening__drugs.health_screening__drugs_drug_id, health_screening__drugs.health_screening__drugs_drug_type,
      health_screening__drugs.health_screening__drugs_quantity]
    filters:
      health_screening__drugs.health_screening__drugs_quantity: NOT NULL
    sorts: [health_screening__drugs.health_screening__drugs_quantity desc]
    limit: 5000
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
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of total Drugs received by a member (Counted
      as multiple even if the member received a drug multiple times) within 30 days.
    listen:
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
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
    filters: {}
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
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of lab tests done by the members (Counted as
      once even if the member had gone through multiple tests) in last 30 days
    listen:
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
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
      health_screening__update_register.health_screening__update_register_user_id: ''
    limit: 5000
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
    note_state: collapsed
    note_display: hover
    note_text: Average of the total screenings (even if there are multiple screenings
      per member) done per user in last 30 days
    listen:
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
    row: 3
    col: 12
    width: 6
    height: 3
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [health_screening.Lab_test_count, health_screening.screening_count,
        health_screening__update_register.User_count, health_screening.district_name]
      filters:
        health_screening.district_name: "-EMPTY"
      sorts: [health_screening.screening_count desc]
      limit: 5000
      dynamic_fields: [{table_calculation: screening_count_per_user, label: Screening
            count per user, expression: "${health_screening.screening_count}/${health_screening__update_register.User_count}",
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
      hidden_fields: []
      series_types: {}
    - model: tnphr
      explore: family_member_master
      type: looker_column
      fields: [health_screening.street_count, health_screening.district_name]
      sorts: [health_screening.street_count desc]
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
      join_fields:
      - field_name: health_screening.district_name
        source_field_name: health_screening.district_name
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
      health_screening.Lab_test_count: Lab Tests
      health_screening.screening_count: Screenings
      screening_count_per_user: Screenings per user
      health_screening.district_name: Districts
    series_cell_visualizations:
      health_screening.Lab_test_count:
        is_active: false
    series_text_format:
      health_screening.Lab_test_count:
        align: center
      health_screening.screening_count:
        align: center
      health_screening__update_register.User_count:
        align: center
      screening_count_per_user:
        align: center
      health_screening.street_count:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [health_screening__update_register.User_count]
    hide_totals: false
    hide_row_totals: false
    series_column_widths: {}
    query_fields:
      measures:
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1606"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.lab_test_id
          condition: "-NULL"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1096"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        sorted:
          sort_index: 0
          desc: true
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1785"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${health_screening__update_register_user_id} "
        sql_case:
        filters:
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
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1612"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${street_id} "
        sql_case:
        filters:
        sorted:
          sort_index: 0
          desc: true
        aggregate: true
      dimensions:
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Health Screening District Name
        label_from_parameter:
        label_short: District Name
        map_layer:
        name: health_screening.district_name
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.district_name
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=136"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.district_name"
        sql_case:
        filters:
      table_calculations: []
      pivots: []
    listen:
    - Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
    - Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
    row: 18
    col: 0
    width: 24
    height: 7
  - name: HUD Wise
    title: HUD Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [health_screening.Lab_test_count, health_screening.screening_count,
        health_screening__update_register.User_count, health_screening.hud_name]
      filters:
        address_district_master.district_name: "-EMPTY"
      sorts: [health_screening.screening_count desc]
      limit: 5000
      dynamic_fields: [{table_calculation: screening_count_per_user, label: Screening
            count per user, expression: "${health_screening.screening_count}/${health_screening__update_register.User_count}",
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
      hidden_fields: []
      series_types: {}
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.street_count, health_screening.hud_name]
      sorts: [health_screening.street_count desc]
      limit: 500
      join_fields:
      - field_name: health_screening.hud_name
        source_field_name: health_screening.hud_name
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
      health_screening.Lab_test_count: Lab Tests
      health_screening.screening_count: Screenings
      screening_count_per_user: Screenings per user
      health_screening.hud_name: HUDs
    series_cell_visualizations:
      health_screening.Lab_test_count:
        is_active: false
    series_text_format:
      health_screening.Lab_test_count:
        align: center
      health_screening.screening_count:
        align: center
      health_screening__update_register.User_count:
        align: center
      screening_count_per_user:
        align: center
      health_screening.street_count:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [health_screening__update_register.User_count]
    listen:
    - Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
    - Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
    row: 25
    col: 0
    width: 24
    height: 7
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [health_screening.Lab_test_count, health_screening.screening_count,
        health_screening__update_register.User_count, health_screening.block_name]
      filters:
        address_district_master.district_name: "-EMPTY"
      sorts: [health_screening.screening_count desc]
      limit: 5000
      dynamic_fields: [{table_calculation: screening_count_per_user, label: Screening
            count per user, expression: "${health_screening.screening_count}/${health_screening__update_register.User_count}",
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
      hidden_fields: []
      series_types: {}
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.street_count, health_screening.block_name]
      sorts: [health_screening.street_count desc]
      limit: 5000
      join_fields:
      - field_name: health_screening.block_name
        source_field_name: health_screening.block_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      health_screening.Lab_test_count:
        is_active: false
    series_text_format:
      health_screening.Lab_test_count:
        align: center
      health_screening.screening_count:
        align: center
      health_screening__update_register.User_count:
        align: center
      screening_count_per_user:
        align: center
      health_screening.street_count:
        align: center
      street_count:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [health_screening__update_register.User_count, health_screening.street_count]
    dynamic_fields: [{category: table_calculation, expression: 'if(${health_screening.street_count}>0,${health_screening.street_count},0)',
        label: Street Count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: street_count, _type_hint: number}]
    listen:
    - Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
    - Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
    row: 32
    col: 0
    width: 24
    height: 7
  - title: Street names with Screening count
    name: Street names with Screening count
    model: tnphr
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
    note_state: collapsed
    note_display: hover
    note_text: This includes the streets where members got screened (even if there
      are multiple screenings per member)
    listen:
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
    row: 9
    col: 0
    width: 24
    height: 9
  - title: New Tile
    name: New Tile
    model: tnphr
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
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of streets where no services are delivered
    listen:
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
    row: 3
    col: 18
    width: 6
    height: 3
  - title: New Tile
    name: New Tile (2)
    model: tnphr
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
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of streets where services are delivered
    listen:
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
    row: 6
    col: 8
    width: 8
    height: 3
  - title: Street Count which services are not delivered in last 90 days
    name: Street Count which services are not delivered in last 90 days
    model: tnphr
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
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of streets where no services were delivered
      in last 90 days
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
    row: 6
    col: 0
    width: 8
    height: 3
  - title: Streets with no screenings in last 90 days
    name: Streets with no screenings in last 90 days
    model: tnphr
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
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of streets where no member got screened in
      last 90 days
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
      Huds: family_member_master.hud_name
      Toggle Role: health_screening.role_toggle
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
    model: tnphr
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
      display: inline
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
      display: inline
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
      display: inline
      options: []
    model: tnphr
    explore: family_member_master
    listens_to_filters: [Districts, Huds]
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
    model: tnphr
    explore: facility_registry
    listens_to_filters: []
    field: facility_directorate_master.directorate_name
  - name: Toggle Role
    title: Toggle Role
    type: field_filter
    default_value: Residence
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.role_toggle
