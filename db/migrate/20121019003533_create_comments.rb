class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.timestamps
      t.integer :article_id
   	  t.string  :author_name
	 t.text    :body
    end
  end
end
