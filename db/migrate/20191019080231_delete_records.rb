class DeleteRecords < ActiveRecord::Migration[5.0]
  def change
    drop_table :propertys
  end
end
