class CreateLatindances < ActiveRecord::Migration[6.0]
  def change
    create_table :latindances do |t|
      t.string :style
      t.string :reputation

      t.timestamps
    end
  end
end
