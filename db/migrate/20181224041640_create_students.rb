class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.text :f_name
      t.text :l_name
      t.integer :age
      t.string :rank
      t.references :cohort

      t.timestamps
    end
  end
end
