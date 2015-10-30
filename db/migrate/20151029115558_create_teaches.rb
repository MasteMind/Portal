class CreateTeaches < ActiveRecord::Migration
  def change
    create_table :teaches do |t|
    	t.belongs_to :mentor, index: true
    	t.belongs_to :student, index: true

      t.timestamps
    end
  end
end
