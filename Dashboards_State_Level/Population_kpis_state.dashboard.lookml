- dashboard: population_kpis_v1_0_4
  title: Population KPIs v1.0.4
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: New Tile
    name: New Tile
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count, family_member_master.resident_status_resident]
    filters:
      family_member_master.resident_status_concat: -NULL,-"null"
      address_district_master.district_name: ''
      family_member_master.last_update_date: ''
      health_screening.role_toggle: ''
    sorts: [total_population desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: total_population, label: Total Population,
        expression: "${family_member_master.Male_Population}+${family_member_master.Female_Population}+${family_member_master.Other_Population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    single_value_title: Resident Population
    value_format: ''
    comparison_label: Total Population (Residence)
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#12B5CB",
        font_color: "#030202", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_labels:
      family_member_master.count: Total Count
      family_member_master.resident_status_non_traceable: Non Traceable count
    series_collapsed:
      family_member_master.district_name: true
      family_member_master.hud_name: true
      family_member_master.block_name: true
      family_member_master.village_name: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, family_member_master.hud_name,
      family_member_master.block_name, family_member_master.village_name, family_member_master.village_type,
      total_population, family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
      family_member_master.resident_status_duplicate]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      family_member_master.resident_status_migrated:
        is_active: false
      family_member_master.count:
        is_active: true
    header_font_color: "#fdfffc"
    header_background_color: "#1637e8"
    series_types: {}
    defaults_version: 1
    hidden_fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count]
    listen:
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 7
    col: 0
    width: 5
    height: 5
  - title: New Tile
    name: New Tile (2)
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count, family_member_master.resident_status_death]
    filters:
      family_member_master.resident_status_concat: -NULL,-"null"
      address_district_master.district_name: ''
      family_member_master.last_update_date: ''
      health_screening.role_toggle: ''
    sorts: [total_population desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: total_population, label: Total Population,
        expression: "${family_member_master.Male_Population}+${family_member_master.Female_Population}+${family_member_master.Other_Population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#80868B"
    single_value_title: Death
    comparison_label: Total Population (Residence)
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#c3ccd1",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_labels:
      family_member_master.count: Total Count
      family_member_master.resident_status_non_traceable: Non Traceable count
    series_collapsed:
      family_member_master.district_name: true
      family_member_master.hud_name: true
      family_member_master.block_name: true
      family_member_master.village_name: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, family_member_master.hud_name,
      family_member_master.block_name, family_member_master.village_name, family_member_master.village_type,
      total_population, family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
      family_member_master.resident_status_duplicate]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      family_member_master.resident_status_migrated:
        is_active: false
      family_member_master.count:
        is_active: true
    header_font_color: "#fdfffc"
    header_background_color: "#1637e8"
    series_types: {}
    defaults_version: 1
    hidden_fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count]
    listen:
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 7
    col: 20
    width: 4
    height: 5
  - title: New Tile
    name: New Tile (3)
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count, family_member_master.resident_status_migrated]
    filters:
      family_member_master.resident_status_concat: -NULL,-"null"
      address_district_master.district_name: ''
      family_member_master.last_update_date: ''
      health_screening.role_toggle: ''
    sorts: [total_population desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: total_population, label: Total Population,
        expression: "${family_member_master.Male_Population}+${family_member_master.Female_Population}+${family_member_master.Other_Population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#EA4335"
    single_value_title: Migrated
    comparison_label: Total Population (Residence)
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#faba23",
        font_color: "#030303", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_labels:
      family_member_master.count: Total Count
      family_member_master.resident_status_non_traceable: Non Traceable count
    series_collapsed:
      family_member_master.district_name: true
      family_member_master.hud_name: true
      family_member_master.block_name: true
      family_member_master.village_name: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, family_member_master.hud_name,
      family_member_master.block_name, family_member_master.village_name, family_member_master.village_type,
      total_population, family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
      family_member_master.resident_status_duplicate]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      family_member_master.resident_status_migrated:
        is_active: false
      family_member_master.count:
        is_active: true
    header_font_color: "#fdfffc"
    header_background_color: "#1637e8"
    series_types: {}
    defaults_version: 1
    hidden_fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count]
    listen:
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 7
    col: 5
    width: 5
    height: 5
  - title: NT Count
    name: NT Count
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count, family_member_master.resident_status_non_traceable]
    filters:
      family_member_master.resident_status_concat: -NULL,-"null"
      address_district_master.district_name: ''
      family_member_master.last_update_date: ''
      health_screening.role_toggle: ''
    sorts: [total_population desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: total_population, label: Total Population,
        expression: "${family_member_master.Male_Population}+${family_member_master.Female_Population}+${family_member_master.Other_Population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#12B5CB"
    single_value_title: Non Traceable
    comparison_label: Total Population (Residence)
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#b06bf5",
        font_color: "#030303", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_labels:
      family_member_master.count: Total Count
      family_member_master.resident_status_non_traceable: Non Traceable count
    series_collapsed:
      family_member_master.district_name: true
      family_member_master.hud_name: true
      family_member_master.block_name: true
      family_member_master.village_name: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, family_member_master.hud_name,
      family_member_master.block_name, family_member_master.village_name, family_member_master.village_type,
      total_population, family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
      family_member_master.resident_status_duplicate]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      family_member_master.resident_status_migrated:
        is_active: false
      family_member_master.count:
        is_active: true
    header_font_color: "#fdfffc"
    header_background_color: "#1637e8"
    series_types: {}
    defaults_version: 1
    hidden_fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count]
    listen:
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 7
    col: 10
    width: 5
    height: 5
  - title: Duplicate Count
    name: Duplicate Count
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count, family_member_master.resident_status_duplicate]
    filters:
      family_member_master.resident_status_concat: -NULL,-"null"
      address_district_master.district_name: ''
      family_member_master.last_update_date: ''
      health_screening.role_toggle: ''
    sorts: [total_population desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: total_population, label: Total Population,
        expression: "${family_member_master.Male_Population}+${family_member_master.Female_Population}+${family_member_master.Other_Population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#80868B"
    single_value_title: Duplicate
    comparison_label: Total Population (Residence)
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#ff7c54",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_labels:
      family_member_master.count: Total Count
      family_member_master.resident_status_non_traceable: Non Traceable count
    series_collapsed:
      family_member_master.district_name: true
      family_member_master.hud_name: true
      family_member_master.block_name: true
      family_member_master.village_name: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, family_member_master.hud_name,
      family_member_master.block_name, family_member_master.village_name, family_member_master.village_type,
      total_population, family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
      family_member_master.resident_status_duplicate]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      family_member_master.resident_status_migrated:
        is_active: false
      family_member_master.count:
        is_active: true
    header_font_color: "#fdfffc"
    header_background_color: "#1637e8"
    series_types: {}
    defaults_version: 1
    hidden_fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count]
    listen:
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 7
    col: 15
    width: 5
    height: 5
  - title: Total Population
    name: Total Population
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Total_population]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: ''
    conditional_formatting: []
    defaults_version: 1
    hidden_fields: [total_population]
    listen:
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 3
    col: 0
    width: 8
    height: 4
  - name: New Tile (4)
    title: New Tile
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [family_member_master.count]
      filters:
        family_member_master.resident_status: -Dead,-Duplicate,-Migrated out,-Resident,-resident,-"migrated_out",-Non
          traceable
      limit: 500
      column_limit: 50
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Total_population]
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Population Non Verified
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: of Total Population
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [health_screening.Total_population, percent, calculation_1]
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'round(${family_member_master.count}/${health_screening.Total_population}*100,2)',
        label: percent, value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        table_calculation: percent, _type_hint: number}, {category: table_calculation,
        expression: 'concat(${percent},"%")', label: Value, value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, table_calculation: value,
        _type_hint: string}]
    listen:
    - Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    - Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 3
    col: 16
    width: 8
    height: 4
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
  - title: Population KPI
    name: Population KPI
    model: tnphr_state_level
    explore: family_master
    type: table
    fields: [family_member_master.district_name, family_member_master.hud_name, family_member_master.block_name,
      family_member_master.village_name, family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.resident_status_death,
      family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
      family_member_master.resident_status_duplicate, family_member_master.count,
      family_member_master.resident_status_resident, family_member_master.village_type,
      family_member_master.Population_verified]
    filters:
      family_member_master.last_update_date: ''
      health_screening.role_toggle: ''
      family_member_master.district_name: "-NULL"
    sorts: [family_member_master.district_name, family_member_master.hud_name, family_member_master.block_name,
      family_member_master.village_name, family_member_master.resident_status_death
        desc]
    subtotals: [family_member_master.district_name, family_member_master.hud_name,
      family_member_master.block_name, family_member_master.village_name]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: total_population, label: Total Population,
        expression: "${family_member_master.Male_Population}+${family_member_master.Female_Population}+${family_member_master.Other_Population}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: true
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: true
    conditional_formatting_include_nulls: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: [family_member_master.district_name, family_member_master.hud_name,
      family_member_master.block_name, family_member_master.village_name, family_member_master.village_type,
      total_population, family_member_master.Population_verified, family_member_master.resident_status_resident,
      family_member_master.resident_status_death, family_member_master.resident_status_migrated,
      family_member_master.resident_status_non_traceable, family_member_master.resident_status_duplicate]
    show_totals: true
    show_row_totals: true
    series_labels:
      family_member_master.count: Total Count
      family_member_master.resident_status_non_traceable: Non Traceable
      family_member_master.resident_status_resident: Resident Population
      family_member_master.resident_status_migrated: Migrated
      family_member_master.resident_status_death: Death
      family_member_master.resident_status_duplicate: Duplicate
      family_member_master.district_name: Districts
      family_member_master.hud_name: Huds
      family_member_master.block_name: Blocks
      family_member_master.village_name: Villages
    series_cell_visualizations:
      family_member_master.resident_status_migrated:
        is_active: false
      family_member_master.count:
        is_active: true
    series_text_format:
      family_member_master.district_name:
        align: left
      family_member_master.hud_name:
        align: left
      family_member_master.village_type:
        align: left
      total_population:
        align: right
      family_member_master.block_name:
        align: left
      family_member_master.village_name:
        align: left
    series_collapsed:
      family_member_master.district_name: true
      family_member_master.hud_name: true
      family_member_master.block_name: true
      family_member_master.village_name: true
    header_font_color: "#fdfffc"
    header_background_color: "#1637e8"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          custom: {id: d54d697e-adbb-1a7a-2f12-06af048a1f0c, label: Custom, type: continuous,
            stops: [{color: "#82828a", offset: 0}, {color: "#FFFFFF", offset: 50},
              {color: "#dbd8e8", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [family_member_master.resident_status_death]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count]
    series_column_widths:
      family_member_master.Population_verified: 215
    listen:
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 12
    col: 0
    width: 24
    height: 7
  - name: Population Verified
    title: Population Verified
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [family_member_master.count]
      filters:
        family_member_master.resident_status: "-NULL"
        family_member_master.resident_status_concat: "-NULL"
      limit: 500
      column_limit: 50
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields: []
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.Total_population]
      filters:
        family_member_master.gender: "-NULL"
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_1
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Population Verified
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: of Total Population
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [health_screening.Total_population, percent, calculation_1]
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'round(${family_member_master.count}/${health_screening.Total_population}*100,2)',
        label: percent, value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        table_calculation: percent, _type_hint: number}, {category: table_calculation,
        expression: 'concat(${percent},"%")', label: Value, value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, table_calculation: value,
        _type_hint: string}]
    listen:
    - Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    - Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 3
    col: 8
    width: 8
    height: 4
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
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_master.district_name
  - name: HUDs
    title: HUDs
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
    field: family_master.hud_name
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
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_master.block_name
  - name: Date
    title: Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: inline
      options: []
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_master.last_update_date
