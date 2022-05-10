class ItemsController < ApplicationController
  before_action :set_item, except: [:index, :archive_index, :new, :create]

  def index
    @items = Item.where(deleted: false)
  end

  def archive_index
    @items = Item.where(deleted: true)
  end

  def show
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    respond_to do |format|
      if @item.save
        format.html { redirect_to item_url(@item), notice: "Item successfully created." }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # an action to get the reason for deletion
  def deletion_reason
  end

  # update action has an if statement to see if the update in question is a soft deletion or an update of params
  def update
    respond_to do |format|
      if @item.update(item_params)
        # checking if the item is being restored and if so, clearing its deletion reason
        if !@item.deleted && @item.deletion_reason.present?
          @item.update(deletion_reason: nil)
        end
        if @item.deleted
          format.html { redirect_to archive_url, notice: "Item successfully deleted." }
          format.json { render :show, status: :ok, location: @item }
        else
          format.html { redirect_to items_url, notice: "Item successfully updated." }
          format.json { render :show, status: :ok, location: @item }
        end
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: "Item successfully deleted." }
      format.json { head :no_content }
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :quantity, :price, :description, :deleted, :deletion_reason)
  end
end
