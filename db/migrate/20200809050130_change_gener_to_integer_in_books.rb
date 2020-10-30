class ChangeGenerToIntegerInBooks < ActiveRecord::Migration[6.0]
  def change
    
    reversible do |dir|
      change_table :books do |t|
        dir.up { t.change :gener, :integer }
        dir.down { t.change :gener, :string }
      end
    end
    
  end
end
