class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :date
      t.text :text
      t.timestamps
    end
  end
end
