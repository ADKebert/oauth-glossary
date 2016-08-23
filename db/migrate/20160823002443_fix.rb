class Fix < ActiveRecord::Migration[5.0]
  def up
    remove_column :terms, :defition
    add_column :terms, :definition, :string
  end

  def down
    remove_column :terms, :definition
    add_column :terms, :defition, :string
  end
end
