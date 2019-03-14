class AddSectorToClients < ActiveRecord::Migration
  def change
    add_reference :clients, :sector, foreign_key: true
  end
end
