class RelationsController < ApplicationController

  #relation related 

  def remove
    Relation.find(params[:relation_id]).destroy
    redirect_to user_watchlist_path(current_user)
  end

  def moveToSeen
    Relation.find(params[:relation_id]).update seen: true

    redirect_to user_seenlist_path(current_user)
  end
end
