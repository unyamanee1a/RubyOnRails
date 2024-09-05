class CreateRegisterForms < ActiveRecord::Migration[7.1]
  def change
    create_table :register_forms do |t|
      t.string :fristName
      t.string :lastName
      t.date :birthDate
      t.string :gender
      t.string :email
      t.string :phoneNumber
      t.string :subject

      t.timestamps
    end
  end
end
