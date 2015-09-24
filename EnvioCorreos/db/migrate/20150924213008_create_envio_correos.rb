class CreateEnvioCorreos < ActiveRecord::Migration
  def change
    create_table :envio_correos do |t|

      t.timestamps null: false
    end
  end
end
