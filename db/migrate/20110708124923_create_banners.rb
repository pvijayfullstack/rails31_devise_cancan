class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :name

      t.timestamps
    end
  end
end
