# frozen_string_literal: true

class RenameUserIdToAuthorIdInGroups < ActiveRecord::Migration[7.0]
  def change
    rename_column :groups, :user_id, :author_id
  end
end
