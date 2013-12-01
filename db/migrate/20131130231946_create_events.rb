class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :place
      t.date :date
      t.float :hour

      t.timestamps
    end
  end
end
