class CreateDataSources < ActiveRecord::Migration[5.1]
  def change
    create_table :data_sources do |t|
      t.string :url
      t.string :port
      t.string :user_name
      t.string :password
      t.string :db_name
      t.timestamps
    end
  end
end
