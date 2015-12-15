class BooksController < ApplicationController
  def index
      @books = Book.all
      @categories = Category.all
  end
    
#fonction avec Book.create
   def create
  Book.create title: params[:title], category_id: params[:category_id]
  redirect_to "/books"
end
    
    #fonction avec Book.new
   # def create
       # book = Book.new
       # book.title = params[:title]
       # book.save
        #redirect_to "/books"  
    #end
    
     def show
        @book = Book.find(params[:id])
    end
    
    def update
        @book = Book.find(params[:id])
        if @book.update title: params[:title]
        redirect_to "/books/#{params[:id]}"
        else
            render 'show'
        end
    end
    
    def destroy
        Book.find(params[:id]).destroy
        redirect_to "/books"
    end
end
