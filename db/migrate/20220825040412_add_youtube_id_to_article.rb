class AddYoutubeIdToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :youtube_id, :string, default: nil
  end
end
