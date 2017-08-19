class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :organizer
      t.string :place
      t.datetime :initial_date
      t.datetime :final_date
      t.text :activities
      t.string :organizer_contact

      t.timestamps
    end
  end
end
