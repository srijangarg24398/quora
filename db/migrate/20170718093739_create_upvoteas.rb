class CreateUpvoteas < ActiveRecord::Migration
  def change
    create_table :upvoteas do |t|
      t.references :user, index: true, foreign_key: true
      t.references :answer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
