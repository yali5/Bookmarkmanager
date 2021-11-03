require 'pg'

class Bookmarks

  @bookmarks = []

  def self.all
    @bookmarks
  end

  conn = PG.connect( dbname: 'bookmark_manager' )
  conn.exec( "SELECT * FROM bookmarks" ) do |result|
    result.each do |row|
      puts row
      @bookmarks << row['url']
    end
  end

end