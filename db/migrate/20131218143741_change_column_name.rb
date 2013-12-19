class ChangeColumnName < ActiveRecord::Migration
	def change

		rename_column :users, :type, :users_type

	end
end
