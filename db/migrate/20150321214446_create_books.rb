class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string  :title
      t.string  :author
      t.integer :library_id
      t.timestamps
    end
  end
end
