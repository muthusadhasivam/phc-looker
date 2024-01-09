- dashboard: field_verification_prod
  title: Field Verification v1.0.3 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_bar_collapsed: true
  preferred_slug: sg5b9qBa9HHZMwj853Bs2X
  elements:
  - title: Total Population
    name: Total Population
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.gender, health_screening.Total_population]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.resident_status: "-NULL"
    sorts: [health_screening.Total_population desc]
    limit: 5000
    dynamic_fields: [{category: table_calculation, expression: 'sum(${health_screening.Total_population})',
        label: New Calculation, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: new_calculation,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#EA4335"
    single_value_title: Total Population
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: [family_member_master.gender, health_screening.Total_population]
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
    note_text: Total Population
    listen:
      Toggle: health_screening.toggle_IR
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Last Update Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    row: 3
    col: 0
    width: 8
    height: 3
  - title: Additions in Last 6 Weeks
    name: Additions in Last 6 Weeks
    model: tnphr
    explore: family_member_master
    type: looker_area
    fields: [family_member_master.last_update_week, family_master.family_count, family_member_master.count]
    fill_fields: [family_member_master.last_update_week]
    filters:
      family_member_master.last_update_week: 6 weeks
      family_member_master.resident_status: Resident,resident
    sorts: [family_member_master.last_update_week desc]
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: family_master.family_count,
            id: family_master.family_count, name: Families Added}, {axisId: family_member_master.count,
            id: family_member_master.count, name: Members Added}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Week
    series_types: {}
    series_labels:
      family_member_master.count: Members Added
      family_master.family_count: Families Added
    reference_lines: []
    trend_lines: []
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'New members and families Additions in Last 6 Weeks

      '
    listen:
      Toggle: health_screening.toggle_IR
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Directorate Name: facility_directorate_master.directorate_name
    row: 9
    col: 0
    width: 8
    height: 6
  - title: Members Added
    name: Members Added
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Total_population]
    filters:
      family_member_master__update_register.family_member_master__update_register_user_id: "-system,-NULL"
      family_member_master.resident_status: Resident,resident
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
    single_value_title: Members Added
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: New Members Added
    listen:
      Toggle: health_screening.toggle_IR
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Last Update Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    row: 6
    col: 0
    width: 4
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
  - name: District's Wise Counts
    title: District's Wise Counts
    note_state: collapsed
    note_display: hover
    note_text: District Wise - Total population, Resident status wise population and
      Verified Population
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [family_member_master.resident_status_death, family_member_master.resident_status_migrated,
        family_member_master.resident_status_non_traceable, family_member_master.resident_status_duplicate,
        family_member_master.resident_status_resident, family_member_master.district_name]
      filters:
        family_member_master.resident_status_concat: -NULL,-"null"
        address_district_master.district_name: ''
        family_member_master.last_update_date: ''
        health_screening.role_toggle: ''
        health_history.facility_directorate_name: ''
      sorts: [family_member_master.resident_status_death desc]
      limit: 5000
      column_limit: 50
      dynamic_fields: [{category: table_calculation, expression: "${family_member_master.resident_status_duplicate}+${family_member_master.resident_status_death}+${family_member_master.resident_status_migrated}+${family_member_master.resident_status_non_traceable}+${family_member_master.resident_status_resident}",
          label: Verified Population, value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, table_calculation: verified_population, _type_hint: number}]
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, total_population,
        family_member_master.resident_status_resident, family_member_master.resident_status_death,
        family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
        family_member_master.resident_status_duplicate, family_member_master.count]
      show_totals: true
      show_row_totals: true
      series_labels:
        family_member_master.count: Total Count
        family_member_master.resident_status_non_traceable: Non Traceable count
      series_cell_visualizations:
        family_member_master.resident_status_migrated:
          is_active: false
        family_member_master.count:
          is_active: true
        total_verified_population:
          is_active: true
      header_font_color: "#fdfffc"
      header_background_color: "#1637e8"
      series_types: {}
      defaults_version: 1
      hidden_fields: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population, family_member_master.district_name]
      filters:
        family_member_master.district_name: "-NULL"
      sorts: [health_screening.Total_population desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, health_screening.Total_population,
      family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
      family_member_master.resident_status_duplicate, verified_population]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      family_member_master.district_name: Districts
      family_member_master.resident_status_death: Death
      family_member_master.resident_status_migrated: Migrated
      family_member_master.resident_status_non_traceable: Non Traceable
      family_member_master.resident_status_duplicate: Duplicate
      family_member_master.resident_status_resident: Resident
    series_column_widths:
      family_member_master.district_name: 98
      health_screening.Total_population: 123
      verified_population: 142
      family_member_master.resident_status_resident: 139
      family_member_master.resident_status_death: 130
      family_member_master.resident_status_migrated: 140
      family_member_master.resident_status_non_traceable: 128
      family_member_master.resident_status_duplicate: 140
    series_cell_visualizations:
      family_member_master.resident_status_death:
        is_active: false
    series_text_format:
      family_member_master.district_name:
        align: left
      verified_population:
        align: center
      health_screening.Total_population:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fafff5"
    header_background_color: "#1c26e8"
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
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Family member Master Death Count
        label_from_parameter:
        label_short: Death Count
        map_layer:
        name: family_member_master.resident_status_death
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Death Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_death
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=399"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Dead
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
        label: Family member Master Migrated Count
        label_from_parameter:
        label_short: Migrated Count
        map_layer:
        name: family_member_master.resident_status_migrated
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Migrated Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_migrated
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=380"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: migrated_out,Migrated out
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
        label: Family member Master NT Count
        label_from_parameter:
        label_short: NT Count
        map_layer:
        name: family_member_master.resident_status_non_traceable
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: NT Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_non_traceable
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=421"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Non traceable
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
        label: Family member Master Duplicate Count
        label_from_parameter:
        label_short: Duplicate Count
        map_layer:
        name: family_member_master.resident_status_duplicate
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Duplicate Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_duplicate
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=410"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Duplicate
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
        label: Family member Master Resident Count
        label_from_parameter:
        label_short: Resident Count
        map_layer:
        name: family_member_master.resident_status_resident
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Resident Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_resident
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=369"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Resident,resident
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: verified_population
        label: Verified Population
        value_format:
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: health_screening.Total_population
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
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1301"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
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
      table_calculations: []
      pivots: []
    listen:
    - Toggle: health_screening.toggle_IR
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Last Update Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    - Toggle: health_screening.toggle_IR
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Last Update Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    row: 3
    col: 8
    width: 16
    height: 4
  - name: Hud's Wise Counts
    title: Hud's Wise Counts
    note_state: collapsed
    note_display: hover
    note_text: HUD Wise - Total population, Resident status wise population and Verified
      Population
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [family_member_master.resident_status_death, family_member_master.resident_status_migrated,
        family_member_master.resident_status_non_traceable, family_member_master.resident_status_duplicate,
        family_member_master.resident_status_resident, family_member_master.hud_name]
      filters:
        family_member_master.resident_status_concat: -NULL,-"null"
        address_district_master.district_name: ''
        family_member_master.hud_name: ''
        family_member_master.last_update_date: ''
        health_screening.role_toggle: ''
        health_history.facility_directorate_name: ''
      sorts: [family_member_master.resident_status_death desc]
      limit: 5000
      column_limit: 50
      dynamic_fields: [{category: table_calculation, expression: "${family_member_master.resident_status_duplicate}+${family_member_master.resident_status_death}+${family_member_master.resident_status_migrated}+${family_member_master.resident_status_non_traceable}+${family_member_master.resident_status_resident}",
          label: Verified Population, value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, table_calculation: verified_population, _type_hint: number}]
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: center
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order: ["$$$_row_numbers_$$$", family_member_master.hud_name, total_population,
        family_member_master.resident_status_resident, family_member_master.resident_status_death,
        family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
        family_member_master.resident_status_duplicate, family_member_master.count]
      show_totals: true
      show_row_totals: true
      series_labels:
        family_member_master.count: Total Count
        family_member_master.resident_status_non_traceable: Non traceable count
      series_cell_visualizations:
        family_member_master.resident_status_migrated:
          is_active: false
        family_member_master.count:
          is_active: true
        total_verified_population:
          is_active: true
      series_text_format:
        verified_population:
          align: right
      header_font_color: "#fdfffc"
      header_background_color: "#1637e8"
      series_types: {}
      defaults_version: 1
      hidden_fields: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population, family_member_master.hud_name]
      filters:
        family_member_master.hud_name: "-NULL"
      sorts: [health_screening.Total_population desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.hud_name, health_screening.Total_population,
      family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
      family_member_master.resident_status_duplicate, verified_population]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      family_member_master.hud_name: Huds
      family_member_master.resident_status_death: Death
      family_member_master.resident_status_migrated: Migrated
      family_member_master.resident_status_non_traceable: Non Traceable
      family_member_master.resident_status_duplicate: Duplicate
      family_member_master.resident_status_resident: Resident
    series_column_widths:
      health_screening.Total_population: 119
      family_member_master.hud_name: 104
      family_member_master.resident_status_resident: 147
      family_member_master.resident_status_migrated: 136
      family_member_master.resident_status_non_traceable: 133
      family_member_master.resident_status_duplicate: 127
      family_member_master.resident_status_death: 138
      verified_population: 143
    series_cell_visualizations:
      family_member_master.resident_status_death:
        is_active: false
    series_text_format:
      verified_population:
        align: center
      health_screening.Total_population:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcf9ff"
    header_background_color: "#1c26e8"
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
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Family member Master Death Count
        label_from_parameter:
        label_short: Death Count
        map_layer:
        name: family_member_master.resident_status_death
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Death Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_death
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=399"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Dead
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
        label: Family member Master Migrated Count
        label_from_parameter:
        label_short: Migrated Count
        map_layer:
        name: family_member_master.resident_status_migrated
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Migrated Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_migrated
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=380"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: migrated_out,Migrated out
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
        label: Family member Master NT Count
        label_from_parameter:
        label_short: NT Count
        map_layer:
        name: family_member_master.resident_status_non_traceable
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: NT Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_non_traceable
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=421"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Non traceable
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
        label: Family member Master Duplicate Count
        label_from_parameter:
        label_short: Duplicate Count
        map_layer:
        name: family_member_master.resident_status_duplicate
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Duplicate Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_duplicate
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=410"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Duplicate
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
        label: Family member Master Resident Count
        label_from_parameter:
        label_short: Resident Count
        map_layer:
        name: family_member_master.resident_status_resident
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Resident Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_resident
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=369"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Resident,resident
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: verified_population
        label: Verified Population
        value_format:
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: health_screening.Total_population
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
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1301"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
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
        dimension_group:
        error:
        field_group_variant: Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.hud_name
        suggest_explore: family_member_master
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
      table_calculations: []
      pivots: []
    hide_totals: false
    hide_row_totals: false
    listen:
    - Toggle: health_screening.toggle_IR
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Last Update Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    - Toggle: health_screening.toggle_IR
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Last Update Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    row: 7
    col: 8
    width: 16
    height: 4
  - name: Block's Wise Counts
    title: Block's Wise Counts
    note_state: collapsed
    note_display: hover
    note_text: Block Wise - Total population, Resident status wise population and
      Verified Population
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [family_member_master.resident_status_death, family_member_master.resident_status_migrated,
        family_member_master.resident_status_non_traceable, family_member_master.resident_status_duplicate,
        family_member_master.resident_status_resident, family_member_master.block_name]
      filters:
        family_member_master.resident_status_concat: -NULL,-"null"
        address_district_master.district_name: ''
        address_block_master.block_name: ''
        family_member_master.hud_name: ''
        family_member_master.last_update_date: ''
        health_screening.role_toggle: ''
        health_history.facility_directorate_name: ''
      sorts: [family_member_master.resident_status_death desc]
      limit: 5000
      column_limit: 50
      dynamic_fields: [{category: table_calculation, expression: "${family_member_master.resident_status_duplicate}+${family_member_master.resident_status_death}+${family_member_master.resident_status_migrated}+${family_member_master.resident_status_non_traceable}+${family_member_master.resident_status_resident}",
          label: Verified Population, value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, table_calculation: verified_population, _type_hint: number}]
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order: ["$$$_row_numbers_$$$", family_member_master.block_name, total_population,
        family_member_master.resident_status_resident, family_member_master.resident_status_death,
        family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
        family_member_master.resident_status_duplicate, family_member_master.count]
      show_totals: true
      show_row_totals: true
      series_labels:
        family_member_master.count: Total Count
        family_member_master.resident_status_non_traceable: Non traceable count
      series_cell_visualizations:
        family_member_master.resident_status_migrated:
          is_active: false
        family_member_master.count:
          is_active: true
        total_verified_population:
          is_active: true
      header_font_color: "#fdfffc"
      header_background_color: "#1637e8"
      conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
          font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
                min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
              mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
          strikethrough: false, fields: !!null ''}]
      series_types: {}
      defaults_version: 1
      hidden_fields: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.block_name, health_screening.Total_population]
      filters:
        family_member_master.block_name: "-NULL"
      sorts: [health_screening.Total_population desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.block_name, health_screening.Total_population,
      family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
      family_member_master.resident_status_duplicate, total_verified_population]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      family_member_master.block_name: Blocks
      family_member_master.resident_status_death: Death
      family_member_master.resident_status_migrated: Migrated
      family_member_master.resident_status_non_traceable: Non Traceable
      family_member_master.resident_status_duplicate: Duplicate
      family_member_master.resident_status_resident: Resident
    series_column_widths:
      health_screening.Total_population: 112
      family_member_master.resident_status_resident: 141
      family_member_master.resident_status_death: 134
      family_member_master.resident_status_non_traceable: 127
      family_member_master.resident_status_migrated: 136
      family_member_master.resident_status_duplicate: 139
      family_member_master.block_name: 116
      verified_population: 137
    series_cell_visualizations:
      family_member_master.resident_status_death:
        is_active: false
    series_text_format:
      verified_population:
        align: center
      health_screening.Total_population:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcffff"
    header_background_color: "#1c26e8"
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
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Family member Master Death Count
        label_from_parameter:
        label_short: Death Count
        map_layer:
        name: family_member_master.resident_status_death
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Death Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_death
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=399"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Dead
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
        label: Family member Master Migrated Count
        label_from_parameter:
        label_short: Migrated Count
        map_layer:
        name: family_member_master.resident_status_migrated
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Migrated Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_migrated
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=380"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: migrated_out,Migrated out
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
        label: Family member Master NT Count
        label_from_parameter:
        label_short: NT Count
        map_layer:
        name: family_member_master.resident_status_non_traceable
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: NT Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_non_traceable
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=421"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Non traceable
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
        label: Family member Master Duplicate Count
        label_from_parameter:
        label_short: Duplicate Count
        map_layer:
        name: family_member_master.resident_status_duplicate
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Duplicate Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_duplicate
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=410"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Duplicate
        aggregate: true
        sorted:
          desc: true
          sort_index: 0
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
        label: Family member Master Resident Count
        label_from_parameter:
        label_short: Resident Count
        map_layer:
        name: family_member_master.resident_status_resident
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Resident Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_resident
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=369"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Resident,resident
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: verified_population
        label: Verified Population
        value_format:
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: health_screening.Total_population
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
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1301"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
        sql_case:
        filters:
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
        dimension_group:
        error:
        field_group_variant: Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.block_name
        suggest_explore: family_member_master
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
      table_calculations: []
      pivots: []
    hide_totals: false
    hide_row_totals: false
    sorts: [family_member_master.resident_status_duplicate desc]
    listen:
    - Toggle: health_screening.toggle_IR
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Last Update Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    - Toggle: health_screening.toggle_IR
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Last Update Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    row: 11
    col: 8
    width: 16
    height: 4
  - name: Village's Wise Counts
    title: Village's Wise Counts
    note_state: collapsed
    note_display: hover
    note_text: Village Wise - Total population, Resident status wise population and
      Verified Population
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [family_member_master.resident_status_death, family_member_master.resident_status_migrated,
        family_member_master.resident_status_non_traceable, family_member_master.resident_status_duplicate,
        family_member_master.resident_status_resident, family_member_master.village_name]
      filters:
        family_member_master.resident_status_concat: -NULL,-"null"
        address_district_master.district_name: ''
        address_block_master.block_name: ''
        family_member_master.hud_name: ''
        family_member_master.last_update_date: ''
        health_screening.role_toggle: ''
        health_history.facility_directorate_name: ''
      sorts: [family_member_master.resident_status_death desc]
      limit: 5000
      column_limit: 50
      dynamic_fields: [{category: table_calculation, expression: "${family_member_master.resident_status_duplicate}+${family_member_master.resident_status_death}+${family_member_master.resident_status_migrated}+${family_member_master.resident_status_non_traceable}+${family_member_master.resident_status_resident}",
          label: Verified Population, value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, table_calculation: verified_population, _type_hint: number}]
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: center
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order: ["$$$_row_numbers_$$$", family_member_master.village_name, total_population,
        family_member_master.resident_status_resident, family_member_master.resident_status_death,
        family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
        family_member_master.resident_status_duplicate, family_member_master.count]
      show_totals: true
      show_row_totals: true
      series_labels:
        family_member_master.count: Total Count
        family_member_master.resident_status_non_traceable: Non traceable
        family_member_master.village_name: Villages
        family_member_master.resident_status_death: Death
        family_member_master.resident_status_migrated: Migrated
        family_member_master.resident_status_duplicate: Duplicate
        family_member_master.resident_status_resident: Resident
      series_cell_visualizations:
        family_member_master.resident_status_migrated:
          is_active: false
        family_member_master.count:
          is_active: true
        total_verification_population:
          is_active: false
      series_text_format:
        total_verification_population:
          align: right
      header_font_color: "#fdfffc"
      header_background_color: "#1637e8"
      series_types: {}
      defaults_version: 1
      hidden_fields: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.village_name, health_screening.Total_population]
      filters:
        family_member_master.village_name: "-NULL"
      sorts: [health_screening.Total_population desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.village_name
        source_field_name: family_member_master.village_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.village_name, total_population_cal,
      family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
      family_member_master.resident_status_duplicate, verified_population]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      family_member_master.resident_status_death: Death
      family_member_master.village_name: Villages
      family_member_master.resident_status_migrated: Migrated
      family_member_master.resident_status_non_traceable: Non Traceable
      family_member_master.resident_status_duplicate: Duplicate
      family_member_master.resident_status_resident: Resident
      total_population_cal: Total Population
    series_column_widths:
      family_member_master.resident_status_resident: 137
      family_member_master.resident_status_death: 135
      family_member_master.resident_status_migrated: 139
      family_member_master.resident_status_non_traceable: 137
      family_member_master.resident_status_duplicate: 136
      health_screening.Total_population: 122
      family_member_master.village_name: 123
      verified_population: 126
      total_population_cal: 113
    series_cell_visualizations:
      family_member_master.resident_status_death:
        is_active: false
    series_text_format:
      total_population_cal:
        align: center
      verified_population:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fdfffc"
    header_background_color: "#1c26e8"
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
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Family member Master Death Count
        label_from_parameter:
        label_short: Death Count
        map_layer:
        name: family_member_master.resident_status_death
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Death Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_death
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=399"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Dead
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
        label: Family member Master Migrated Count
        label_from_parameter:
        label_short: Migrated Count
        map_layer:
        name: family_member_master.resident_status_migrated
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Migrated Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_migrated
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=380"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: migrated_out,Migrated out
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
        label: Family member Master NT Count
        label_from_parameter:
        label_short: NT Count
        map_layer:
        name: family_member_master.resident_status_non_traceable
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: NT Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_non_traceable
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=421"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Non traceable
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
        label: Family member Master Duplicate Count
        label_from_parameter:
        label_short: Duplicate Count
        map_layer:
        name: family_member_master.resident_status_duplicate
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Duplicate Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_duplicate
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=410"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Duplicate
        aggregate: true
        sorted:
          desc: true
          sort_index: 0
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
        label: Family member Master Resident Count
        label_from_parameter:
        label_short: Resident Count
        map_layer:
        name: family_member_master.resident_status_resident
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
        view: family_member_master
        view_label: Family member Master
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Resident Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_resident
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=369"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Resident,resident
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: verified_population
        label: Verified Population
        value_format:
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: health_screening.Total_population
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
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1301"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
        sql_case:
        filters:
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
        label: Family member Master Village Name
        label_from_parameter:
        label_short: Village Name
        map_layer:
        name: family_member_master.village_name
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
        dimension_group:
        error:
        field_group_variant: Village Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.village_name
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=293"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.village_name "
        sql_case:
        filters:
      table_calculations:
      - label: Total Population cal
        name: total_population_cal
        expression: if(${health_screening.Total_population}>0,${health_screening.Total_population},0)
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
    hidden_fields: [health_screening.Total_population]
    hide_totals: false
    hide_row_totals: false
    sorts: [family_member_master.resident_status_duplicate desc]
    dynamic_fields: [{category: table_calculation, expression: 'if(${health_screening.Total_population}>0,${health_screening.Total_population},0)',
        label: Total Population cal, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_population_cal, _type_hint: number}]
    listen:
    - Toggle: health_screening.toggle_IR
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Last Update Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    - Toggle: health_screening.toggle_IR
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Last Update Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    row: 15
    col: 8
    width: 16
    height: 5
  - title: Families Added
    name: Families Added
    model: tnphr
    explore: family_master
    type: single_value
    fields: [family_master.family_count]
    filters:
      family_master.reside_status: Permanent
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
    single_value_title: Families Added
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      family_master.family_count:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: New families  added
    listen:
      Districts: family_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      Villages: family_master.village_name
      Last Update Date: facility_registry.last_update_date
    row: 6
    col: 4
    width: 4
    height: 3
  - title: Members Status
    name: Members Status
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_duplicate, family_member_master.resident_status_migrated,
      family_member_master.resident_status_non_traceable]
    filters:
      family_member_master.resident_status_concat: -NULL,-"null"
      health_screening.role_toggle: ''
      health_screening.toggle_IR: ''
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
    x_axis_reversed: true
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: family_member_master.resident_status_resident,
            id: family_member_master.resident_status_resident, name: Resident}, {
            axisId: family_member_master.resident_status_death, id: family_member_master.resident_status_death,
            name: Death}, {axisId: family_member_master.resident_status_duplicate,
            id: family_member_master.resident_status_duplicate, name: Duplicate},
          {axisId: family_member_master.resident_status_migrated, id: family_member_master.resident_status_migrated,
            name: Migrated}, {axisId: family_member_master.resident_status_non_traceable,
            id: family_member_master.resident_status_non_traceable, name: Non Traceable}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Reside Status
    series_types: {}
    series_labels:
      family_member_master.resident_status_resident: Resident
      family_member_master.resident_status_death: Death
      family_member_master.resident_status_duplicate: Duplicate
      family_member_master.resident_status_migrated: Migrated
      family_member_master.resident_status_non_traceable: Non Traceable
    custom_color_enabled: true
    custom_color: "#1A73E8"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Number of members with reside status
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Last Update Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    row: 15
    col: 0
    width: 8
    height: 5
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
    field: family_member_master.last_update_date
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
    model: tnphr
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
    model: tnphr
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
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: family_member_master.block_name
  - name: Villages
    title: Villages
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: family_member_master.village_name
  - name: Directorate Name
    title: Directorate Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr
    explore: facility_registry
    listens_to_filters: []
    field: facility_directorate_master.directorate_name
  - name: Toggle
    title: Toggle
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
      options: []
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.toggle_IR
