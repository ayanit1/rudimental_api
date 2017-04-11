class Api::V1::WordsController < ApplicationController

  def index
    @words = Word.all
    render json: @words, status: :ok
  end

  def show
    render json: @word
  end

  def destroy
    @word.destroy

    head :no_content
  end

  def update
    if @word.update(contact_params)
      head :no_content
    else
      render json: @word.errors, status: :unprocessable_entity
    end
  end

  def create
    @word = Word.new(params[:word])

    if @word.save
      render json: @word, status: :created
    else
      render json: @word.errors, status: :unprocessable_entity
    end
  end

end
