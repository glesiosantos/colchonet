class CreateExtensionUuid < ActiveRecord::Migration[6.1]
  def execute
    "CREATE EXTENSION IF NOT EXISTS 'uuid-ossp'"
  end
end
