view: users_sales_facts {
  derived_table: {
    sql: SELECT
        o.user_id AS user_id
        , COUNT(*) AS lifetime_items
        , ROUND(AVG(oi.sale_price), 2) AS average_item_price
        , ROUND(SUM(oi.sale_price), 2) AS lifetime_revenue
      FROM order_items AS oi
      LEFT JOIN orders AS o
      ON oi.order_id = o.id
      GROUP BY user_id
       ;;
    indexes: ["user_id"]
    persist_for: "4 hours"
  }

  dimension: user_id {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: lifetime_items {
    type: number
    sql: ${TABLE}.lifetime_items ;;
  }

  dimension: lifetime_items_tiered {
    type: tier
    tiers: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 20, 30, 50, 100, 200]
    sql: ${lifetime_items} ;;
  }

  dimension: average_item_price {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.average_item_price ;;
  }

  dimension: lifetime_revenue {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.lifetime_revenue ;;
  }

  dimension: lifetime_revenue_tiered {
    type: tier
    tiers: [0, 5, 10, 15, 20, 25, 50, 100, 250, 500, 1000]
    sql: ${lifetime_revenue} ;;
  }
}
