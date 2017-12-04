class CreateSqlQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :sql_queries do |t|
      t.string :query_string
      t.integer :data_source_id
      t.timestamps
    end
  end
end
