class AddSocialUrlToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :website_url, :string
    add_column :users, :facebook_url, :string
    add_column :users, :twitter_handle, :string
    add_column :users, :instagram_handle, :string
    add_column :users, :streaming_url, :string
  end
end
