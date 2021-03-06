class AddEntityIdToServices < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :entity, foreign_key: true
  end
end
