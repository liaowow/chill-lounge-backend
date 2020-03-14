class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :eat
      t.integer :sleep
      t.integer :exercise
      t.integer :mood

      t.timestamps
    end
  end
end
