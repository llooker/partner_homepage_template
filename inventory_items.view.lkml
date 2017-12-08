view: inventory_items {
  # DIMENSIONS #

  dimension: id {
    primary_key: yes
    type: number
  }

  dimension: cost {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.cost ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month, day_of_week, hour_of_day]
    sql: ${TABLE}.created_at ;;
  }

  dimension: product_id {
    hidden: yes
    type: number
  }

  dimension_group: sold {
    type: time
    timeframes: [yesno, time, date, week, month]
    sql: ${TABLE}.sold_at ;;
  }

  dimension: days_in_inventory {
    type: number
    sql: DATEDIFF(${sold_date}, ${created_date}) ;;
  }

  dimension: days_in_inventory_tier {
    type: tier
    sql: ${days_in_inventory} ;;
    tiers: [0, 5, 10, 20, 40, 80, 160, 360]
  }

  # MEASURES #

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: sold_count {
    type: count
    drill_fields: [detail*]

    filters: {
      field: sold
      value: "Yes"
    }
  }

  measure: percent_sold {
    type: number
    value_format_name: decimal_2
    sql: 100.0 * ${sold_count}/${count} ;;
  }

  measure: total_cost {
    type: sum
    value_format_name: decimal_2
    sql: ${cost} ;;
  }

  measure: average_cost {
    type: average
    value_format_name: decimal_2
    sql: ${cost} ;;
  }

  measure: average_days_in_inventory {
    type: average
    value_format_name: decimal_2
    sql: ${days_in_inventory} ;;
  }

  # SETS #

  # The fields we want to export to order items.
  set: export {
    fields: [count, cost, created_date, days_in_inventory, days_in_inventory_tier]
  }

  # The fields we want to show when drilling.
  set: detail {
    fields: [id, sold_date, products.item_name, products.brand, products.category, products.department, cost,
      # Counters for views that join 'inventory_items'
      order_items.count]
  }
}
