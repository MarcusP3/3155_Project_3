class CreateHomeworks < ActiveRecord::Migration[6.0]
  def change
    create_table :homeworks do |t|
      t.string :hw_name
      t.string :due_date
      t.string :time_required
      t.string :note

      t.timestamps
    end
  end
end
