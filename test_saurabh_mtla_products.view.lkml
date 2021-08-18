view: test_saurabh_mtla_products {
  derived_table: {
    sql: SELECT * FROM "PUBLIC"."PRODUCTS"
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}."COST" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."BRAND" ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}."RETAIL_PRICE" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."SKU" ;;
  }

  dimension: distribution_center_id {
    type: number
    sql: ${TABLE}."DISTRIBUTION_CENTER_ID" ;;
  }

  set: detail {
    fields: [
      id,
      cost,
      category,
      name,
      brand,
      retail_price,
      department,
      sku,
      distribution_center_id
    ]
  }
}
