class CreateSurgeries < ActiveRecord::Migration[6.1]
  def change
    create_table :surgeries do |t|
      t.belongs_to :doctor, null: false, foreign_key: true
      t.belongs_to :nurse, null: false, foreign_key: true
      t.belongs_to :patient, null: false, foreign_key: true
      t.belongs_to :room, null: false, foreign_key: true

      t.integer :time
      t.timestamps
    end
  end
end
