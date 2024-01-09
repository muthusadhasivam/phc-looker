- dashboard: facilty_performance_v1_0_2
  title: Facilty Performance v1.0.2
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: 'Facilty Performance '
    name: 'Facilty Performance '
    model: tnphr_state_level
    explore: facility_registry
    type: single_value
    fields: [facility_registry.facility_synced_in_last_24_hours, facility_registry.facility_synced_in_last_48_hours]
    filters:
      facility_registry.last_update_date: 24 hours
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${facility_registry.facility_synced_in_last_24_hours}-${facility_registry.facility_synced_in_last_48_hours}",
        label: 'Last 24 hours ', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: last_24_hours, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [facility_registry.facility_synced_in_last_48_hours]
    listen:
      Facility Name: facility_registry.facility_name
    row: 3
    col: 7
    width: 4
    height: 2
  - title: Synced in last 30 days
    name: Synced in last 30 days
    model: tnphr_state_level
    explore: facility_registry
    type: single_value
    fields: [facility_registry.facility_synced_in_last_30_days, facility_registry.facility_synced_in_last_60_days]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${facility_registry.facility_synced_in_last_30_days}-${facility_registry.facility_synced_in_last_60_days}",
        label: Last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_30_days,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    single_value_title: Last 30 days
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
    comparison_label: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: "#254ea3", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [facility_registry.facility_synced_in_last_60_days]
    listen:
      Facility Name: facility_registry.facility_name
    row: 3
    col: 11
    width: 4
    height: 2
  - title: Last 24 hours
    name: Last 24 hours
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Facility_Inidividual_screening_last_24_hours, health_screening.Facility_Inidividual_screening_last_48_hours]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Facility_Inidividual_screening_last_24_hours}-${health_screening.Facility_Inidividual_screening_last_48_hours}",
        label: 'Last 24 hours ', value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_24_hours,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d8dee0",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields: [health_screening.Facility_Inidividual_screening_last_48_hours]
    listen:
      Facility Name: facility_registry.facility_name
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
    row: 5
    col: 7
    width: 4
    height: 2
  - title: last 30 days
    name: last 30 days
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Facility_Inidividual_screening_last_30_days, health_screening.Facility_Inidividual_screening_last_60_days]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Facility_Inidividual_screening_last_30_days}-${health_screening.Facility_Inidividual_screening_last_60_days}",
        label: Last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_30_days,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Last 30 days
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d8dee0",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields: [health_screening.Facility_Inidividual_screening_last_60_days]
    listen:
      Facility Name: facility_registry.facility_name
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
    row: 5
    col: 11
    width: 4
    height: 2
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.facility_family_last_24_hours, health_screening.Facility_avg_family_screening,
        health_screening.Facility_Drugs_delivered_last_24_hours, health_screening.Facility_Drugs_delivered_last_30_days,
        health_screening.Average_Facility_Drugs, health_screening.Facility_avg_Inidividual_screening,
        health_screening.facility_family_last_30_days, health_screening.Facility_Inidividual_screening_last_24_hours,
        health_screening.Facility_Inidividual_screening_last_30_days, family_member_master.district_name]
      limit: 500
      join_fields: []
    - model: tnphr_state_level
      explore: facility_registry
      type: table
      fields: [facility_registry.facility_synced_in_last_24_hours, facility_registry.facility_synced_in_last_30_days,
        facility_registry.Average_facility_synced, facility_registry.district_name]
      limit: 500
      join_fields:
      - field_name: facility_registry.district_name
        source_field_name: family_member_master.district_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    size_to_fit: true
    series_labels:
      health_screening.facility_family_last_24_hours: Screening  Family 24 Hrs
      health_screening.Facility_avg_family_screening: Average Family Screening
      health_screening.Facility_Drugs_delivered_last_24_hours: Drugs delivered  24
        Hrs
      health_screening.Facility_Drugs_delivered_last_30_days: Drugs  delivered  30
        days
      health_screening.Average_Facility_Drugs: Average  drugs delivered
      health_screening.facility_family_last_30_days: Screening family  last 30 days
      health_screening.Facility_avg_Inidividual_screening: Average Individual Screening
      health_screening.Facility_Inidividual_screening_last_24_hours: Screening individual
        last 24 Hrs
      health_screening.Facility_Inidividual_screening_last_30_days: Screening Individual  30
        days
      facility_registry.facility_synced_in_last_24_hours: Synced last 24 Hrs
      facility_registry.facility_synced_in_last_30_days: Synced last 30 days
      facility_registry.Average_facility_synced: Average  synced
    series_cell_visualizations:
      health_screening.facility_individual_last_30_days:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
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
        label: Health Screening Facility Family Last 24 Hours
        label_from_parameter:
        label_short: Facility Family Last 24 Hours
        map_layer:
        name: health_screening.facility_family_last_24_hours
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
        field_group_variant: Facility Family Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.facility_family_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1228"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hour
        - field: health_screening.family_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening  Facility Average Family Screening
        label_from_parameter:
        label_short: " Facility Average Family Screening"
        map_layer:
        name: health_screening.Facility_avg_family_screening
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: " Facility Average Family Screening"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_avg_family_screening
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1207"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${facility_family_last_30_days}/30"
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
        label: Health Screening Facility Drugs Delivered Last 24 Hours
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 24 Hours
        map_layer:
        name: health_screening.Facility_Drugs_delivered_last_24_hours
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
        field_group_variant: Facility Drugs Delivered Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Drugs_delivered_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1247"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Drugs Delivered Last 30 Days
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 30 Days
        map_layer:
        name: health_screening.Facility_Drugs_delivered_last_30_days
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
        field_group_variant: Facility Drugs Delivered Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Drugs_delivered_last_30_days
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1265"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Average Facility Drugs
        label_from_parameter:
        label_short: Average Facility Drugs
        map_layer:
        name: health_screening.Average_Facility_Drugs
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Average Facility Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Average_Facility_Drugs
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1285"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${Facility_Drugs_delivered_last_30_days}/30 "
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
        label: Health Screening Facility Individual Average Screening
        label_from_parameter:
        label_short: Facility Individual Average Screening
        map_layer:
        name: health_screening.Facility_avg_Inidividual_screening
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Facility Individual Average Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_avg_Inidividual_screening
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1169"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${Facility_Inidividual_screening_last_30_days}/30"
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
        label: Health Screening Facility Family Last 30 Days
        label_from_parameter:
        label_short: Facility Family Last 30 Days
        map_layer:
        name: health_screening.facility_family_last_30_days
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
        field_group_variant: Facility Family Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.facility_family_last_30_days
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1189"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.family_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
          condition: "-NULL"
        times_used: 0
        aggregate: true
        sorted:
          desc: true
          sort_index: 0
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
        label: Health Screening Facility Inidividual Screening Last 24 Hours
        label_from_parameter:
        label_short: Facility Inidividual Screening Last 24 Hours
        map_layer:
        name: health_screening.Facility_Inidividual_screening_last_24_hours
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
        field_group_variant: Facility Inidividual Screening Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Inidividual_screening_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1134"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Inidividual Screening Last 30 Days
        label_from_parameter:
        label_short: Facility Inidividual Screening Last 30 Days
        map_layer:
        name: health_screening.Facility_Inidividual_screening_last_30_days
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
        field_group_variant: Facility Inidividual Screening Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Inidividual_screening_last_30_days
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1152"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Registry Facility Synced In Last 24 Hours
        label_from_parameter:
        label_short: Facility Synced In Last 24 Hours
        map_layer:
        name: facility_registry.facility_synced_in_last_24_hours
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.facility_synced_in_last_24_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=363"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${TABLE}.facility_id "
        sql_case:
        filters:
        - field: facility_registry.last_update_date
          condition: 24 hours
        - field: facility_registry.facility_id
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
        label: Registry Facility Synced In Last 30 Days
        label_from_parameter:
        label_short: Facility Synced In Last 30 Days
        map_layer:
        name: facility_registry.facility_synced_in_last_30_days
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.facility_synced_in_last_30_days
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=387"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${TABLE}.facility_id "
        sql_case:
        filters:
        - field: facility_registry.last_update_date
          condition: 30 days
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
        label: Registry Average Facility Synced
        label_from_parameter:
        label_short: Average Facility Synced
        map_layer:
        name: facility_registry.Average_facility_synced
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Average Facility Synced
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.Average_facility_synced
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=419"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${facility_synced_in_last_30_days}/30 "
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
        suggest_explore: family_master
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
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, facility_registry.facility_synced_in_last_24_hours,
      facility_registry.facility_synced_in_last_30_days, facility_registry.Average_facility_synced,
      health_screening.Facility_Inidividual_screening_last_24_hours, health_screening.Facility_Inidividual_screening_last_30_days,
      health_screening.Facility_avg_Inidividual_screening, health_screening.facility_family_last_24_hours,
      health_screening.facility_family_last_30_days, health_screening.Facility_avg_family_screening,
      health_screening.Facility_Drugs_delivered_last_24_hours, health_screening.Facility_Drugs_delivered_last_30_days,
      health_screening.Average_Facility_Drugs]
    hidden_fields: []
    sorts: [health_screening.facility_family_last_30_days desc]
    column_limit: 50
    listen:
    - Facility Name: facility_registry.facility_name
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
    - Facility Name: facility_registry.facility_name
    row: 11
    col: 0
    width: 24
    height: 6
  - title: Average  Synced
    name: Average  Synced
    model: tnphr_state_level
    explore: facility_registry
    type: single_value
    fields: [facility_registry.Average_facility_synced, facility_registry.average_facility_synced_last_60_days]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${facility_registry.Average_facility_synced}-${facility_registry.average_facility_synced_last_60_days}",
        label: Average Synced per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_synced_per_day, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [facility_registry.average_facility_synced_last_60_days]
    listen:
      Facility Name: facility_registry.facility_name
    row: 3
    col: 15
    width: 4
    height: 2
  - title: Top 10 Facility Performance
    name: Top 10 Facility Performance
    model: tnphr_state_level
    explore: facility_registry
    type: looker_bar
    fields: [user_master.facility_name, user_master.facility_id_count]
    filters:
      user_master.facility_name: "-NULL"
    sorts: [user_master.facility_id_count desc]
    limit: 10
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
    series_types: {}
    series_colors:
      user_master.Facility_id_count: "#7CB342"
      user_master.facility_id_count: "#7CB342"
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    listen:
      Facility Name: facility_registry.facility_name
    row: 3
    col: 0
    width: 7
    height: 8
  - title: Family  last 24 hours
    name: Family  last 24 hours
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.facility_family_last_24_hours, health_screening.facility_family_last_48_hours]
    limit: 10
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.facility_family_last_24_hours}-${health_screening.facility_family_last_48_hours}",
        label: 'Last 24 hours ', value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_24_hours,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Last 24 hours
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.facility_family_last_48_hours]
    listen:
      Facility Name: facility_registry.facility_name
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
    row: 7
    col: 7
    width: 4
    height: 2
  - title: Family  last 30 days
    name: Family  last 30 days
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.facility_family_last_30_days, health_screening.change_facility_family_last_60_days]
    limit: 10
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.facility_family_last_30_days}-${health_screening.change_facility_family_last_60_days}",
        label: Last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_30_days,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Last 30 days
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.change_facility_family_last_60_days]
    listen:
      Facility Name: facility_registry.facility_name
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
    row: 7
    col: 11
    width: 4
    height: 2
  - title: Family average
    name: Family average
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Facility_avg_family_screening, health_screening.change_Facility_avg_family_screening]
    limit: 10
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Facility_avg_family_screening}-${health_screening.change_Facility_avg_family_screening}",
        label: Average screenings per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_screenings_per_day, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average screenings per day
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.change_Facility_avg_family_screening]
    listen:
      Facility Name: facility_registry.facility_name
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
    row: 7
    col: 15
    width: 4
    height: 2
  - title: Average Individual
    name: Average Individual
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Facility_avg_Inidividual_screening, health_screening.Facility_avg_Inidividual_screening_last_60_days]
    limit: 10
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Facility_avg_Inidividual_screening}-${health_screening.Facility_avg_Inidividual_screening_last_60_days}",
        label: Average screenings per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_screenings_per_day, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d8dee0",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.Facility_avg_Inidividual_screening_last_60_days]
    listen:
      Facility Name: facility_registry.facility_name
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
    row: 5
    col: 15
    width: 4
    height: 2
  - name: "<H3>Facility  Synced</H3>"
    type: text
    title_text: "<H3>Facility  Synced</H3>"
    body_text: ''
    row: 3
    col: 19
    width: 5
    height: 2
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
  - name: "<H3>  Individual  Facility </H3>"
    type: text
    title_text: "<H3>  Individual  Facility </H3>"
    body_text: ''
    row: 5
    col: 19
    width: 5
    height: 2
  - name: "<H3> Family Facility </H3>"
    type: text
    title_text: "<H3> Family Facility </H3>"
    body_text: ''
    row: 7
    col: 19
    width: 5
    height: 2
  - title: Facility Drugs delivered
    name: Facility Drugs delivered
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Facility_Drugs_delivered_last_24_hours, health_screening.change_Facility_Drugs_delivered_last_24_hours]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Facility_Drugs_delivered_last_24_hours}-${health_screening.change_Facility_Drugs_delivered_last_24_hours}",
        label: 'Last 24 hours ', value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_24_hours,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Last 24 hours
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bce8e0",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.change_Facility_Drugs_delivered_last_24_hours]
    listen:
      Facility Name: facility_registry.facility_name
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
    row: 9
    col: 7
    width: 4
    height: 2
  - title: Facility drugs delivered  last 30 days
    name: Facility drugs delivered  last 30 days
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Facility_Drugs_delivered_last_30_days, health_screening.Change_Facility_Drugs_delivered_last_60_days]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Facility_Drugs_delivered_last_30_days}-${health_screening.Change_Facility_Drugs_delivered_last_60_days}",
        label: Last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_30_days,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Last 30 days
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bce8e0",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.Change_Facility_Drugs_delivered_last_60_days]
    listen:
      Facility Name: facility_registry.facility_name
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
    row: 9
    col: 11
    width: 4
    height: 2
  - title: Average Drugs Delivered
    name: Average Drugs Delivered
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Average_Facility_Drugs, health_screening.change_Facility_avg_family_screening]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Average_Facility_Drugs}-${health_screening.change_Facility_avg_family_screening}",
        label: Average drugs delivered per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_drugs_delivered_per_day, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average Drugs delivered per day
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bce8e0",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.change_Facility_avg_family_screening]
    listen:
      Facility Name: facility_registry.facility_name
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
    row: 9
    col: 15
    width: 4
    height: 2
  - name: "<H3> Drug delivery </H3>"
    type: text
    title_text: "<H3> Drug delivery </H3>"
    body_text: ''
    row: 9
    col: 19
    width: 5
    height: 2
  - name: Hud Wise
    title: Hud Wise
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.facility_family_last_24_hours, health_screening.Facility_avg_family_screening,
        health_screening.Facility_Drugs_delivered_last_24_hours, health_screening.Facility_Drugs_delivered_last_30_days,
        health_screening.Average_Facility_Drugs, health_screening.Facility_avg_Inidividual_screening,
        health_screening.facility_family_last_30_days, health_screening.Facility_Inidividual_screening_last_24_hours,
        health_screening.Facility_Inidividual_screening_last_30_days, family_member_master.hud_name]
      limit: 500
      join_fields: []
    - model: tnphr_state_level
      explore: facility_registry
      type: table
      fields: [facility_registry.facility_synced_in_last_24_hours, facility_registry.facility_synced_in_last_30_days,
        facility_registry.Average_facility_synced, facility_registry.hud_name]
      limit: 500
      join_fields:
      - field_name: facility_registry.hud_name
        source_field_name: family_member_master.hud_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    size_to_fit: true
    series_labels:
      health_screening.facility_family_last_24_hours: Screening  Family 24 Hrs
      health_screening.Facility_avg_family_screening: Average Family Screening
      health_screening.Facility_Drugs_delivered_last_24_hours: Drugs delivered  24
        Hrs
      health_screening.Facility_Drugs_delivered_last_30_days: Drugs  delivered  30
        days
      health_screening.Average_Facility_Drugs: Average  drugs delivered
      health_screening.facility_family_last_30_days: Screening family  last 30 days
      health_screening.Facility_avg_Inidividual_screening: Average Individual Screening
      health_screening.Facility_Inidividual_screening_last_24_hours: Screening individual
        last 24 Hrs
      health_screening.Facility_Inidividual_screening_last_30_days: Screening Individual  30
        days
      facility_registry.facility_synced_in_last_24_hours: Synced last 24 Hrs
      facility_registry.facility_synced_in_last_30_days: Synced last 30 days
      facility_registry.Average_facility_synced: Average  synced
    series_cell_visualizations:
      health_screening.facility_individual_last_30_days:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
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
        label: Health Screening Facility Family Last 24 Hours
        label_from_parameter:
        label_short: Facility Family Last 24 Hours
        map_layer:
        name: health_screening.facility_family_last_24_hours
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
        field_group_variant: Facility Family Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.facility_family_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1228"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hour
        - field: health_screening.family_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
          condition: "-NULL"
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
        label: Health Screening  Facility Average Family Screening
        label_from_parameter:
        label_short: " Facility Average Family Screening"
        map_layer:
        name: health_screening.Facility_avg_family_screening
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: " Facility Average Family Screening"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_avg_family_screening
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1207"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${facility_family_last_30_days}/30"
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
        label: Health Screening Facility Drugs Delivered Last 24 Hours
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 24 Hours
        map_layer:
        name: health_screening.Facility_Drugs_delivered_last_24_hours
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
        field_group_variant: Facility Drugs Delivered Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Drugs_delivered_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1247"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Drugs Delivered Last 30 Days
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 30 Days
        map_layer:
        name: health_screening.Facility_Drugs_delivered_last_30_days
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
        field_group_variant: Facility Drugs Delivered Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Drugs_delivered_last_30_days
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1265"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Average Facility Drugs
        label_from_parameter:
        label_short: Average Facility Drugs
        map_layer:
        name: health_screening.Average_Facility_Drugs
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Average Facility Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Average_Facility_Drugs
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1285"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${Facility_Drugs_delivered_last_30_days}/30 "
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
        label: Health Screening Facility Individual Average Screening
        label_from_parameter:
        label_short: Facility Individual Average Screening
        map_layer:
        name: health_screening.Facility_avg_Inidividual_screening
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Facility Individual Average Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_avg_Inidividual_screening
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1169"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${Facility_Inidividual_screening_last_30_days}/30"
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
        label: Health Screening Facility Family Last 30 Days
        label_from_parameter:
        label_short: Facility Family Last 30 Days
        map_layer:
        name: health_screening.facility_family_last_30_days
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
        field_group_variant: Facility Family Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.facility_family_last_30_days
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1189"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.family_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Inidividual Screening Last 24 Hours
        label_from_parameter:
        label_short: Facility Inidividual Screening Last 24 Hours
        map_layer:
        name: health_screening.Facility_Inidividual_screening_last_24_hours
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
        field_group_variant: Facility Inidividual Screening Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Inidividual_screening_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1134"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Inidividual Screening Last 30 Days
        label_from_parameter:
        label_short: Facility Inidividual Screening Last 30 Days
        map_layer:
        name: health_screening.Facility_Inidividual_screening_last_30_days
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
        field_group_variant: Facility Inidividual Screening Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Inidividual_screening_last_30_days
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1152"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Registry Facility Synced In Last 24 Hours
        label_from_parameter:
        label_short: Facility Synced In Last 24 Hours
        map_layer:
        name: facility_registry.facility_synced_in_last_24_hours
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.facility_synced_in_last_24_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=363"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${TABLE}.facility_id "
        sql_case:
        filters:
        - field: facility_registry.last_update_date
          condition: 24 hours
        - field: facility_registry.facility_id
          condition: "-NULL"
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
        label: Registry Facility Synced In Last 30 Days
        label_from_parameter:
        label_short: Facility Synced In Last 30 Days
        map_layer:
        name: facility_registry.facility_synced_in_last_30_days
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.facility_synced_in_last_30_days
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=387"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${TABLE}.facility_id "
        sql_case:
        filters:
        - field: facility_registry.last_update_date
          condition: 30 days
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
        label: Registry Average Facility Synced
        label_from_parameter:
        label_short: Average Facility Synced
        map_layer:
        name: facility_registry.Average_facility_synced
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Average Facility Synced
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.Average_facility_synced
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=419"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${facility_synced_in_last_30_days}/30 "
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
        label: Family member Master Hud Name
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
        view_label: Family member Master
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
        suggest_explore: family_master
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
      table_calculations: []
      pivots: []
    column_order: ["$$$_row_numbers_$$$", family_member_master.hud_name, facility_registry.facility_synced_in_last_24_hours,
      facility_registry.facility_synced_in_last_30_days, facility_registry.Average_facility_synced,
      health_screening.Facility_Inidividual_screening_last_24_hours, health_screening.Facility_Inidividual_screening_last_30_days,
      health_screening.Facility_avg_Inidividual_screening, health_screening.facility_family_last_24_hours,
      health_screening.facility_family_last_30_days, health_screening.Facility_avg_family_screening,
      health_screening.Facility_Drugs_delivered_last_24_hours, health_screening.Facility_Drugs_delivered_last_30_days,
      health_screening.Average_Facility_Drugs]
    hidden_fields: [user_master.hud_name]
    column_limit: 50
    listen:
    - Facility Name: facility_registry.facility_name
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
    - Facility Name: facility_registry.facility_name
    row: 17
    col: 0
    width: 24
    height: 7
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.facility_family_last_24_hours, health_screening.Facility_avg_family_screening,
        health_screening.Facility_Drugs_delivered_last_24_hours, health_screening.Facility_Drugs_delivered_last_30_days,
        health_screening.Average_Facility_Drugs, health_screening.Facility_avg_Inidividual_screening,
        health_screening.facility_family_last_30_days, health_screening.Facility_Inidividual_screening_last_24_hours,
        health_screening.Facility_Inidividual_screening_last_30_days, family_member_master.block_name]
      sorts: [health_screening.facility_family_last_24_hours desc]
      limit: 5000
      join_fields: []
    - model: tnphr_state_level
      explore: facility_registry
      type: table
      fields: [facility_registry.facility_synced_in_last_24_hours, facility_registry.facility_synced_in_last_30_days,
        facility_registry.Average_facility_synced, facility_registry.block_name]
      sorts: [facility_registry.facility_synced_in_last_24_hours desc]
      limit: 5000
      join_fields:
      - field_name: facility_registry.block_name
        source_field_name: family_member_master.block_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    size_to_fit: true
    series_labels:
      health_screening.facility_family_last_24_hours: Screening  Family 24 Hrs
      health_screening.Facility_avg_family_screening: Average Family Screening
      health_screening.Facility_Drugs_delivered_last_24_hours: Drugs delivered  24
        Hrs
      health_screening.Facility_Drugs_delivered_last_30_days: Drugs  delivered  30
        days
      health_screening.Average_Facility_Drugs: Average  drugs delivered
      health_screening.facility_family_last_30_days: Screening family  last 30 days
      health_screening.Facility_avg_Inidividual_screening: Average Individual Screening
      health_screening.Facility_Inidividual_screening_last_24_hours: Screening individual
        last 24 Hrs
      health_screening.Facility_Inidividual_screening_last_30_days: Screening Individual  30
        days
      facility_registry.facility_synced_in_last_24_hours: Synced last 24 Hrs
      facility_registry.facility_synced_in_last_30_days: Synced last 30 days
      facility_registry.Average_facility_synced: Average  synced
    series_cell_visualizations:
      health_screening.facility_individual_last_30_days:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
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
        label: Health Screening Facility Family Last 24 Hours
        label_from_parameter:
        label_short: Facility Family Last 24 Hours
        map_layer:
        name: health_screening.facility_family_last_24_hours
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
        field_group_variant: Facility Family Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.facility_family_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1228"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hour
        - field: health_screening.family_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening  Facility Average Family Screening
        label_from_parameter:
        label_short: " Facility Average Family Screening"
        map_layer:
        name: health_screening.Facility_avg_family_screening
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: " Facility Average Family Screening"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_avg_family_screening
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1207"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${facility_family_last_30_days}/30"
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
        label: Health Screening Facility Drugs Delivered Last 24 Hours
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 24 Hours
        map_layer:
        name: health_screening.Facility_Drugs_delivered_last_24_hours
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
        field_group_variant: Facility Drugs Delivered Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Drugs_delivered_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1247"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Drugs Delivered Last 30 Days
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 30 Days
        map_layer:
        name: health_screening.Facility_Drugs_delivered_last_30_days
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
        field_group_variant: Facility Drugs Delivered Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Drugs_delivered_last_30_days
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1265"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Average Facility Drugs
        label_from_parameter:
        label_short: Average Facility Drugs
        map_layer:
        name: health_screening.Average_Facility_Drugs
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Average Facility Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Average_Facility_Drugs
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1285"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${Facility_Drugs_delivered_last_30_days}/30 "
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
        label: Health Screening Facility Individual Average Screening
        label_from_parameter:
        label_short: Facility Individual Average Screening
        map_layer:
        name: health_screening.Facility_avg_Inidividual_screening
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Facility Individual Average Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_avg_Inidividual_screening
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1169"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${Facility_Inidividual_screening_last_30_days}/30"
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
        label: Health Screening Facility Family Last 30 Days
        label_from_parameter:
        label_short: Facility Family Last 30 Days
        map_layer:
        name: health_screening.facility_family_last_30_days
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
        field_group_variant: Facility Family Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.facility_family_last_30_days
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1189"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.family_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Inidividual Screening Last 24 Hours
        label_from_parameter:
        label_short: Facility Inidividual Screening Last 24 Hours
        map_layer:
        name: health_screening.Facility_Inidividual_screening_last_24_hours
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
        field_group_variant: Facility Inidividual Screening Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Inidividual_screening_last_24_hours
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1134"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Inidividual Screening Last 30 Days
        label_from_parameter:
        label_short: Facility Inidividual Screening Last 30 Days
        map_layer:
        name: health_screening.Facility_Inidividual_screening_last_30_days
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
        field_group_variant: Facility Inidividual Screening Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Inidividual_screening_last_30_days
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1152"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Registry Facility Synced In Last 24 Hours
        label_from_parameter:
        label_short: Facility Synced In Last 24 Hours
        map_layer:
        name: facility_registry.facility_synced_in_last_24_hours
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.facility_synced_in_last_24_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=363"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${TABLE}.facility_id "
        sql_case:
        filters:
        - field: facility_registry.last_update_date
          condition: 24 hours
        - field: facility_registry.facility_id
          condition: "-NULL"
        times_used: 0
        aggregate: true
        sorted:
          desc: true
          sort_index: 0
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
        label: Registry Facility Synced In Last 30 Days
        label_from_parameter:
        label_short: Facility Synced In Last 30 Days
        map_layer:
        name: facility_registry.facility_synced_in_last_30_days
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.facility_synced_in_last_30_days
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=387"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${TABLE}.facility_id "
        sql_case:
        filters:
        - field: facility_registry.last_update_date
          condition: 30 days
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
        label: Registry Average Facility Synced
        label_from_parameter:
        label_short: Average Facility Synced
        map_layer:
        name: facility_registry.Average_facility_synced
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Average Facility Synced
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.Average_facility_synced
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=419"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${facility_synced_in_last_30_days}/30 "
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
        label: Family member Master Block Name
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
        view_label: Family member Master
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
        suggest_explore: family_master
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
      table_calculations: []
      pivots: []
    column_order: ["$$$_row_numbers_$$$", family_member_master.block_name, facility_registry.facility_synced_in_last_24_hours,
      facility_registry.facility_synced_in_last_30_days, facility_registry.Average_facility_synced,
      health_screening.Facility_Inidividual_screening_last_24_hours, health_screening.Facility_Inidividual_screening_last_30_days,
      health_screening.Facility_avg_Inidividual_screening, health_screening.facility_family_last_24_hours,
      health_screening.facility_family_last_30_days, health_screening.Facility_avg_family_screening,
      health_screening.Facility_Drugs_delivered_last_24_hours, health_screening.Facility_Drugs_delivered_last_30_days,
      health_screening.Average_Facility_Drugs]
    sorts: [facility_registry.facility_synced_in_last_24_hours desc]
    column_limit: 50
    listen:
    - Facility Name: facility_registry.facility_name
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
    - Facility Name: facility_registry.facility_name
    row: 24
    col: 0
    width: 24
    height: 8
  filters:
  - name: District Name
    title: District Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_member_master.district_name
  - name: Hud Name
    title: Hud Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_member_master.hud_name
  - name: Block Name
    title: Block Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_member_master.block_name
  - name: Facility Name
    title: Facility Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: facility_registry.facility_name
