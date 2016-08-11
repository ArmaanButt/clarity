class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :question1
      t.string :question2
      t.string :question3
      t.string :question4
      t.string :question5
      t.string :question6
      t.string :question7
      t.string :question8
      t.string :question9
      t.string :question10
      t.string :question11
      t.string :question12
      t.string :question13
      t.string :question14
      t.string :question15
      t.string :question16
      t.string :question17
      t.string :question18
      t.string :question19
      t.string :question20
      t.string :question21
      t.string :question22
      t.string :question23
      t.string :question24
      t.string :question25
      t.string :question26
      t.string :question27
      t.string :question28
      t.string :question29
      t.string :question30
      t.string :question31
      t.string :question32
      t.string :question33
      t.string :question34
      t.string :qeustion35
      t.string :question36
      t.string :question37
      t.references :user, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
