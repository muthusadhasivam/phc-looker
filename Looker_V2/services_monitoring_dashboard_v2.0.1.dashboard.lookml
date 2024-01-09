- dashboard: services_monitoring_v2_0_1
  title: Services Monitoring v2.0.1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Ngo6AThfmOmjngPfEAmV38
  elements:
  - name: Screening  Per user (Last 30 days)
    title: Screening  Per user (Last 30 days)
    merged_queries:
    - model: tnphr-prod-kpi
      explore: user
      type: table
      fields: [user.count]
      filters:
        user.user_created_date: 30 days
      sorts: [user.count desc]
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.Total_screenings]
      filters:
        screening.screened_date: 30 days
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '""',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    type: single_value
    hidden_fields: [user.count, screening.Total_screenings, calculation_1]
    series_types: {}
    dynamic_fields: [{category: table_calculation, expression: "${screening.Total_screenings}/${user.count}",
        label: Screening  per User, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: screening_per_user, _type_hint: number}]
    listen:
    - Institution District: user.user_district_name
      Institution Block: user.user_block_name
      Institution Hud: user.user_hud_name
      Institution Directorate: user.user_directorate
    - Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community District: screening.citizen_district_name
      Institution District: screening.user_district_name
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution Directorate: screening.user_directorate
    row: 4
    col: 11
    width: 6
    height: 3
  - title: Street names with Screening count
    name: Street names with Screening count
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.citizen_street_name, screening.Total_screenings, screening.citizen_street_gid]
    sorts: [screening.Total_screenings desc]
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
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: false
    series_text_format:
      screening.citizen_street_name:
        align: center
      screening.citizen_street_gid:
        align: center
      screening.Total_screenings:
        align: center
    header_font_color: "#fcfff9"
    header_background_color: "#1A73E8"
    defaults_version: 1
    listen:
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community District: screening.citizen_district_name
      Institution District: screening.user_district_name
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution Directorate: screening.user_directorate
    row: 10
    col: 0
    width: 24
    height: 6
  - title: Lab Tests in last 30 days
    name: Lab Tests in last 30 days
    model: tnphr-prod-kpi
    explore: lab_test
    type: single_value
    fields: [lab_test.lab_tests_30_days]
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
      Community Hud: lab_test.citizen_hud_name
      Community Block: lab_test.citizen_block_name
      Community District: lab_test.citizen_district_name
      Institution District: lab_test.user_district_name
      Institution Block: lab_test.user_block_name
      Institution Hud: lab_test.user_hud_name
      Institution Directorate: lab_test.user_directorate
    row: 4
    col: 6
    width: 5
    height: 3
  - title: Drug Quantity issued in last 30 day
    name: Drug Quantity issued in last 30 day
    model: tnphr-prod-kpi
    explore: drugs
    type: single_value
    fields: [drugs.total_drugs_issued_30_days]
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
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
      Community District: drugs.citizen_district_name
      Institution District: drugs.user_district_name
      Institution Block: drugs.user_block_name
      Institution Hud: drugs.user_hud_name
      Institution Directorate: drugs.user_directorate
    row: 4
    col: 0
    width: 6
    height: 3
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
      <center>Services Monitoring - Use to understand the number of drugs issued, lab tests conducted, streets with delivered and undelivered services in TN</center>
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
      fields: [screening.citizen_district_name, screening.Total_screenings, screening.citizen_district_gid,
        screening.Street_count_undelivered_services, screening.Street_count_undelivered_services_90_days,
        screening.Street_count_delivered_services, screening.Street_count_no_screening_90_days]
      sorts: [screening.Total_screenings desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: lab_test
      type: table
      fields: [lab_test.citizen_district_name, lab_test.total_lab_tests, lab_test.lab_tests_30_days]
      sorts: [lab_test.total_lab_tests desc]
      limit: 5000
      join_fields:
      - field_name: lab_test.citizen_district_name
        source_field_name: screening.citizen_district_name
    - model: tnphr-prod-kpi
      explore: user
      type: looker_column
      fields: [user.count, user.user_district_name]
      sorts: [user.count desc]
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
      - field_name: user.user_district_name
        source_field_name: screening.citizen_district_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.Total_screenings, lab_test.total_lab_tests, lab_test.lab_tests_30_days,
      services.Street_count_undelivered_services, services.Street_count_undelivered_services_90_days,
      services.Street_count_delivered_services, services.Street_count_no_screening_90_days,
      screenings_per_user]
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
      screening.Street_count_undelivered_services: 200
      screening.Street_count_undelivered_services_90_days: 200
      screening.Street_count_delivered_services: 200
      lab_test.total_lab_tests: 200
      lab_test.lab_tests_30_days: 200
      screenings_per_user: 200
      screening.Street_count_no_screening_90_days: 230
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      lab_test.count:
        align: center
      population.Street_count:
        align: center
      screening_per_user:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_district_gid:
        align: center
      lab_test.total_lab_tests:
        align: center
      lab_test.lab_tests_30_days:
        align: center
      services.Street_count_undelivered_services:
        align: center
      services.Street_count_undelivered_services_90_days:
        align: center
      services.Street_count_delivered_services:
        align: center
      services.Street_count_no_screening_90_days:
        align: center
      screenings_per_user:
        align: center
      screening.Street_count_undelivered_services:
        align: center
      screening.Street_count_undelivered_services_90_days:
        align: center
      screening.Street_count_delivered_services:
        align: center
      screening.Street_count_no_screening_90_days:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fafffc"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [user.count]
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
        label: screening Total Screenings
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
        view_label: screening
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=368"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
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
        label: Lab Test Total Lab Tests
        label_from_parameter:
        label_short: Total Lab Tests
        map_layer:
        name: lab_test.total_lab_tests
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: lab_test
        view_label: Lab Test
        dynamic: false
        week_start_day: monday
        original_view: lab_test
        dimension_group:
        error:
        field_group_variant: Total Lab Tests
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: lab_test
        suggest_dimension: lab_test.total_lab_tests
        suggest_explore: lab_test
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Flab_test.view.lkml?line=151"
        permanent: true
        source_file: tnphr_views/lab_test.view.lkml
        source_file_path: looker-tnphr/tnphr_views/lab_test.view.lkml
        sql:
        sql_case:
        filters:
        - field: lab_test.lab_test_name
          condition: "-Null"
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
        label: Lab Test Lab Tests in last 30 days
        label_from_parameter:
        label_short: Lab Tests in last 30 days
        map_layer:
        name: lab_test.lab_tests_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: lab_test
        view_label: Lab Test
        dynamic: false
        week_start_day: monday
        original_view: lab_test
        dimension_group:
        error:
        field_group_variant: Lab Tests in last 30 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: lab_test
        suggest_dimension: lab_test.lab_tests_30_days
        suggest_explore: lab_test
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Flab_test.view.lkml?line=158"
        permanent: true
        source_file: tnphr_views/lab_test.view.lkml
        source_file_path: looker-tnphr/tnphr_views/lab_test.view.lkml
        sql:
        sql_case:
        filters:
        - field: lab_test.lab_test_date_date
          condition: 30 days ago for 30 days
        - field: lab_test.lab_test_name
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
        label: User Count
        label_from_parameter:
        label_short: Count
        map_layer:
        name: user.count
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.count
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=126"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql:
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
        label: Services Streets with undelivered services
        label_from_parameter:
        label_short: Streets with undelivered services
        map_layer:
        name: services.Street_count_undelivered_services
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
        view: services
        view_label: Services
        dynamic: false
        week_start_day: monday
        original_view: services
        dimension_group:
        error:
        field_group_variant: Streets with undelivered services
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: services
        suggest_dimension: services.Street_count_undelivered_services
        suggest_explore: services
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fservices.view.lkml?line=170"
        permanent: true
        source_file: tnphr_views/services.view.lkml
        source_file_path: looker-tnphr/tnphr_views/services.view.lkml
        sql: "${citizen_street_gid} "
        sql_case:
        filters:
        - field: services.service_name
          condition: 'NULL'
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
        label: Services Streets with undelivered services in last 90 days
        label_from_parameter:
        label_short: Streets with undelivered services in last 90 days
        map_layer:
        name: services.Street_count_undelivered_services_90_days
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
        view: services
        view_label: Services
        dynamic: false
        week_start_day: monday
        original_view: services
        dimension_group:
        error:
        field_group_variant: Streets with undelivered services in last 90 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: services
        suggest_dimension: services.Street_count_undelivered_services_90_days
        suggest_explore: services
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fservices.view.lkml?line=177"
        permanent: true
        source_file: tnphr_views/services.view.lkml
        source_file_path: looker-tnphr/tnphr_views/services.view.lkml
        sql: "${citizen_street_gid} "
        sql_case:
        filters:
        - field: services.service_name
          condition: 'NULL'
        - field: services.service_date_date
          condition: 90 days ago for 90 days
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
        label: Services Streets with services delivered
        label_from_parameter:
        label_short: Streets with services delivered
        map_layer:
        name: services.Street_count_delivered_services
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
        view: services
        view_label: Services
        dynamic: false
        week_start_day: monday
        original_view: services
        dimension_group:
        error:
        field_group_variant: Streets with services delivered
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: services
        suggest_dimension: services.Street_count_delivered_services
        suggest_explore: services
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fservices.view.lkml?line=185"
        permanent: true
        source_file: tnphr_views/services.view.lkml
        source_file_path: looker-tnphr/tnphr_views/services.view.lkml
        sql: "${citizen_street_gid} "
        sql_case:
        filters:
        - field: services.service_name
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
        label: Services Streets with no screenings in last 90 days
        label_from_parameter:
        label_short: Streets with no screenings in last 90 days
        map_layer:
        name: services.Street_count_no_screening_90_days
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
        view: services
        view_label: Services
        dynamic: false
        week_start_day: monday
        original_view: services
        dimension_group:
        error:
        field_group_variant: Streets with no screenings in last 90 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: services
        suggest_dimension: services.Street_count_no_screening_90_days
        suggest_explore: services
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fservices.view.lkml?line=192"
        permanent: true
        source_file: tnphr_views/services.view.lkml
        source_file_path: looker-tnphr/tnphr_views/services.view.lkml
        sql: "${citizen_street_gid} "
        sql_case:
        filters:
        - field: services.total_screening_count
          condition: '0'
        - field: services.service_date_date
          condition: 90 days ago for 90 days
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
        label: screening Citizen District Name
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
        view_label: screening
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
        label: screening Citizen District Gid
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
        view_label: screening
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
      table_calculations:
      - label: Screenings per User
        name: screenings_per_user
        expression: "${screening.Total_screenings}/${user.count}"
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0"
        is_numeric: true
      pivots: []
    dynamic_fields: [{category: table_calculation, expression: 'if(${screening.Total_screenings}/${user.count}>0,${screening.Total_screenings}/${user.count},0)',
        label: Screenings per User, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: screenings_per_user, _type_hint: number}]
    listen:
    - Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community District: screening.citizen_district_name
      Institution District: screening.user_district_name
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution Directorate: screening.user_directorate
    - Community Hud: lab_test.citizen_hud_name
      Community Block: lab_test.citizen_block_name
      Community District: lab_test.citizen_district_name
      Institution District: lab_test.user_district_name
      Institution Block: lab_test.user_block_name
      Institution Hud: lab_test.user_hud_name
      Institution Directorate: lab_test.user_directorate
    - Institution District: user.user_district_name
      Institution Block: user.user_block_name
      Institution Hud: user.user_hud_name
      Institution Directorate: user.user_directorate
    row: 16
    col: 0
    width: 24
    height: 11
  - name: HUD Wise
    title: HUD Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_column
      fields: [screening.Total_screenings, screening.citizen_hud_name, screening.citizen_hud_gid,
        screening.citizen_district_name, screening.citizen_district_gid, screening.Street_count_undelivered_services,
        screening.Street_count_undelivered_services_90_days, screening.Street_count_delivered_services,
        screening.Street_count_no_screening_90_days]
      sorts: [screening.Total_screenings desc]
      limit: 5000
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
    - model: tnphr-prod-kpi
      explore: lab_test
      type: table
      fields: [lab_test.total_lab_tests, lab_test.lab_tests_30_days, lab_test.citizen_hud_name]
      sorts: [lab_test.total_lab_tests desc]
      limit: 5000
      join_fields:
      - field_name: lab_test.citizen_hud_name
        source_field_name: screening.citizen_hud_name
    - model: tnphr-prod-kpi
      explore: user
      type: looker_column
      fields: [user.count, user.user_hud_name]
      sorts: [user.count desc]
      limit: 5000
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
      - field_name: user.user_hud_name
        source_field_name: screening.citizen_hud_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.Total_screenings,
      lab_test.total_lab_tests, lab_test.lab_tests_30_days, services.Street_count_undelivered_services,
      services.Street_count_undelivered_services_90_days, services.Street_count_delivered_services,
      services.Street_count_no_screening_90_days, screenings_per_user]
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
      screening.citizen_hud_gid: 200
      screening.citizen_hud_name: 200
      screening.citizen_district_name: 200
      screening.Total_screenings: 200
      screening.citizen_district_gid: 200
      screening.Street_count_undelivered_services: 200
      screening.Street_count_undelivered_services_90_days: 200
      screening.Street_count_delivered_services: 200
      screening.Street_count_no_screening_90_days: 230
      lab_test.total_lab_tests: 200
      screenings_per_user: 200
      lab_test.lab_tests_30_days: 200
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      lab_test.count:
        align: center
      population.Street_count:
        align: center
      screening_per_user:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_district_gid:
        align: center
      lab_test.total_lab_tests:
        align: center
      lab_test.lab_tests_30_days:
        align: center
      services.Street_count_undelivered_services:
        align: center
      services.Street_count_undelivered_services_90_days:
        align: center
      services.Street_count_delivered_services:
        align: center
      services.Street_count_no_screening_90_days:
        align: center
      screenings_per_user:
        align: center
      screening.citizen_hud_name:
        align: center
      screening.citizen_hud_gid:
        align: center
      screening.Street_count_undelivered_services:
        align: center
      screening.Street_count_undelivered_services_90_days:
        align: center
      screening.Street_count_delivered_services:
        align: center
      screening.Street_count_no_screening_90_days:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fafffc"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [user.count]
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
        label: screening Total Screenings
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
        view_label: screening
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=449"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
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
        label: Lab Test Total Lab Tests
        label_from_parameter:
        label_short: Total Lab Tests
        map_layer:
        name: lab_test.total_lab_tests
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: lab_test
        view_label: Lab Test
        dynamic: false
        week_start_day: monday
        original_view: lab_test
        dimension_group:
        error:
        field_group_variant: Total Lab Tests
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: lab_test
        suggest_dimension: lab_test.total_lab_tests
        suggest_explore: lab_test
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Flab_test.view.lkml?line=156"
        permanent: true
        source_file: tnphr_views/lab_test.view.lkml
        source_file_path: looker-tnphr/tnphr_views/lab_test.view.lkml
        sql:
        sql_case:
        filters:
        - field: lab_test.lab_test_name
          condition: "-Null"
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
        label: Lab Test Lab Tests in last 30 days
        label_from_parameter:
        label_short: Lab Tests in last 30 days
        map_layer:
        name: lab_test.lab_tests_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: lab_test
        view_label: Lab Test
        dynamic: false
        week_start_day: monday
        original_view: lab_test
        dimension_group:
        error:
        field_group_variant: Lab Tests in last 30 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: lab_test
        suggest_dimension: lab_test.lab_tests_30_days
        suggest_explore: lab_test
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Flab_test.view.lkml?line=163"
        permanent: true
        source_file: tnphr_views/lab_test.view.lkml
        source_file_path: looker-tnphr/tnphr_views/lab_test.view.lkml
        sql:
        sql_case:
        filters:
        - field: lab_test.lab_test_date_date
          condition: 30 days ago for 30 days
        - field: lab_test.lab_test_name
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
        label: User Count
        label_from_parameter:
        label_short: Count
        map_layer:
        name: user.count
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.count
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=137"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql:
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
        label: Services Streets with undelivered services
        label_from_parameter:
        label_short: Streets with undelivered services
        map_layer:
        name: services.Street_count_undelivered_services
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
        view: services
        view_label: Services
        dynamic: false
        week_start_day: monday
        original_view: services
        dimension_group:
        error:
        field_group_variant: Streets with undelivered services
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: services
        suggest_dimension: services.Street_count_undelivered_services
        suggest_explore: services
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fservices.view.lkml?line=175"
        permanent: true
        source_file: tnphr_views/services.view.lkml
        source_file_path: looker-tnphr/tnphr_views/services.view.lkml
        sql: "${citizen_street_gid} "
        sql_case:
        filters:
        - field: services.service_name
          condition: 'NULL'
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
        label: Services Streets with undelivered services in last 90 days
        label_from_parameter:
        label_short: Streets with undelivered services in last 90 days
        map_layer:
        name: services.Street_count_undelivered_services_90_days
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
        view: services
        view_label: Services
        dynamic: false
        week_start_day: monday
        original_view: services
        dimension_group:
        error:
        field_group_variant: Streets with undelivered services in last 90 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: services
        suggest_dimension: services.Street_count_undelivered_services_90_days
        suggest_explore: services
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fservices.view.lkml?line=182"
        permanent: true
        source_file: tnphr_views/services.view.lkml
        source_file_path: looker-tnphr/tnphr_views/services.view.lkml
        sql: "${citizen_street_gid} "
        sql_case:
        filters:
        - field: services.service_name
          condition: 'NULL'
        - field: services.service_date_date
          condition: 90 days ago for 90 days
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
        label: Services Streets with services delivered
        label_from_parameter:
        label_short: Streets with services delivered
        map_layer:
        name: services.Street_count_delivered_services
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
        view: services
        view_label: Services
        dynamic: false
        week_start_day: monday
        original_view: services
        dimension_group:
        error:
        field_group_variant: Streets with services delivered
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: services
        suggest_dimension: services.Street_count_delivered_services
        suggest_explore: services
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fservices.view.lkml?line=190"
        permanent: true
        source_file: tnphr_views/services.view.lkml
        source_file_path: looker-tnphr/tnphr_views/services.view.lkml
        sql: "${citizen_street_gid} "
        sql_case:
        filters:
        - field: services.service_name
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
        label: Services Streets with no screenings in last 90 days
        label_from_parameter:
        label_short: Streets with no screenings in last 90 days
        map_layer:
        name: services.Street_count_no_screening_90_days
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
        view: services
        view_label: Services
        dynamic: false
        week_start_day: monday
        original_view: services
        dimension_group:
        error:
        field_group_variant: Streets with no screenings in last 90 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: services
        suggest_dimension: services.Street_count_no_screening_90_days
        suggest_explore: services
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fservices.view.lkml?line=197"
        permanent: true
        source_file: tnphr_views/services.view.lkml
        source_file_path: looker-tnphr/tnphr_views/services.view.lkml
        sql: "${citizen_street_gid} "
        sql_case:
        filters:
        - field: services.total_screening_count
          condition: '0'
        - field: services.service_date_date
          condition: 90 days ago for 90 days
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
        label: screening Citizen Hud Name
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
        view_label: screening
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
        label: screening Citizen Hud Gid
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
        view_label: screening
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
        label: screening Citizen District Name
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
        view_label: screening
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
        label: screening Citizen District Gid
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
        view_label: screening
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
      table_calculations:
      - label: Screenings per User
        name: screenings_per_user
        expression: if(${screening.Total_screenings}/${user.count}>0,${screening.Total_screenings}/${user.count},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0"
        is_numeric: true
      pivots: []
    hide_totals: false
    hide_row_totals: false
    dynamic_fields: [{category: table_calculation, expression: 'if(${screening.Total_screenings}/${user.count}>0,${screening.Total_screenings}/${user.count},0)',
        label: Screenings per User, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: screenings_per_user, _type_hint: number}]
    listen:
    - Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community District: screening.citizen_district_name
      Institution District: screening.user_district_name
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution Directorate: screening.user_directorate
    - Community Hud: lab_test.citizen_hud_name
      Community Block: lab_test.citizen_block_name
      Community District: lab_test.citizen_district_name
      Institution District: lab_test.user_district_name
      Institution Block: lab_test.user_block_name
      Institution Hud: lab_test.user_hud_name
      Institution Directorate: lab_test.user_directorate
    - Institution District: user.user_district_name
      Institution Block: user.user_block_name
      Institution Hud: user.user_hud_name
      Institution Directorate: user.user_directorate
    row: 27
    col: 0
    width: 24
    height: 11
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.Total_screenings, screening.citizen_block_name, screening.citizen_block_gid,
        screening.citizen_district_name, screening.citizen_district_gid, screening.citizen_hud_gid,
        screening.citizen_hud_name, screening.Street_count_undelivered_services, screening.Street_count_undelivered_services_90_days,
        screening.Street_count_delivered_services, screening.Street_count_no_screening_90_days]
      sorts: [screening.Total_screenings desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: lab_test
      type: table
      fields: [lab_test.total_lab_tests, lab_test.lab_tests_30_days, lab_test.citizen_block_name]
      sorts: [lab_test.total_lab_tests desc]
      limit: 5000
      join_fields:
      - field_name: lab_test.citizen_block_name
        source_field_name: screening.citizen_block_name
    - model: tnphr-prod-kpi
      explore: user
      type: looker_column
      fields: [user.count, user.user_block_name]
      sorts: [user.count desc]
      limit: 5000
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
      - field_name: user.user_block_name
        source_field_name: screening.citizen_block_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.citizen_block_name,
      screening.citizen_block_gid, screening.Total_screenings, lab_test.total_lab_tests,
      lab_test.lab_tests_30_days, services.Street_count_undelivered_services, services.Street_count_undelivered_services_90_days,
      services.Street_count_delivered_services, services.Street_count_no_screening_90_days,
      screenings_per_user]
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
      screening.citizen_block_name: 200
      screening.citizen_district_name: 200
      screening.citizen_block_gid: 200
      screening.citizen_district_gid: 200
      screening.citizen_hud_gid: 200
      screening.citizen_hud_name: 200
      screening.Total_screenings: 200
      screening.Street_count_undelivered_services: 200
      screening.Street_count_undelivered_services_90_days: 200
      screening.Street_count_delivered_services: 200
      screening.Street_count_no_screening_90_days: 230
      lab_test.total_lab_tests: 200
      lab_test.lab_tests_30_days: 200
      screenings_per_user: 200
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      lab_test.count:
        align: center
      population.Street_count:
        align: center
      screening_per_user:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_district_gid:
        align: center
      lab_test.total_lab_tests:
        align: center
      lab_test.lab_tests_30_days:
        align: center
      services.Street_count_undelivered_services:
        align: center
      services.Street_count_undelivered_services_90_days:
        align: center
      services.Street_count_delivered_services:
        align: center
      services.Street_count_no_screening_90_days:
        align: center
      screenings_per_user:
        align: center
      screening.citizen_hud_name:
        align: center
      screening.citizen_hud_gid:
        align: center
      screening.citizen_block_name:
        align: center
      screening.citizen_block_gid:
        align: center
      screening.Street_count_undelivered_services:
        align: center
      screening.Street_count_undelivered_services_90_days:
        align: center
      screening.Street_count_delivered_services:
        align: center
      screening.Street_count_no_screening_90_days:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fafffc"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [user.count]
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
        label: screening Total Screenings
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
        view_label: screening
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=449"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
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
        label: Lab Test Total Lab Tests
        label_from_parameter:
        label_short: Total Lab Tests
        map_layer:
        name: lab_test.total_lab_tests
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: lab_test
        view_label: Lab Test
        dynamic: false
        week_start_day: monday
        original_view: lab_test
        dimension_group:
        error:
        field_group_variant: Total Lab Tests
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: lab_test
        suggest_dimension: lab_test.total_lab_tests
        suggest_explore: lab_test
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Flab_test.view.lkml?line=156"
        permanent: true
        source_file: tnphr_views/lab_test.view.lkml
        source_file_path: looker-tnphr/tnphr_views/lab_test.view.lkml
        sql:
        sql_case:
        filters:
        - field: lab_test.lab_test_name
          condition: "-Null"
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
        label: Lab Test Lab Tests in last 30 days
        label_from_parameter:
        label_short: Lab Tests in last 30 days
        map_layer:
        name: lab_test.lab_tests_30_days
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: lab_test
        view_label: Lab Test
        dynamic: false
        week_start_day: monday
        original_view: lab_test
        dimension_group:
        error:
        field_group_variant: Lab Tests in last 30 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: lab_test
        suggest_dimension: lab_test.lab_tests_30_days
        suggest_explore: lab_test
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Flab_test.view.lkml?line=163"
        permanent: true
        source_file: tnphr_views/lab_test.view.lkml
        source_file_path: looker-tnphr/tnphr_views/lab_test.view.lkml
        sql:
        sql_case:
        filters:
        - field: lab_test.lab_test_date_date
          condition: 30 days ago for 30 days
        - field: lab_test.lab_test_name
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
        label: User Count
        label_from_parameter:
        label_short: Count
        map_layer:
        name: user.count
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.count
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=137"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql:
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
        label: Services Streets with undelivered services
        label_from_parameter:
        label_short: Streets with undelivered services
        map_layer:
        name: services.Street_count_undelivered_services
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
        view: services
        view_label: Services
        dynamic: false
        week_start_day: monday
        original_view: services
        dimension_group:
        error:
        field_group_variant: Streets with undelivered services
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: services
        suggest_dimension: services.Street_count_undelivered_services
        suggest_explore: services
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fservices.view.lkml?line=175"
        permanent: true
        source_file: tnphr_views/services.view.lkml
        source_file_path: looker-tnphr/tnphr_views/services.view.lkml
        sql: "${citizen_street_gid} "
        sql_case:
        filters:
        - field: services.service_name
          condition: 'NULL'
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
        label: Services Streets with undelivered services in last 90 days
        label_from_parameter:
        label_short: Streets with undelivered services in last 90 days
        map_layer:
        name: services.Street_count_undelivered_services_90_days
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
        view: services
        view_label: Services
        dynamic: false
        week_start_day: monday
        original_view: services
        dimension_group:
        error:
        field_group_variant: Streets with undelivered services in last 90 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: services
        suggest_dimension: services.Street_count_undelivered_services_90_days
        suggest_explore: services
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fservices.view.lkml?line=182"
        permanent: true
        source_file: tnphr_views/services.view.lkml
        source_file_path: looker-tnphr/tnphr_views/services.view.lkml
        sql: "${citizen_street_gid} "
        sql_case:
        filters:
        - field: services.service_name
          condition: 'NULL'
        - field: services.service_date_date
          condition: 90 days ago for 90 days
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
        label: Services Streets with services delivered
        label_from_parameter:
        label_short: Streets with services delivered
        map_layer:
        name: services.Street_count_delivered_services
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
        view: services
        view_label: Services
        dynamic: false
        week_start_day: monday
        original_view: services
        dimension_group:
        error:
        field_group_variant: Streets with services delivered
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: services
        suggest_dimension: services.Street_count_delivered_services
        suggest_explore: services
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fservices.view.lkml?line=190"
        permanent: true
        source_file: tnphr_views/services.view.lkml
        source_file_path: looker-tnphr/tnphr_views/services.view.lkml
        sql: "${citizen_street_gid} "
        sql_case:
        filters:
        - field: services.service_name
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
        label: Services Streets with no screenings in last 90 days
        label_from_parameter:
        label_short: Streets with no screenings in last 90 days
        map_layer:
        name: services.Street_count_no_screening_90_days
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
        view: services
        view_label: Services
        dynamic: false
        week_start_day: monday
        original_view: services
        dimension_group:
        error:
        field_group_variant: Streets with no screenings in last 90 days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: services
        suggest_dimension: services.Street_count_no_screening_90_days
        suggest_explore: services
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fservices.view.lkml?line=197"
        permanent: true
        source_file: tnphr_views/services.view.lkml
        source_file_path: looker-tnphr/tnphr_views/services.view.lkml
        sql: "${citizen_street_gid} "
        sql_case:
        filters:
        - field: services.total_screening_count
          condition: '0'
        - field: services.service_date_date
          condition: 90 days ago for 90 days
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
        label: screening Citizen Block Name
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
        view_label: screening
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
        label: screening Citizen Block Gid
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
        view_label: screening
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
        label: screening Citizen District Name
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
        view_label: screening
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
        label: screening Citizen District Gid
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
        view_label: screening
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
        label: screening Citizen Hud Gid
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
        view_label: screening
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
        label: screening Citizen Hud Name
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
        view_label: screening
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
      table_calculations:
      - label: Screenings per User
        name: screenings_per_user
        expression: if(${screening.Total_screenings}/${user.count}>0,${screening.Total_screenings}/${user.count},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0"
        is_numeric: true
      pivots: []
    hide_totals: false
    hide_row_totals: false
    dynamic_fields: [{category: table_calculation, expression: 'if(${screening.Total_screenings}/${user.count}>0,${screening.Total_screenings}/${user.count},0)',
        label: Screenings per User, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: screenings_per_user, _type_hint: number}]
    listen:
    - Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community District: screening.citizen_district_name
      Institution District: screening.user_district_name
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution Directorate: screening.user_directorate
    - Community Hud: lab_test.citizen_hud_name
      Community Block: lab_test.citizen_block_name
      Community District: lab_test.citizen_district_name
      Institution District: lab_test.user_district_name
      Institution Block: lab_test.user_block_name
      Institution Hud: lab_test.user_hud_name
      Institution Directorate: lab_test.user_directorate
    - Institution District: user.user_district_name
      Institution Block: user.user_block_name
      Institution Hud: user.user_hud_name
      Institution Directorate: user.user_directorate
    row: 38
    col: 0
    width: 24
    height: 12
  - title: Streets with undelivered services
    name: Streets with undelivered services
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Street_count_undelivered_services]
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
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community District: screening.citizen_district_name
      Institution District: screening.user_district_name
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution Directorate: screening.user_directorate
    row: 4
    col: 17
    width: 7
    height: 3
  - title: Streets with undelivered services in last 90 days
    name: Streets with undelivered services in last 90 days
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Street_count_undelivered_services_90_days]
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
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community District: screening.citizen_district_name
      Institution District: screening.user_district_name
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution Directorate: screening.user_directorate
    row: 7
    col: 0
    width: 8
    height: 3
  - title: No of streets with services delivered
    name: No of streets with services delivered
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Street_count_delivered_services]
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
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community District: screening.citizen_district_name
      Institution District: screening.user_district_name
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution Directorate: screening.user_directorate
    row: 7
    col: 8
    width: 8
    height: 3
  - title: Streets with no screenings in last 90 days
    name: Streets with no screenings in last 90 days
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Street_count_no_screening_90_days]
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
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community District: screening.citizen_district_name
      Institution District: screening.user_district_name
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Institution Directorate: screening.user_directorate
    row: 7
    col: 16
    width: 8
    height: 3
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
    listens_to_filters: [Community Hud, Community Block]
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
    listens_to_filters: [Community District, Community Block]
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
    listens_to_filters: [Community District, Community Hud]
    field: screening.citizen_block_name
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
    explore: user
    listens_to_filters: [Institution Block, Institution Hud, Institution Directorate]
    field: user.user_district_name
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
    explore: user
    listens_to_filters: [Institution District, Institution Hud, Institution Directorate]
    field: user.user_block_name
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
    explore: user
    listens_to_filters: [Institution District, Institution Block, Institution Directorate]
    field: user.user_hud_name
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
    explore: user
    listens_to_filters: [Institution District, Institution Block, Institution Hud]
    field: user.user_directorate
