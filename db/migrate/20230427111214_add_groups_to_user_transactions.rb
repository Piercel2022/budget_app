# frozen_string_literal: true

class AddGroupsToUserTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_transactions, :groups, null: false, foreign_key: true, on_delete: :cascade
  end
end
