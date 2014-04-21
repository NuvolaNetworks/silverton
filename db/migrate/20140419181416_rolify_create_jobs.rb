class RolifyCreateJobs < ActiveRecord::Migration
  def change
    create_table(:jobs) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:users_jobs, :id => false) do |t|
      t.references :user
      t.references :job
    end

    add_index(:jobs, :name)
    add_index(:jobs, [ :name, :resource_type, :resource_id ])
    add_index(:users_jobs, [ :user_id, :job_id ])
  end
end
