class AtmosphereChangeClimate < ActiveRecord::Migration[7.0]
  def change
    rename_column :stars, :atmosphere, :climate
  end
end
