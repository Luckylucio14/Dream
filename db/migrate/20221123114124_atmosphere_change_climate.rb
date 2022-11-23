class AtmosphereChangeClimate < ActiveRecord::Migration[7.0]
  def change
    change_column :stars, :atmosphere, :climate
  end
end
