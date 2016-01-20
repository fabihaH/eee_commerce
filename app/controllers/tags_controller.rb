class TagsController < ApplicationController
  before_filter :set_tag, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tags = Tag.all
    respond_with(@tags)
  end

  def show
    respond_with(@tag)
  end

  def new
    @tag = Tag.new
    respond_with(@tag)
  end

  def edit
  end

  def create
    @tag = Tag.new(params[:tag])
    @tag.save
    respond_with(@tag)
  end

  def update
    @tag.update_attributes(params[:tag])
    respond_with(@tag)
  end

  def destroy
    @tag.destroy
    respond_with(@tag)
  end

  private
    def set_tag
      @tag = Tag.find(params[:id])
    end
end
