class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t| 
	    t.string :firstName
	    t.string :lastName
	    t.string :email
	    t.string :password
	    t.major :major
	    t.gradYear :gradYear	
	    t.timestamps
    end
    has_many :courses
  end
end
