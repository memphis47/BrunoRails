class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :type

      t.timestamps
    end
  end
end
