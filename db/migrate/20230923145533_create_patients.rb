class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :gender
      t.string :race
      t.string :address
      t.string :phone_number
      t.text :underlying_conditions
      t.text :vaccination_history
      t.string :bp
      t.string :urine_sample
      t.string :temp
      t.string :cardio
      t.string :weight
      t.string :height
      t.text :allergies
      t.text :medical_allergies
      t.boolean :female
      t.integer :number_of_children
      t.string :marital_status
      t.string :next_of_kin
      t.text :scan_results

      # Other columns go here

      t.timestamps
    end
  end
end
