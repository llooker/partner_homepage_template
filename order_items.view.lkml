view: order_items {
  # DIMENSIONS #

  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.inventory_item_id ;;
    hidden: yes
  }

  dimension: return_date {
    type: date
    sql: ${TABLE}.returned_at ;;
  }

  dimension: returned {
    type: yesno
    sql: ${TABLE}.returned_at IS NOT NULL ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
    hidden: yes
  }

  dimension: sale_price {
    description: "The sale price reflects the price that the item was sold at."
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.sale_price ;;
  }

  dimension: gross_margin {
    type: number
    value_format_name: decimal_2
    sql: ${sale_price} - ${inventory_items.cost} ;;
  }

  dimension: item_gross_margin_percentage {
    type: number
    sql: 100.0 * ${gross_margin}/NULLIF(${sale_price}, 0) ;;
  }

  dimension: item_gross_margin_percentage_tier {
    type: tier
    sql: ${item_gross_margin_percentage} ;;
    tiers: [0, 10, 20, 30, 40, 50, 60, 70, 80, 90]
    style: interval
  }

  # MEASURES #

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_gross_margin {
    type: sum
    value_format_name: decimal_2
    sql: ${gross_margin} ;;
  }

  measure: total_sale_price {
    type: sum
    sql: ${sale_price} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  measure: average_sale_price {
    type: average
    sql: ${sale_price} ;;
    value_format_name: usd
  }

  measure: average_gross_margin {
    type: average
    sql: ${gross_margin} ;;
    value_format_name: usd
  }



  # SETS #

  set: detail {
    fields: [orders.created_date, id, orders.id, users.name, users.history, products.item_name, products.brand_name, products.category_name, total_sale_price]
    }
}
