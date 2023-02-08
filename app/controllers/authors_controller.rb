class AuthorsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create 
        @author = Author.create(name:params[:name])
        render json: @author
    end

    def author_all 
        a= Author.all
        render json: a 
    end

    def author_id 
        a=Author.find(params[:id])
        render json: a
    end

    def author_books
        a= Author.find_by(name:params[:name])
        b= Book.where(author_id: a.id)
        render json: b
    end

    def delete 
        author= Author.find(params[:id])
        author.destroy
    end

    def name
        a= Author.where(name: params[:name])
        render json: a
    end


    def bookbyid
        b=Book.find(params[:id])
        a= Author.find_by(id: b.author_id)
        render json: a
    end

    def bookbyname
        b=Book.find_by(title: params[:title])
        a= Author.find_by(id: b.author_id)
        render json: a
    end

end
