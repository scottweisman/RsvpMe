class ChangeNumberToInteger < ActiveRecord::Migration
  def change
    change_column :rsvps, :number, 'integer USING CAST(number AS integer)'
  end
end
