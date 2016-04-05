class WelcomeController < ApplicationController
    
    def home
        if user_signed_in?
            redirect_to posts_path 
        elsif !user_signed_in?
            redirect_to new_user_session_path
        end
    end
    
    def lost
        @var = Post.where("category = 'lost'")
    end
    
    def found
        @var = Post.where("category = 'found'")
    end
    
    def others
        @var = Post.where("category = 'other'")
    end
    
    
end