module ApplicationHelper

  def flashblock
    flash.each do |type,msg|
      render :partial => 'shared/flashblock', :locals => { :type => type, :msg => msg }
    end
  end

end
