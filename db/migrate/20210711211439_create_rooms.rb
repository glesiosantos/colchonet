class CreateRooms < ActiveRecord::Migration[6.1]
  def execute
    "CREATE TABLE rooms (
      id VARCHAR(150) PRIMARY KEY DEFAULT REPLACE(uuid_generate_v4()::text, '-', '' ),
      title VARCHAR(100) NOT NULL,
      location VARCHAR(100) NOT NULL,
      description TEXT
    )"
  end
end
