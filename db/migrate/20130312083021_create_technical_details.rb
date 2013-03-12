class CreateTechnicalDetails < ActiveRecord::Migration
  def change
    create_table :technical_details do |t|
      t.string :port
      t.string :bandwidth

      t.timestamps
    end
  end
end
