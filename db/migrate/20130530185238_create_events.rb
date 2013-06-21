class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :creator
      t.string :name
      t.text :description
      t.date :dayof

      t.timestamps
    end
  end
end
