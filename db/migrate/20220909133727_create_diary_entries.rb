class CreateDiaryEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :diary_entries do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.text :description
      t.datetime :taken_at, null: false

      t.timestamps
    end
  end
end
