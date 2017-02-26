class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t| 
    	t.integer :userID
	   	t.string :name
	    t.string :email, :default => "", :null => false
	    t.string :password, :limit => 50, :null => false
	    t.string :major
	    t.integer :gradYear
	    t.integer :courses, array: true, default: []	
	    t.timestamps
    end
    #has_many :courses
    
  end
end
