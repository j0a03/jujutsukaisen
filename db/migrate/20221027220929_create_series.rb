class CreateSeries < ActiveRecord::Migration[7.0]
  def change
    create_table :series do |t|
      t.string :nome
      t.date :Data_De_Lancamento
      t.integer :episodios
      t.text :description
      t.string :diretor

      t.timestamps
    end
  end
end
