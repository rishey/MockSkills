class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table 	:proficiencies do |t|
      t.belongs_to 	:user
      t.belongs_to	:skill
      t.integer 	:skill_id
      t.integer 	:years
      t.boolean 	:formal
      t.timestamps
    end
  end
end
