require 'gossip'
require 'view'

class Controller
  
  def initialize
    @view = View.new
      
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    #pour le moment, le contenu de ce gossip est inscrit "en dur" dans le code. L'utilisateur ne peut pas le changer.
    gossip.save
    
  end

  def index_gossips
    @view.index_gossips

  end

end