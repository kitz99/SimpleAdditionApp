class AdditionController < ActionController::Base
  def showinputfields
    render 'showinputfields'
  end

  def performaddition
    firstvalue = params[:firstvalue].to_i
    secondvalue = params[:secondvalue].to_i
    result = firstvalue + secondvalue + 1
    f = open('/tmp/result.txt', 'w')
    f.puts result.to_s
    f.close
    redirect_to '/displayresult'
  end

  def displayresult
    f = open('/tmp/result.txt', 'r')
    @result = f.read.strip
    f.close
    render 'displayresult'
  end
end

