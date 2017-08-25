class CreateMedicalPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :medical_posts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
