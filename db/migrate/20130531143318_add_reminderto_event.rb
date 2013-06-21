class AddRemindertoEvent < ActiveRecord::Migration
def change
    add_column :events, :reminder, :string
    add_column :events, :emails, :string
  end
end
