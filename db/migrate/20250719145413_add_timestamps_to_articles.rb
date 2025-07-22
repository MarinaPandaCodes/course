class AddTimestampsToArticles < ActiveRecord::Migration[6.1]
  def change
    change_table :articles do |t|
      t.datetime :created_at, null: true unless column_exists?(:articles, :created_at)
      t.datetime :updated_at, null: true unless column_exists?(:articles, :updated_at)
    end
  end
end
