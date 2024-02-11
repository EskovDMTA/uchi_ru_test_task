# frozen_string_literal: true

class CreateSchoolClasses < ActiveRecord::Migration[7.1]
  def change
    create_table :school_classes do |t|
      t.integer :number
      t.string :letter
      t.integer :students_count, default: 0, null: false

      t.timestamps
    end
    add_index :school_classes, %i[number letter], unique: true, name: 'index_school_classes_on_number_and_letter_unique'
  end
end
