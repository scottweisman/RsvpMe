class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.boolean :attending
      t.string :number

      t.timestamps
    end
  end
end
