

class View

  def initialize 
  end

  def create_gossip
    puts "Saisir le nom de l'auteur :"
    gossip_author = gets.chomp
    puts "Quel est le gossip ? "
    gossip_content = gets.chomp
    return params = { content: gossip_content, author: gossip_author }
  end

=begin
  # fonctionne mais c'est pas MVC
  def index_gossips
    file = CSV.read('db/gossip.csv', headers: true, header_converters: :symbol, converters: :all)
    puts '-' * 50
    file.each do |row|
      p row[:author] + " a dit: '" + row[:content] +"' !"
    end
    puts '-' * 50
  end
=end

  def index_gossips(gossips)
    puts '-' * 50
    gossips.each do |row_gossip|
      print row_gossip[0]
      puts  " -> " + row_gossip[1]
    end
    puts '-' * 50
  end

end