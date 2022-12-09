class CreateWebhooksTables < ActiveRecord::Migration[7.0]
  def change
    create_table :rails_webhooks_subscribers do |t|
      t.string :url, null: false
      t.boolean :active, default: true

      if t.respond_to? :jsonb
        t.jsonb :subscriptions
      else
        t.json :subscriptions
      end

      t.timestamps
    end

    create_table :rails_webhooks_events do |t|
      t.integer :subscriber_id, foreign_key: true, null: false, index: true
      t.string :name, null: false
      t.text :payload, null: true

      t.timestamps
    end
  end
end
