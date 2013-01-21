class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.datetime :start
      t.string :speaker
      t.text :description
      t.boolean :plenary

      t.timestamps
    end
  end
end
