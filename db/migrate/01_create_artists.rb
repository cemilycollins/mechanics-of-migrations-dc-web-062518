
class CreateArtists < ActiveRecord::Migration
  # sql = <<-SQL
  #   CREATE TABLE IF NOT EXISTS artists (
  #     id INTEGER PRIMARY KEY,
  #     name TEXT,
  #     genre TEXT,
  #     age INTEGER,
  #     hometown TEXT
  #   )
  #   SQL
  #
  # ActiveRecord::Base.connection.execute(sql)
  #

  # def up
  #   # this defines the code to execute when the migration is run.
  #   # it's like a 'do' method whereas down is 'undo'
  # end
  #
  # def down
  #   # this defines the code to execute when a migration is rolled back.
  #   # it's like an 'undo' method.
  # end

  def change
    # this is the primary way of writing migrations.
    # it works for most cases where Active Record knows how to reverse the migration automatically.
    # this one is more common than 'up' and 'down'
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
  end

end
