class HomePagesController < ApplicationController

  def home
  end

  def search
    if session[:search].nil?
      session[:search] = params[:search]
    end
    if params[:search].nil?
      @search = session[:search]
    else
      if params[:search] == ""
        redirect_to root_path
      elsif params[:search] != session[:search]
        session[:search] = params[:search]
        @search = session[:search]
      else
        @search = params[:search]
      end
    end
    if !@search.nil?
      require 'net/http'
      url = "https://api.gnavi.co.jp/RestSearchAPI/v3/?keyid="
      api_key = "ca0033b70e452cd5416453783cf44b1a"
      new_url = url + api_key + "&freeword=" + @search
      url=URI.encode(new_url)
      uri = URI.parse(url)
      json = Net::HTTP.get(uri)
      result = JSON.parse(json)
      @rests=result["rest"]
    end
  end

  def show
    @rest = params[:rest]
    @assessment = Assessment.new
  end

  def save
    @saving = current_user.savings.build(content: params[:content],
      name: params[:name], address: params[:address])
    @saving.save
    redirect_to search_path
  end

  def destroy
    @saving = current_user.savings.find_by(name: params[:name], address: params[:address])
    @saving.destroy
    redirect_to search_path
  end

  def save_index
    @savings = Saving.where(user_id: current_user.id)
  end

  def assessment_index
    @assessments = Assessment.where(user_id: current_user.id)
  end

  def comment
    @assessment = current_user.assessments.build(
      restaurant: params[:assessment][:restaurant],
      name:       params[:assessment][:name],
      address:    params[:assessment][:address],
      star:       params[:assessment][:star],
      content:    params[:assessment][:content])
    @assessment.save
    redirect_to root_path
  end
end
