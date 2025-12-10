class CreateBookmarks < ActiveRecord::Migration[8.1]
  def change
    create_table :bookmarks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
    
    # user_id と review_id の組み合わせが重複しないようにする
    add_index :bookmarks, [:user_id, :review_id], unique: true
  end
end
