class CreateAscaffolds < ActiveRecord::Migration
  def change
    create_table :ascaffolds do |t|

      t.timestamps
    end
  end
end
