- dashboard: cohort_data_tool
  title: Cohort Data Tool
  layout: newspaper
  elements:
  - title: Cohort Table
    name: Cohort Table
    model: thelook
    explore: cohorts
    type: table
    fields:
    - order_items.months_since_signup
    - cohort_size.cohort
    - cohort_size.metric
    pivots:
    - cohort_size.cohort
    filters:
      order_items.months_since_signup: "[0, 12]"
      users.created_date: 8 months ago for 8 months
    sorts:
    - cohort_size.cohort 0
    - order_items.months_since_signup
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - order_items.months_since_signup
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    series_types: {}
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
    listen:
      Cohort: cohort_size.cohort_filter
      Metric: cohort_size.metric_filter
    row: 0
    col: 6
    width: 18
    height: 6
  - title: Cohort Chart
    name: Cohort Chart
    model: thelook
    explore: cohorts
    type: looker_line
    fields:
    - order_items.months_since_signup
    - cohort_size.cohort
    - cohort_size.metric
    pivots:
    - cohort_size.cohort
    filters:
      order_items.months_since_signup: "[0, 12]"
      users.created_date: 8 months ago for 8 months
    sorts:
    - cohort_size.cohort 0
    - order_items.months_since_signup
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - order_items.months_since_signup
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
    listen:
      Cohort: cohort_size.cohort_filter
      Metric: cohort_size.metric_filter
    row: 6
    col: 0
    width: 24
    height: 7
  - title: Cohort Size
    name: Cohort Size
    model: thelook
    explore: cohorts
    type: table
    fields:
    - cohort_size.cohort
    - cohort_size.cohort_size
    filters:
      users.created_date: 8 months ago for 8 months
    sorts:
    - cohort_size.cohort 0
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields:
    - order_items.months_since_signup
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    series_types: {}
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
    listen:
      Cohort: cohort_size.cohort_filter
      Metric: cohort_size.metric_filter
    row: 0
    col: 0
    width: 6
    height: 6
  filters:
  - name: Cohort
    title: Cohort
    type: field_filter
    default_value: User Signup Month
    model: thelook
    explore: cohorts
    field: cohort_size.cohort_filter
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Metric
    title: Metric
    type: field_filter
    default_value: User Retention
    model: thelook
    explore: cohorts
    field: cohort_size.metric_filter
    listens_to_filters: []
    allow_multiple_values: true
    required: false




- dashboard: web_analytics_data_tool
  title: Web Analytics Data Tool
  layout: newspaper
  embed_style:
    background_color: "#8a8b8c"
    show_title: true
    title_color: "#ffffff"
    show_filters_bar: true
    tile_text_color: "#ffffff"
    text_tile_text_color: "#c4bfbf"
  elements:
  - title: Web Traffic
    name: Web Traffic
    model: thelook
    explore: data_tool
    type: looker_line
    fields:
    - data_tool.timeframe
    - data_tool.primary_metric
    - data_tool.second_metric
    sorts:
    - data_tool.timeframe
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: data_tool.primary_metric
        name: Users
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: data_tool.second_metric
        name: Bounce Rate
    colors:
    - 'palette: Looker Classic'
    series_colors: {}
    listen:
      Date Range: data_tool.event_date
      Timeframe: data_tool.timeframe_filter
      Primary Metric: data_tool.primary_metric_filter
      Second Metric: data_tool.second_metric_filter
    row: 4
    col: 0
    width: 24
    height: 8
  - title: Users Today
    name: Users Today
    model: thelook
    explore: data_tool
    type: single_value
    fields:
    - users.count
    - data_tool.event_date
    fill_fields:
    - data_tool.event_date
    filters:
      data_tool.event_date: 2 days ago for 2 days
    sorts:
    - data_tool.event_date desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_change
      label: percent change
      expression: "${users.count}/offset(${users.count},1) - 1"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    comparison_label: vs Yesterday
    row: 0
    col: 0
    width: 4
    height: 4
  - title: Visitors Today
    name: Visitors Today
    model: thelook
    explore: data_tool
    type: single_value
    fields:
    - data_tool.unique_visitors
    - data_tool.event_date
    fill_fields:
    - data_tool.event_date
    filters:
      data_tool.event_date: 2 days ago for 2 days
    sorts:
    - data_tool.event_date desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_change
      label: percent change
      expression: "${data_tool.unique_visitors}/offset(${data_tool.unique_visitors},1)\
        \ - 1"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    single_value_title: ''
    comparison_label: vs Yesterday
    row: 0
    col: 4
    width: 4
    height: 4
  - title: Sessions Today
    name: Sessions Today
    model: thelook
    explore: data_tool
    type: single_value
    fields:
    - sessions.count
    - sessions.session_start_date
    fill_fields:
    - sessions.session_start_date
    filters:
      sessions.session_start_date: 2 days ago for 2 days
    sorts:
    - sessions.session_start_date desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_change
      label: percent change
      expression: "${sessions.count}/offset(${sessions.count},1) - 1"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    comparison_label: vs Yesterday
    row: 0
    col: 8
    width: 4
    height: 4
  - title: Bounce Rate Today
    name: Bounce Rate Today
    model: thelook
    explore: data_tool
    type: single_value
    fields:
    - data_tool.bounce_rate
    - sessions.session_start_date
    fill_fields:
    - sessions.session_start_date
    filters:
      sessions.session_start_date: 2 days ago for 2 days
    sorts:
    - sessions.session_start_date desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_change
      label: percent change
      expression: "${data_tool.bounce_rate}/offset(${data_tool.bounce_rate},1) - 1"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    comparison_label: vs Yesterday
    row: 0
    col: 16
    width: 4
    height: 4
  - title: Conversion Rate Today
    name: Conversion Rate Today
    model: thelook
    explore: data_tool
    type: single_value
    fields:
    - sessions.overall_conversion
    - sessions.session_start_date
    fill_fields:
    - sessions.session_start_date
    filters:
      sessions.session_start_date: 2 days ago for 2 days
    sorts:
    - sessions.session_start_date desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_change
      label: percent change
      expression: "${sessions.overall_conversion}/offset(${sessions.overall_conversion},1)\
        \ - 1"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    comparison_label: vs Yesterday
    row: 0
    col: 20
    width: 4
    height: 4
  - title: Orders Today
    name: Orders Today
    model: thelook
    explore: data_tool
    type: single_value
    fields:
    - sessions.count_purchase
    - sessions.session_start_date
    fill_fields:
    - sessions.session_start_date
    filters:
      sessions.session_start_date: 2 days ago for 2 days
    sorts:
    - sessions.session_start_date desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_change
      label: percent change
      expression: "${sessions.count_purchase}/offset(${sessions.count_purchase},1)\
        \ - 1"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    comparison_label: vs Yesterday
    row: 0
    col: 12
    width: 4
    height: 4
  filters:
  - name: Timeframe
    title: Timeframe
    type: field_filter
    default_value: Week
    model: thelook
    explore: data_tool
    field: data_tool.timeframe_filter
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Primary Metric
    title: Primary Metric
    type: field_filter
    default_value: Users
    model: thelook
    explore: data_tool
    field: data_tool.primary_metric_filter
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Second Metric
    title: Second Metric
    type: field_filter
    default_value: Conversion Rate
    model: thelook
    explore: data_tool
    field: data_tool.second_metric_filter
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Date Range
    title: Date Range
    type: date_filter
    default_value: 24 weeks ago for 24 weeks
    allow_multiple_values: true
    required: false