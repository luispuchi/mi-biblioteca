class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

    def index
      @q = Book.ransack(params[:q])
      @books = @q.result(distinct: true)
    end

    def new
      @book = Book.new 
    end

    def create
      @book = Book.new(book_params)
      if @book.save
        redirect_to books_path, notice: 'Libro guardado.'
      else
        flash.now[:alert] = 'Libro no puede ser guardado.'
        render :new
      end
    end

    def edit
      @books = Book.find(params[:id])
    end
    def show
      @books = Book.find(params[:id])
    end
   
    def update
      if @book.update(book_params)
      redirect_to books_path, notice: 'Libro actualizado.'
      else
      flash.now[:alert] = 'Libro no puede ser actualizado.'
      render :edit
      end
    end

    def destroy
      @book.destroy
      redirect_to books_url, notice: 'El libro fue eliminado.'
    end

 
        
    private
   
    
    def set_book
      @book = Book.find(params[:id])
    end
  
    def book_params
      params.require(:book).permit(:title, :author , :gener , :status, :start_date ,:end_date )
    end

end