class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
    	t.integer :courseID
    	t.string :name
    	t.integer :students, array: true, default: []
      	t.timestamps
    end
    #add_column("courses", "name")
    #add_index("courses", "name") #only add indexes for foreign keys, like Subject <= Page
    #has_many :users
  end
  
end
