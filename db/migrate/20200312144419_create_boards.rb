class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :cocktail
      t.string :message

      t.timestamps
    end
  end
end
