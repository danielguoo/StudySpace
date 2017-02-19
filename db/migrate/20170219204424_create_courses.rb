class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
    	t.string :name 
    	has_many :users
      	t.timestamps
    end
  end
end
