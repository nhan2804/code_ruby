class CreateCateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :cate_documents do |t|

      t.timestamps
    end
  end
end
