class CreateDeliveryPrefectures < ActiveRecord::Migration[6.0]
  def change
    create_table :delivery_prefectures do |t|

      t.timestamps
    end
  end
end
