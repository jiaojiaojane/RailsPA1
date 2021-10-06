class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :code
      t.string :description
      t.string :independent_study
      t.string :name
      t.string :subjects

      t.timestamps
    end
  end
end
