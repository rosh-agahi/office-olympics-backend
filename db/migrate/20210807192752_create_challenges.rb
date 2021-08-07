class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :description
      t.string :rules

      t.timestamps
    end
  end
end
