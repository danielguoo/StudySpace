class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
    	t.string :name
      t.timestamps
    end
    #add_column("courses", "name")
    #add_index("courses", "name") #only add indexes for foreign keys, like Subject <= Page
    #has_many :users
  end
  
end
