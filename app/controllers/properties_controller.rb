class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    @nearest_station = @property.nearest_stations.build
  end

  def create
    Property.create(property_params)
    redirect_to new_property_path
  end

  def show
    @property = Property.find(params[:id])
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])
    if @property.update(property_params)
      redirect_to properties_path, notice: "物件情報を編集しました"
    else
      render :edit
    end
  end

  private
  def property_params
    params.require(:property).permit(:property_name, :address, :rent, :age, :remarks)
  end

end
