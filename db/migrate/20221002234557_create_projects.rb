class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :project_languages
      t.string :project_description
      t.string :project_cover
      t.string :project_cover_b
      t.string :project_cover_c
      t.string :project_cover_d

      t.timestamps
    end
  end
end
