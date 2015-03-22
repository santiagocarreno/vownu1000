class TweetsController < ApplicationController
  def new
    @foundations = User.where(is_foundation: true)
  end

  def create



    User.all.each do |usuario|


      lista = usuario.foundations_ids.nil? ? 'ANOTHER VALUE ' : usuario.foundations_ids.split(';')

      if lista.include? twitter_params[:fundacion_id]
        usuario.tweet(twitter_params[:message])
      end

    end




  end

  def twitter_params
    params.require(:tweet).permit(:message, :fundacion_id)
  end
end