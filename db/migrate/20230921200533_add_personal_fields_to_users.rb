class AddPersonalFieldsToUsers < ActiveRecord::Migration[6.1]
  def change

    add_column :users, :curp, :string
    add_column :users, :first_name, :string
    add_column :users, :first_surname, :string
    add_column :users, :second_surname, :string
    add_column :users, :telephone, :string
    add_column :users, :address, :string
    add_column :users, :linkedin, :string
    add_column :users, :notes, :text

    add_column :users, :sni, :numeric, default: 0

    add_index :users, :curp, unique: true

    add_column :users, :academic_grade, :integer, default: 0
    add_column :users, :academic_institution, :string
    add_column :users, :academic_program, :string
    add_column :users, :academic_description, :string

    add_column :users, :work_type, :integer, default: 0
    add_column :users, :work_place, :string
    add_column :users, :work_position, :string
    add_column :users, :work_description, :string


    add_column :users, :pwd_tmp, :string

  end
end
