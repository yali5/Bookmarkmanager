require 'pg'

class Bookmarks

  @bookmarks = []

  conn = PG.connect( dbname: 'bookmark_manager' )
  conn.exec( "SELECT * FROM bookmarks" ) do |result|
    result.each do |row|
      puts row
      @bookmarks << row.values_at('url')
    end
  end


  def self.all
    @bookmarks
  end

end