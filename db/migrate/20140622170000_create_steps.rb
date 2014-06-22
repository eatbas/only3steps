class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.references :article, index: true
      t.string :color_palette
      t.text :body

      t.timestamps
    end
  end
end
