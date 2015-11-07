class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
    	t.text :stay
    	t.text :eat
    	t.text :visit
    	t.text :drink
    	t.belongs_to :destination
    	t.belongs_to :user
      t.timestamps null: false
    end
  end
end
