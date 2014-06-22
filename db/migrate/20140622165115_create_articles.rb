class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :path
      t.string :title

      t.timestamps
    end
  end
end
