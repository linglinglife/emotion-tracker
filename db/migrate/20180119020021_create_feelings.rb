class CreateFeelings < ActiveRecord::Migration[5.1]
  def change
    create_table :feelings do |t|
      t.integer :scale
      t.text :title
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
