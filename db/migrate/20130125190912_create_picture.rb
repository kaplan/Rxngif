class CreatePicture < ActiveRecord::Migration
  def change
    create_table :pictures do | t |
      t.string :url
      t.string :caption
      t.string :city_of_origin
    end
  end
end
