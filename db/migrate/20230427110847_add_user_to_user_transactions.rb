# frozen_string_literal: true

class AddUserToUserTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_transactions, :user, null: false, foreign_key: true, on_delete: :cascade
  end
end
