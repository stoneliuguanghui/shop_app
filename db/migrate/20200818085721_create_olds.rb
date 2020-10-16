class CreateOlds < ActiveRecord::Migration[6.0]
  def change
    create_table :olds do |t|

      t.timestamps
    end
  end
end
