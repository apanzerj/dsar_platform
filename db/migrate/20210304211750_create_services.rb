class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.string :owned_by
      t.string :disallowed_remediation_types
      t.string :repo

      t.timestamps
    end
  end
end
