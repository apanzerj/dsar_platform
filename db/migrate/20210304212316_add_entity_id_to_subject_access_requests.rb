class AddEntityIdToSubjectAccessRequests < ActiveRecord::Migration[5.2]
  def change
    add_reference :subject_access_requests, :entity, foreign_key: true
  end
end
