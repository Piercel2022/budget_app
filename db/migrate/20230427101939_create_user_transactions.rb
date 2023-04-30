# frozen_string_literal: true

class CreateUserTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :user_transactions do |t|
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
