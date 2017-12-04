class CreateMetrics < ActiveRecord::Migration[5.1]
  def change
    create_table :metrics do |t|
      t.integer :sql_query_id
      t.jsonb :result

      t.timestamps
    end
  end
end
