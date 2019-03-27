class LinkUrlsController < ApplicationController
  def new
  	@url = LinkUrl.new
  	letter = [('a'..'z'),('A'..'Z')].map {|i| i.to_a}.flatten
  	@url.random_id = (0...8).map {letter[rand(letter.length)]}.join
  end

  def index
  	@url = LinkUrl.all
  end


 def create
    @url = LinkUrl.new(url_params)
    if @url.save
    	redirect_to link_urls_index_path
    else
    	render "new"
  end
end

 def url_lists
  	@url = LinkUrl.all
    render json: {status: 'SUCCESS', message: 'Loaded all urls', data: @url}, status: :ok  
  end
  def show
    url = LinkUrl.where(:random_id=>params[:id]).first
    if url
    	 redirect_to url.original_url
    else
    	render 'index'
  end
end

  def url_params
    params.require(:link_url).permit(:original_url, :random_id)
  end
  
 
end
