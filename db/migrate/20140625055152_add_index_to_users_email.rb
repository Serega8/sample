class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
  	# метод add_index для добавления индекса на столбце email таблицы users
  	add_index :users, :email, unique: true   
  	# опция unique делает индекс в бд уникальным, чтобы одинаковые записи не повторялись
  end
end
