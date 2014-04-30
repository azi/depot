class FixLineItemProductIdColumnName < ActiveRecord::Migration
  def change
    rename_column :line_items, :prodcut_id, :product_id
  end
end
