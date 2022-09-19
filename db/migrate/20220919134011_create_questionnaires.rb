class CreateQuestionnaires < ActiveRecord::Migration[6.1]
  def change
    create_table :questionnaires do |t|
      t.integer :question_no
      t.string :description
      t.references :customer
      t.timestamps
    end
  end
end
