class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
    	t.string :name
    	t.string :email
    	t.string :contact
      t.timestamps
    end
  end
end
