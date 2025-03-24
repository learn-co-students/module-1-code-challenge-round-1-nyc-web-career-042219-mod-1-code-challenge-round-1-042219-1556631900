class CreateReviews < ActiveRecord::Migration[4.2]

def change

  create_table :Reviews do |t|
    t.integer :customer_id
    t.integer :restaurant_id
    t.string :content
    t.integer :rating

  end
end


end
