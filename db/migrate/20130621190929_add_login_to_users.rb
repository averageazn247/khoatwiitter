class AddLoginToUsers < ActiveRecord::Migration
  def change
 
           add_column :users, :password ,:string
     add_column :users, :password_confirmation, :string
          add_column :users, :email ,:string
     add_column :users, :company, :string
     
 
     add_column :users, :phone ,:string
             add_column :users, :remember_token, :string
    add_index  :users, :remember_token
       add_index :users, :email, unique: true
    
  end
end
