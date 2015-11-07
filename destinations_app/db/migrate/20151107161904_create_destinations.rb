class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
    	t.string :country
    	t.string :region
    	t.string :city
    	t.text :img_url
      t.timestamps null: false
    end
  end
end
