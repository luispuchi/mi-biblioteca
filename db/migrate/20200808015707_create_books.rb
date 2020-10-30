class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :gener
      t.string :status
      t.date :start_date
      t.date :end_date
      
      t.timestamps
    end
  end
end
