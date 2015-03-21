class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.datetime  :due_date
      t.integer   :book_id
      t.integer   :patron_id
      t.timestamps
    end
  end
end
