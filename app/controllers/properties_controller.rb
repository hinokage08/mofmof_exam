class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times {@property.nearest_stations.build }
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to new_property_path
    else
      render :new
    end
  end

  def show
    @property = Property.find(params[:id])
    @nearest_station = @property.nearest_stations
  end

  def edit
    @property = Property.find(params[:id])
    @nearest_station = @property.nearest_stations
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
    params.require(:property).permit(:property_name, :address, :rent, :age, :remarks, nearest_stations_attributes: [:id, :route_name, :station_name, :required_time])
  end

end
