class CreateLegoSets < ActiveRecord::Migration
  def change
    create_table :lego_sets do |t|
      t.string :set
      t.string :name
      t.string :link
      t.references :user, index: true
      t.text :description
      t.string :theme

      t.timestamps
    end
  end
end
