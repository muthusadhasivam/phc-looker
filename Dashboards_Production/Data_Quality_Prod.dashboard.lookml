- dashboard: data_quality_prod
  title: Data Quality v1.0.1 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: qdrJ3d9777jT4Degxh4H5N
  elements:
  - title: Members with valid Aadhar Card
    name: Members with valid Aadhar Card
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Aadhaar_linked_members]
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
    custom_color: "#260816"
    single_value_title: Members with valid Aadhar Card
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
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    row: 11
    col: 12
    width: 5
    height: 5
  - title: Verified Member
    name: Verified Member
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.gender, family_member_master.count]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.resident_status: Resident,resident,Dead,Death,Duplicate,Migrant,Migrated
        out,Non traceable,Non-traceable,"migrated_out"
      health_screening.role_name: ''
    sorts: [family_member_master.count desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: total_population, label: Total Population,
        expression: 'sum(${family_member_master.count})', value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
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
    custom_color: "#050101"
    hidden_fields: [family_member_master.gender, family_member_master.count]
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
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    row: 11
    col: 17
    width: 6
    height: 5
  - title: Members with street as UnAllocated
    name: Members with street as UnAllocated
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Population_unallocated_to_street]
    filters:
      health_screening.role_name: ''
      drugs_and_services.health_screening_last_update_date: ''
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
    single_value_title: Members with street as UnAllocated
    defaults_version: 1
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    row: 11
    col: 0
    width: 6
    height: 5
  - title: Members with facility as UnAllocated
    name: Members with facility as UnAllocated
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Population_unallocated_to_facility]
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
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    row: 11
    col: 6
    width: 6
    height: 5
  - title: Families with street as UnAllocated
    name: Families with street as UnAllocated
    model: tnphr
    explore: family_master
    type: single_value
    fields: [family_master.family_count_with_unallocated_streets]
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
      Districts: family_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
    row: 3
    col: 0
    width: 6
    height: 5
  - title: Families with facility as UnAllocated
    name: Families with facility as UnAllocated
    model: tnphr
    explore: family_master
    type: single_value
    fields: [family_master.family_count_with_unallocated_facility]
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
      Districts: family_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
    row: 3
    col: 6
    width: 6
    height: 5
  - title: Families with null or empty shop code
    name: Families with null or empty shop code
    model: tnphr
    explore: family_master
    type: single_value
    fields: [family_master.family_count]
    filters:
      family_master.shop_id: NULL,EMPTY
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
      Districts: family_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
    row: 3
    col: 12
    width: 5
    height: 5
  - name: Family
    type: text
    title_text: Family
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 1
    width: 22
    height: 3
  - name: Member
    type: text
    title_text: Member
    subtitle_text: ''
    body_text: ''
    row: 8
    col: 0
    width: 24
    height: 3
  - name: Street
    type: text
    title_text: Street
    subtitle_text: ''
    body_text: ''
    row: 16
    col: 1
    width: 23
    height: 2
  - name: Shop
    type: text
    title_text: Shop
    subtitle_text: ''
    body_text: ''
    row: 23
    col: 0
    width: 24
    height: 3
  - title: streets with facility_id as UnAllocated
    name: streets with facility_id as UnAllocated
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [address_street_master.Street_with_facility_id_as_UnAllocated]
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
      Huds: family_member_master.hud_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
    row: 18
    col: 0
    width: 12
    height: 5
  - title: Streets by facility_level of the mapped facility
    name: Streets by facility_level of the mapped facility
    model: tnphr
    explore: address_street_master
    type: looker_grid
    fields: [facility_registry.facility_level, address_street_master.streets_by_facility_level_of_the_mapped_facility]
    filters:
      facility_registry.facility_level: "-NULL"
    sorts: [address_street_master.streets_by_facility_level_of_the_mapped_facility
        desc]
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 18
    col: 12
    width: 12
    height: 5
  - title: Shops with no mapping to valid street
    name: Shops with no mapping to valid street
    model: tnphr
    explore: shop_street_data_quality
    type: single_value
    fields: [shop_street_data_quality.district, shop_street_data_quality.taluk, shop_street_data_quality.village,
      shop_street_data_quality.count_shop_street_data_quality]
    sorts: [shop_street_data_quality.count_shop_street_data_quality]
    limit: 5000
    dynamic_fields: [{table_calculation: shops_with_no_mapping_to_valid_street, label: Shops
          with no mapping to valid street, expression: 'sum(${shop_street_data_quality.count_shop_street_data_quality})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
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
    hidden_fields: [shop_street_data_quality.district, shop_street_data_quality.taluk,
      shop_street_data_quality.village, shop_street_data_quality.count_shop_street_data_quality]
    listen: {}
    row: 26
    col: 0
    width: 6
    height: 5
  - title: Shops with no mapping to valid street
    name: Shops with no mapping to valid street (2)
    model: tnphr
    explore: shop_street_data_quality
    type: looker_grid
    fields: [shop_street_data_quality.district, shop_street_data_quality.taluk, shop_street_data_quality.village,
      shop_street_data_quality.count_shop_street_data_quality]
    sorts: [shop_street_data_quality.count_shop_street_data_quality]
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
    header_font_size: 12
    rows_font_size: 12
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
    hidden_fields:
    listen: {}
    row: 26
    col: 12
    width: 12
    height: 5
  - title: Families with more than 10 members
    name: Families with more than 10 members
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_data_quality.count_member]
    filters:
      family_data_quality.count_family_data_quality: NOT NULL
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
    hidden_fields: []
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
      Huds: family_member_master.hud_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
    row: 3
    col: 17
    width: 6
    height: 5
  - title: Members with mobile number
    name: Members with mobile number
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Member_With_mobile_number]
    limit: 5000
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
      Huds: family_member_master.hud_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
    row: 38
    col: 0
    width: 6
    height: 4
  - title: Unallocated street in screened
    name: Unallocated street in screened
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Unallocated_street_in_screened]
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
    single_value_title: Members with street as UnAllocated
    defaults_version: 1
    listen:
      Huds: family_member_master.hud_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
    row: 38
    col: 18
    width: 6
    height: 4
  - name: Screened
    type: text
    title_text: Screened
    subtitle_text: ''
    body_text: ''
    row: 31
    col: 0
    width: 24
    height: 3
  - title: Members mapped to Unallocated facility
    name: Members mapped to Unallocated facility
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Population_unallocated_to_facility]
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
      Huds: family_member_master.hud_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
    row: 38
    col: 12
    width: 6
    height: 4
  - title: Members in History but not having screenings
    name: Members in History but not having screenings
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.screening_id, health_history.mtm_beneficiary_avail_service]
    filters:
      health_history.mtm_beneficiary_avail_service: '"\"yes\""'
      health_screening.screening_id: 'NULL'
    sorts: [health_screening.screening_id]
    limit: 5000
    dynamic_fields: [{table_calculation: screened_in_history_but_not_screened_actually,
        label: Screened in History but not screened actually, expression: 'count(${health_history.mtm_beneficiary_avail_service})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
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
    defaults_version: 1
    hidden_fields: [health_screening.screening_id, health_history.mtm_beneficiary_avail_service]
    series_types: {}
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
    listen:
      Huds: family_member_master.hud_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
    row: 34
    col: 0
    width: 8
    height: 4
  - title: Members having screening but not History data
    name: Members having screening but not History data
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_history.Screened_but_no_record_in_history]
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
    hidden_fields: []
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
      Huds: family_member_master.hud_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
    row: 34
    col: 8
    width: 8
    height: 4
  - title: Mobile numbers with more than 10 members associated
    name: Mobile numbers with more than 10 members associated
    model: tnphr
    explore: screening_data_quality
    type: single_value
    fields: [screening_data_quality.count_of_mob_member]
    sorts: [screening_data_quality.count_of_mob_member]
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
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 34
    col: 16
    width: 8
    height: 4
  - title: Not mapped to street
    name: Not mapped to street
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Population_allocated_to_street, health_screening.Total_population]
    filters:
      health_screening.role_name: ''
      drugs_and_services.health_screening_last_update_date: ''
      health_screening.role_toggle: ''
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: not_mapped_to_street, label: Not mapped to
          street, expression: "${health_screening.Total_population}-${family_member_master.Population_allocated_to_street}",
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
    single_value_title: Population mapped with streets
    defaults_version: 1
    hidden_fields: [health_screening.Total_population, family_member_master.Population_allocated_to_street]
    listen:
      Huds: family_member_master.hud_name
      Districts: family_member_master.district_name
      Blocks: family_member_master.block_name
    row: 38
    col: 6
    width: 6
    height: 4
  - title: Shop unallocated to street and not unallocated to shop name
    name: Shop unallocated to street and not unallocated to shop name
    model: tnphr
    explore: shop_data_quality
    type: single_value
    fields: [shop_data_quality.count_shop_data_quality]
    sorts: [shop_data_quality.count_shop_data_quality]
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
    show_null_points: true
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 26
    col: 6
    width: 6
    height: 5
  filters:
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
