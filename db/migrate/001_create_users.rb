# frozen_string_literal: true
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :token, null: false, index: { unique: true }
      t.string :password_digest, null: false
      # setting doctor as admin, must matchup in seeds.rb
      t.boolean :doctor, null: false

      t.timestamps null: false
    end
  end
end
