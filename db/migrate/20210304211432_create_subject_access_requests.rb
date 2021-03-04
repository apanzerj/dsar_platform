class CreateSubjectAccessRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_access_requests do |t|
      t.string :subdomain
      t.string :action
      t.string :subject_contact_method
      t.string :subject_contact_data

      t.timestamps
    end
  end
end
