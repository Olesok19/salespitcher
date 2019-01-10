class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :post_id
      t.datetime :reviewed_at
      t.timestamps
    end
  end
end
