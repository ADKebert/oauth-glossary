class CreateTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :terms do |t|
      t.string :name
      t.string :defition
      t.string :author
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
