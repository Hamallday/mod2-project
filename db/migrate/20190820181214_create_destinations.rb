class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
