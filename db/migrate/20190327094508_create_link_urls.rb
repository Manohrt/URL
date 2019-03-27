class CreateLinkUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :link_urls do |t|
      t.string :short_url
      t.text :original_url
      t.string :random_id

      t.timestamps
    end
  end
end
