class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :article_id
      t.integer :user_id
      t.text :content
      t.string :status

      t.timestamps
    end
  end
end
