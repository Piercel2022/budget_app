# frozen_string_literal: true

class RenameGroupsIdToGroupIdUserTransactions < ActiveRecord::Migration[7.0]
  def change
    rename_column :user_transactions, :groups_id, :group_id
  end
end
