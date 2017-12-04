json.extract! sql_query, :id, :created_at, :updated_at
json.url sql_query_url(sql_query, format: :json)
