# frozen_string_literal: true

class RenameUserIdToAuthorIdInUserTransactions < ActiveRecord::Migration[7.0]
  def change
    rename_column :user_transactions, :user_id, :author_id
  end
end
