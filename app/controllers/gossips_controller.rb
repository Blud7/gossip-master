class GossipsController < ApplicationController
  
  def new
  	@gossip = Gossip.new
  end

  def show
  	@gossip = Gossip.find(params["format"])
  end


  def create
  	@gossip = Gossip.new
  	@gossip.id = params["gossip"]["id"]
  	@gossip.content = params["gossip"]["content"]
  	@gossip.anonymous_gossiper = params["gossip"]["anonymous_gossiper"]

  	p "Voici le @gossip créé :"
  	p @gossip
  	p "fin"
  	@gossip.save
  end

  def edit
	@gossip = Gossip.new
	@gossip.save
  end

  def update
  	@gossip = Gossip.new
  	@gossip.id = params[:id]
  	@gossip.content = params["content"]
  	@gossip.anonymous_gossiper = params["anonymous_gossiper"]

  	p @gossip
  	@gossip.save
  end 

  def destroy
  	@gossip = Gossip.find(params["gossip"]["id"])
  	p "voici le @gossip :"
  	p @gossip
  	p "fin"

  	redirect_to gossips_index_path
  end

end
