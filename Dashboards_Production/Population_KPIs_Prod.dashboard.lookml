- dashboard: population_kpis_prod
  title: Population KPIs v1.0.5 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: quarXOA7Vd9L7JnPJnSZtZ
  elements:
  - title: New Tile
    name: New Tile
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count, family_member_master.resident_status_resident]
    filters:
      family_member_master.resident_status_concat: -NULL,-"null"
      address_district_master.district_name: ''
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
    note_state: collapsed
    note_display: hover
    note_text: Count of members who are Residents i.e., members having resident status
      as Resident or resident
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date: family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 7
    col: 0
    width: 5
    height: 5
  - title: New Tile
    name: New Tile (2)
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count, family_member_master.resident_status_death]
    filters:
      family_member_master.resident_status_concat: -NULL,-"null"
      address_district_master.district_name: ''
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
    note_state: collapsed
    note_display: hover
    note_text: " Count of Deaths as per geographic  area"
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date: family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 7
    col: 20
    width: 4
    height: 5
  - title: New Tile
    name: New Tile (3)
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count, family_member_master.resident_status_migrated]
    filters:
      family_member_master.resident_status_concat: -NULL,-"null"
      address_district_master.district_name: ''
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
    note_state: collapsed
    note_display: hover
    note_text: Count of Migrated members who migrated from other geometrical location
      to present location.
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date: family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 7
    col: 5
    width: 5
    height: 5
  - title: NT Count
    name: NT Count
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count, family_member_master.resident_status_non_traceable]
    filters:
      family_member_master.resident_status_concat: -NULL,-"null"
      address_district_master.district_name: ''
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
    note_state: collapsed
    note_display: hover
    note_text: Count of non traceable members due to uncertainty whether they are
      migrated or not.
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date: family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 7
    col: 10
    width: 5
    height: 5
  - title: Duplicate Count
    name: Duplicate Count
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.count, family_member_master.resident_status_duplicate]
    filters:
      family_member_master.resident_status_concat: -NULL,-"null"
      address_district_master.district_name: ''
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
    note_state: collapsed
    note_display: hover
    note_text: 'Duplicate counts captured within total counts of population '
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date: family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 7
    col: 15
    width: 5
    height: 5
  - title: Total Population
    name: Total Population
    model: tnphr
    explore: family_member_master
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
    note_state: collapsed
    note_display: hover
    note_text: 'Total count of members '
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Role Name: health_screening.role_name
    row: 3
    col: 0
    width: 8
    height: 4
  - name: New Tile (4)
    title: New Tile
    note_state: collapsed
    note_display: hover
    note_text: Count of members who are verified ( i.e, members having status as Resident,
      Migrated, Dead, Duplicated, etc.)
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [family_member_master.count]
      filters:
        family_member_master.resident_status: "-NULL"
        family_member_master.resident_status_concat: "-NULL"
      limit: 500
      column_limit: 50
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: true
      comparison_type: progress_percentage
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: true
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      single_value_title: Verified Population
      comparison_label: of Total Population
      conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CB342",
          font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
          strikethrough: false, fields: !!null ''}]
      defaults_version: 1
      hidden_fields: [verified_count]
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population]
      filters:
        family_member_master.gender: "-NULL"
      limit: 500
      join_fields: []
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
    hidden_fields: [health_screening.Total_population, percent]
    dynamic_fields: [{category: table_calculation, expression: 'round(${family_member_master.count}/${health_screening.Total_population}*100,2)',
        label: percent, value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        table_calculation: percent, _type_hint: number}, {category: table_calculation,
        expression: 'concat(${percent},"%")', label: Value, value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, table_calculation: value,
        _type_hint: string}]
    listen:
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date: family_member_master.last_update_date
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date: family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 3
    col: 8
    width: 8
    height: 4
  - name: Non Verified
    title: Non Verified
    note_state: collapsed
    note_display: hover
    note_text: Count of members who are non verified ( i.e, members not having any
      status)
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [family_member_master.count]
      filters:
        family_member_master.resident_status: 'NULL'
        family_member_master.resident_status_concat: 'NULL'
      limit: 500
      column_limit: 50
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: progress_percentage
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: true
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CB342",
          font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
          strikethrough: false, fields: !!null ''}]
      defaults_version: 1
      hidden_fields: []
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [health_screening.Total_population]
      limit: 500
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: progress_percentage
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      comparison_label: Non Verified
      defaults_version: 1
      join_fields: []
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
    hidden_fields: [health_screening.Total_population, percent]
    dynamic_fields: [{category: table_calculation, expression: 'round(${family_member_master.count}/${health_screening.Total_population}*100,2)',
        label: percent, value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        table_calculation: percent, _type_hint: number}, {category: table_calculation,
        expression: 'concat(${percent},"%")', label: Value, value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, table_calculation: value,
        _type_hint: string}]
    listen:
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date: family_member_master.last_update_date
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date: family_member_master.last_update_date
      Role Name: health_screening.role_name
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
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [family_member_master.district_name, health_screening.Total_population,
        family_member_master.resident_status_death, family_member_master.resident_status_migrated,
        family_member_master.resident_status_non_traceable, family_member_master.resident_status_duplicate,
        family_member_master.resident_status_resident, family_member_master.Population_verified,
        family_member_master.Population_allocated_to_street, family_member_master.Population_given_consent]
      filters:
        family_member_master.last_update_date: ''
        health_screening.role_toggle: ''
        family_member_master.district_name: "-NULL"
        family_member_master.hud_name: ''
        family_member_master.block_name: ''
      sorts: [family_member_master.resident_status_death desc]
      limit: 5000
      column_limit: 50
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
      conditional_formatting_include_totals: true
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, family_member_master.hud_name,
        family_member_master.block_name, family_member_master.village_name, family_member_master.village_type,
        health_screening.Total_population, family_member_master.resident_status_resident,
        family_member_master.resident_status_death, family_member_master.resident_status_migrated,
        family_member_master.resident_status_non_traceable, family_member_master.resident_status_duplicate,
        family_member_master.Population_verified, family_member_master.Population_allocated_to_street,
        family_member_master.Population_given_consent]
      show_totals: true
      show_row_totals: true
      truncate_header: false
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
      series_column_widths:
        family_member_master.hud_name: 199
        family_member_master.block_name: 226
        family_member_master.village_name: 212
        family_member_master.village_type: 101
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
          color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
                min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
              mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
          strikethrough: false, fields: !!null ''}]
      truncate_column_names: true
      series_types: {}
      defaults_version: 1
      hidden_fields: []
      hidden_points_if_no: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.count, family_member_master.district_name]
      filters:
        family_member_master.resident_status: "-NULL"
        family_member_master.resident_status_concat: "-NULL"
      sorts: [family_member_master.count desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.district_name, family_member_master.count]
      filters:
        family_member_master.resident_status: 'NULL'
        family_member_master.resident_status_concat: 'NULL'
      sorts: [family_member_master.count desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, health_screening.Total_population,
      family_member_master.count, family_member_master.Population_verified, q2_family_member_master.count,
      family_member_master.Population_given_consent, family_member_master.Population_allocated_to_street,
      family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
      family_member_master.resident_status_duplicate]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      family_member_master.count: Population Verified
      q2_family_member_master.count: Population Non Verified
    series_column_widths:
      family_member_master.district_name: 225
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      health_screening.Total_population:
        align: center
      family_member_master.Population_verified:
        align: center
      family_member_master.Population_allocated_to_street:
        align: center
      family_member_master.Population_given_consent:
        align: center
      family_member_master.count:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f7fff5"
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
        original_view: health_screening
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1607"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
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
        label: Family Member Master Death Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=407"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Dead,Death
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
        label: Family Member Master Migrated Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=387"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: migrated_out,Migrated out,Migrant
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
        label: Family Member Master NT Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=432"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Non traceable,Non-traceable
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
        label: Family Member Master Duplicate Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=419"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Duplicate
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
        label: Family Member Master Resident Count
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
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=374"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Resident,resident
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
        label: Family Member Master Population Verified in past 4 weeks
        label_from_parameter:
        label_short: Population Verified in past 4 weeks
        map_layer:
        name: family_member_master.Population_verified
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Population Verified in past 4 weeks
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Population_verified
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=498"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id  "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: "-Null"
        - field: family_member_master.last_update_date
          condition: last 4 weeks
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
        label: Family Member Master Population Allocated to Street
        label_from_parameter:
        label_short: Population Allocated to Street
        map_layer:
        name: family_member_master.Population_allocated_to_street
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Population Allocated to Street
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Population_allocated_to_street
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=515"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id  "
        sql_case:
        filters:
        - field: family_member_master.street_name
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
        label: Family Member Master Population Given Consent
        label_from_parameter:
        label_short: Population Given Consent
        map_layer:
        name: family_member_master.Population_given_consent
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Population Given Consent
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Population_given_consent
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=552"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id  "
        sql_case:
        filters:
        - field: family_member_master.consent_status
          condition: RECEIVED
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
        label: Family Member Master Count
        label_from_parameter:
        label_short: Count
        map_layer:
        name: family_member_master.count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=333"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
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
        label: Family Member Master Count
        label_from_parameter:
        label_short: Count
        map_layer:
        name: q2_family_member_master.count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=333"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql:
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
        label: Family Member Master District Name
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
        view_label: Family Member Master
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
    listen:
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Villages: family_member_master.village_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Villages: family_member_master.village_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Villages: family_member_master.village_name
      Role Name: health_screening.role_name
    row: 12
    col: 0
    width: 24
    height: 7
  - name: HUD Wise
    title: HUD Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Total_population, family_member_master.resident_status_death,
        family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
        family_member_master.resident_status_duplicate, family_member_master.resident_status_resident,
        family_member_master.Population_verified, family_member_master.Population_allocated_to_street,
        family_member_master.Population_given_consent, family_member_master.hud_name]
      filters:
        family_member_master.last_update_date: ''
        health_screening.role_toggle: ''
        family_member_master.district_name: "-NULL"
        family_member_master.hud_name: ''
        family_member_master.block_name: ''
      sorts: [family_member_master.resident_status_death desc]
      limit: 5000
      column_limit: 50
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
      conditional_formatting_include_totals: true
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, family_member_master.hud_name,
        family_member_master.block_name, family_member_master.village_name, family_member_master.village_type,
        health_screening.Total_population, family_member_master.resident_status_resident,
        family_member_master.resident_status_death, family_member_master.resident_status_migrated,
        family_member_master.resident_status_non_traceable, family_member_master.resident_status_duplicate,
        family_member_master.Population_verified, family_member_master.Population_allocated_to_street,
        family_member_master.Population_given_consent]
      show_totals: true
      show_row_totals: true
      truncate_header: false
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
      series_column_widths:
        family_member_master.hud_name: 199
        family_member_master.block_name: 226
        family_member_master.village_name: 212
        family_member_master.village_type: 101
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
          color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
                min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
              mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
          strikethrough: false, fields: !!null ''}]
      truncate_column_names: true
      series_types: {}
      defaults_version: 1
      hidden_fields: []
      hidden_points_if_no: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.count, family_member_master.hud_name]
      filters:
        family_member_master.resident_status: "-NULL"
        family_member_master.resident_status_concat: "-NULL"
      sorts: [family_member_master.count desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.count, family_member_master.hud_name]
      filters:
        family_member_master.resident_status: 'NULL'
        family_member_master.resident_status_concat: 'NULL'
      sorts: [family_member_master.count desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.hud_name, health_screening.Total_population,
      family_member_master.count, family_member_master.Population_verified, q2_family_member_master.count,
      family_member_master.Population_given_consent, family_member_master.Population_allocated_to_street,
      family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
      family_member_master.resident_status_duplicate]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      family_member_master.count: Population Verified
      q2_family_member_master.count: Population Non Verified
    series_column_widths:
      family_member_master.hud_name: 225
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      health_screening.Total_population:
        align: center
      family_member_master.Population_verified:
        align: center
      family_member_master.Population_allocated_to_street:
        align: center
      family_member_master.Population_given_consent:
        align: center
      family_member_master.count:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f7fff5"
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
        original_view: health_screening
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1607"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
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
        label: Family Member Master Death Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=407"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Dead,Death
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
        label: Family Member Master Migrated Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=387"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: migrated_out,Migrated out,Migrant
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
        label: Family Member Master NT Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=432"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Non traceable,Non-traceable
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
        label: Family Member Master Duplicate Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=419"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Duplicate
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
        label: Family Member Master Resident Count
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
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=374"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Resident,resident
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
        label: Family Member Master Population Verified in past 4 weeks
        label_from_parameter:
        label_short: Population Verified in past 4 weeks
        map_layer:
        name: family_member_master.Population_verified
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Population Verified in past 4 weeks
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Population_verified
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=498"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id  "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: "-Null"
        - field: family_member_master.last_update_date
          condition: last 4 weeks
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
        label: Family Member Master Population Allocated to Street
        label_from_parameter:
        label_short: Population Allocated to Street
        map_layer:
        name: family_member_master.Population_allocated_to_street
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Population Allocated to Street
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Population_allocated_to_street
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=515"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id  "
        sql_case:
        filters:
        - field: family_member_master.street_name
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
        label: Family Member Master Population Given Consent
        label_from_parameter:
        label_short: Population Given Consent
        map_layer:
        name: family_member_master.Population_given_consent
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Population Given Consent
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Population_given_consent
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=552"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id  "
        sql_case:
        filters:
        - field: family_member_master.consent_status
          condition: RECEIVED
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
        label: Family Member Master Count
        label_from_parameter:
        label_short: Count
        map_layer:
        name: family_member_master.count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=333"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
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
        label: Family Member Master Count
        label_from_parameter:
        label_short: Count
        map_layer:
        name: q2_family_member_master.count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=333"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql:
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
        label: Family Member Master Hud Name
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
        view_label: Family Member Master
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
        times_used: 0
      table_calculations: []
      pivots: []
    listen:
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Villages: family_member_master.village_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Villages: family_member_master.village_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Villages: family_member_master.village_name
      Role Name: health_screening.role_name
    row: 19
    col: 0
    width: 24
    height: 7
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Total_population, family_member_master.resident_status_death,
        family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
        family_member_master.resident_status_duplicate, family_member_master.resident_status_resident,
        family_member_master.Population_verified, family_member_master.Population_allocated_to_street,
        family_member_master.Population_given_consent, family_member_master.block_name]
      filters:
        family_member_master.last_update_date: ''
        health_screening.role_toggle: ''
        family_member_master.district_name: "-NULL"
        family_member_master.hud_name: ''
        family_member_master.block_name: ''
      sorts: [family_member_master.resident_status_death desc]
      limit: 5000
      column_limit: 50
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
      conditional_formatting_include_totals: true
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, family_member_master.hud_name,
        family_member_master.block_name, family_member_master.village_name, family_member_master.village_type,
        health_screening.Total_population, family_member_master.resident_status_resident,
        family_member_master.resident_status_death, family_member_master.resident_status_migrated,
        family_member_master.resident_status_non_traceable, family_member_master.resident_status_duplicate,
        family_member_master.Population_verified, family_member_master.Population_allocated_to_street,
        family_member_master.Population_given_consent]
      show_totals: true
      show_row_totals: true
      truncate_header: false
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
      series_column_widths:
        family_member_master.hud_name: 199
        family_member_master.block_name: 226
        family_member_master.village_name: 212
        family_member_master.village_type: 101
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
          color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
                min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
              mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
          strikethrough: false, fields: !!null ''}]
      truncate_column_names: true
      series_types: {}
      defaults_version: 1
      hidden_fields: []
      hidden_points_if_no: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.count, family_member_master.block_name]
      filters:
        family_member_master.resident_status: "-NULL"
        family_member_master.resident_status_concat: "-NULL"
      sorts: [family_member_master.count desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.count, family_member_master.block_name]
      filters:
        family_member_master.resident_status: 'NULL'
        family_member_master.resident_status_concat: 'NULL'
      sorts: [family_member_master.count desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.block_name, health_screening.Total_population,
      family_member_master.count, family_member_master.Population_verified, q2_family_member_master.count,
      family_member_master.Population_given_consent, family_member_master.Population_allocated_to_street,
      family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
      family_member_master.resident_status_duplicate]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      family_member_master.count: Population Verified
      q2_family_member_master.count: Population Non Verified
    series_column_widths:
      family_member_master.block_name: 225
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      health_screening.Total_population:
        align: center
      family_member_master.Population_verified:
        align: center
      family_member_master.Population_allocated_to_street:
        align: center
      family_member_master.Population_given_consent:
        align: center
      family_member_master.count:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f7fff5"
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
        original_view: health_screening
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1607"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
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
        label: Family Member Master Death Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=407"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Dead,Death
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
        label: Family Member Master Migrated Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=387"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: migrated_out,Migrated out,Migrant
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
        label: Family Member Master NT Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=432"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Non traceable,Non-traceable
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
        label: Family Member Master Duplicate Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=419"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Duplicate
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
        label: Family Member Master Resident Count
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
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=374"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Resident,resident
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
        label: Family Member Master Population Verified in past 4 weeks
        label_from_parameter:
        label_short: Population Verified in past 4 weeks
        map_layer:
        name: family_member_master.Population_verified
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Population Verified in past 4 weeks
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Population_verified
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=498"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id  "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: "-Null"
        - field: family_member_master.last_update_date
          condition: last 4 weeks
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
        label: Family Member Master Population Allocated to Street
        label_from_parameter:
        label_short: Population Allocated to Street
        map_layer:
        name: family_member_master.Population_allocated_to_street
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Population Allocated to Street
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Population_allocated_to_street
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=515"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id  "
        sql_case:
        filters:
        - field: family_member_master.street_name
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
        label: Family Member Master Population Given Consent
        label_from_parameter:
        label_short: Population Given Consent
        map_layer:
        name: family_member_master.Population_given_consent
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Population Given Consent
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Population_given_consent
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=552"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id  "
        sql_case:
        filters:
        - field: family_member_master.consent_status
          condition: RECEIVED
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
        label: Family Member Master Count
        label_from_parameter:
        label_short: Count
        map_layer:
        name: family_member_master.count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=333"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
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
        label: Family Member Master Count
        label_from_parameter:
        label_short: Count
        map_layer:
        name: q2_family_member_master.count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=333"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql:
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
        label: Family Member Master Block Name
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
        view_label: Family Member Master
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
        times_used: 0
      table_calculations: []
      pivots: []
    listen:
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Villages: family_member_master.village_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Villages: family_member_master.village_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Villages: family_member_master.village_name
      Role Name: health_screening.role_name
    row: 26
    col: 0
    width: 24
    height: 7
  - name: Village Wise
    title: Village Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Total_population, family_member_master.resident_status_death,
        family_member_master.resident_status_migrated, family_member_master.resident_status_non_traceable,
        family_member_master.resident_status_duplicate, family_member_master.resident_status_resident,
        family_member_master.Population_verified, family_member_master.Population_allocated_to_street,
        family_member_master.Population_given_consent, family_member_master.village_name,
        family_member_master.village_type]
      filters:
        family_member_master.last_update_date: ''
        health_screening.role_toggle: ''
        family_member_master.district_name: "-NULL"
        family_member_master.hud_name: ''
        family_member_master.block_name: ''
      sorts: [family_member_master.resident_status_death desc]
      limit: 5000
      column_limit: 50
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
      conditional_formatting_include_totals: true
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, family_member_master.hud_name,
        family_member_master.block_name, family_member_master.village_name, family_member_master.village_type,
        health_screening.Total_population, family_member_master.resident_status_resident,
        family_member_master.resident_status_death, family_member_master.resident_status_migrated,
        family_member_master.resident_status_non_traceable, family_member_master.resident_status_duplicate,
        family_member_master.Population_verified, family_member_master.Population_allocated_to_street,
        family_member_master.Population_given_consent]
      show_totals: true
      show_row_totals: true
      truncate_header: false
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
      series_column_widths:
        family_member_master.hud_name: 199
        family_member_master.block_name: 226
        family_member_master.village_name: 212
        family_member_master.village_type: 101
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
          color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
                min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
              mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
          strikethrough: false, fields: !!null ''}]
      truncate_column_names: true
      series_types: {}
      defaults_version: 1
      hidden_fields: []
      hidden_points_if_no: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.count, family_member_master.village_name, family_member_master.village_type]
      filters:
        family_member_master.resident_status: "-NULL"
        family_member_master.resident_status_concat: "-NULL"
      sorts: [family_member_master.count desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.village_name
        source_field_name: family_member_master.village_name
      - field_name: family_member_master.village_type
        source_field_name: family_member_master.village_type
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.count, family_member_master.village_name, family_member_master.village_type]
      filters:
        family_member_master.resident_status: 'NULL'
        family_member_master.resident_status_concat: 'NULL'
      sorts: [family_member_master.count desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.village_name
        source_field_name: family_member_master.village_name
      - field_name: family_member_master.village_type
        source_field_name: family_member_master.village_type
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.village_name, family_member_master.village_type,
      health_screening.Total_population, family_member_master.count, family_member_master.Population_verified,
      q2_family_member_master.count, family_member_master.Population_given_consent,
      family_member_master.Population_allocated_to_street, family_member_master.resident_status_resident,
      family_member_master.resident_status_death, family_member_master.resident_status_migrated,
      family_member_master.resident_status_non_traceable, family_member_master.resident_status_duplicate]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      family_member_master.count: Population Verified
      q2_family_member_master.count: Population Non Verified
    series_column_widths:
      family_member_master.village_name: 225
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      health_screening.Total_population:
        align: center
      family_member_master.Population_verified:
        align: center
      family_member_master.Population_allocated_to_street:
        align: center
      family_member_master.Population_given_consent:
        align: center
      family_member_master.count:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f7fff5"
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
        original_view: health_screening
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1607"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
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
        label: Family Member Master Death Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=407"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Dead,Death
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
        label: Family Member Master Migrated Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=387"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: migrated_out,Migrated out,Migrant
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
        label: Family Member Master NT Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=432"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Non traceable,Non-traceable
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
        label: Family Member Master Duplicate Count
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=419"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Duplicate
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
        label: Family Member Master Resident Count
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
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=374"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Resident,resident
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
        label: Family Member Master Population Verified in past 4 weeks
        label_from_parameter:
        label_short: Population Verified in past 4 weeks
        map_layer:
        name: family_member_master.Population_verified
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Population Verified in past 4 weeks
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Population_verified
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=498"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id  "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: "-Null"
        - field: family_member_master.last_update_date
          condition: last 4 weeks
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
        label: Family Member Master Population Allocated to Street
        label_from_parameter:
        label_short: Population Allocated to Street
        map_layer:
        name: family_member_master.Population_allocated_to_street
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Population Allocated to Street
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Population_allocated_to_street
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=515"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id  "
        sql_case:
        filters:
        - field: family_member_master.street_name
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
        label: Family Member Master Population Given Consent
        label_from_parameter:
        label_short: Population Given Consent
        map_layer:
        name: family_member_master.Population_given_consent
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Population Given Consent
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Population_given_consent
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=552"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id  "
        sql_case:
        filters:
        - field: family_member_master.consent_status
          condition: RECEIVED
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
        label: Family Member Master Count
        label_from_parameter:
        label_short: Count
        map_layer:
        name: family_member_master.count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=333"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
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
        label: Family Member Master Count
        label_from_parameter:
        label_short: Count
        map_layer:
        name: q2_family_member_master.count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=333"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql:
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
        label: Family Member Master Village Name
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
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
        label: Family Member Master Village Type
        label_from_parameter:
        label_short: Village Type
        map_layer:
        name: family_member_master.village_type
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
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Village Type
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.village_type
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=298"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: if (${TABLE}.village_type is null, "Other", ${TABLE}.village_type)
        sql_case:
        filters:
        times_used: 0
      table_calculations: []
      pivots: []
    listen:
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Villages: family_member_master.village_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Villages: family_member_master.village_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Villages: family_member_master.village_name
      Role Name: health_screening.role_name
    row: 33
    col: 0
    width: 24
    height: 9
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
    listens_to_filters: [Villages, Blocks, HUDs]
    field: family_member_master.district_name
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
    model: tnphr
    explore: family_member_master
    listens_to_filters: [Villages, Blocks, Districts]
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
    listens_to_filters: [Villages, HUDs, Districts]
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
    listens_to_filters: [Blocks, HUDs, Districts]
    field: family_member_master.village_name
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
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: family_member_master.last_update_date
  - name: Role Name
    title: Role Name
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
    field: health_screening.role_name
