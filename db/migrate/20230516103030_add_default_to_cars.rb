class AddDefaultToCars < ActiveRecord::Migration[7.0]
  def change
    change_column_default :cars, :available, true
  end
end
