module ApplicationHelper

  def flashblock
  # for some reason, this doesn't work 
  #  flash.each do |type,msg|
      render :partial => 'shared/flashblock', :locals => { :type => "notice", :msg => flash[:notice] } unless flash[:notice].nil?
      render :partial => 'shared/flashblock', :locals => { :type => "error", :msg => flash[:error] } unless flash[:error].nil?
      render :partial => 'shared/flashblock', :locals => { :type => "info", :msg => flash[:now] } unless flash[:now].nil?
      
  #  end
  end

end
