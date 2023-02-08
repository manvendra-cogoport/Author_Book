class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create 
        author= Author.find(params[:author_id])
        book = author.books.create(published_at: Time.now, title: params[:title])
        render json: book
    end

    def all 
        b= Book.all
        render json: b
    end

    def update
        b= Book.find(params[:id])
        b.author_id = params[:author_id] || b.author_id
        b.published_at =params[:published_at] || b.published_at
        b.title =params[:title] || b.title

        b.save

        render json: b
    end

    def delete
        b= Book.delete(params[:id])
        render text: `Deleted`
    end


end
