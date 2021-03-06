class PagesController < ApplicationController
  before_action :authenticate_user!

  def search_results
    @search = params[:query]
    @designs = Design.global_search(@search)
  end

  def designer_designs
    @designer = User.find(params[:id])
    @designs = @designer.designs
  end

  def my_purchase_history
    @purchases = current_user.purchases
  end

  def designers
    @designers = User.where({company: false})
  end
end
