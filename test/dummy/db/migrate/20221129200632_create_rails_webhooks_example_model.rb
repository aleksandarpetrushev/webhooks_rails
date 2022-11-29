class CreateRailsWebhooksExampleModel < ActiveRecord::Migration[7.0]
  def change
    create_table :rails_webhooks_example_models do |t|

      t.timestamps
    end
  end
end
