

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

  def index_gossips

  end
end