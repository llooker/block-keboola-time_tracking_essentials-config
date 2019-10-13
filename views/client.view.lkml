view: client {
  sql_table_name: CLIENT ;;

  dimension: client_id {
    label: "Client ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."CLIENT_ID" ;;
    html: <a href={{client_url}} target="_blank"><font color="blue">{{ value }}</font></a> ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}."CLIENT" ;;
    html: <a href={{client_url}} target="_blank"><font color="blue">{{ value }}</font></a> ;;
  }

  dimension: client_active {
    type: string
    sql: ${TABLE}."CLIENT_ACTIVE" ;;
  }

  dimension: client_url {
    hidden: yes
    type: string
    sql: ${TABLE}."CLIENT_URL" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."WEBSITE" ;;
  }

  measure: count {
    type: count
    drill_fields: [client, project.count]
  }
}
