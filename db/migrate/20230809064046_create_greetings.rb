class CreateGreetings < ActiveRecord::Migration[7.0]
  def change
    create_table :greetings do |t|
      t.string :message

      t.timestamps
    end

    Greeting.create(message: 'Hello wolrd!')
    Greeting.create(message: 'Its a pleasure hosting you!')
    Greeting.create(message: 'Hello there?')
    Greeting.create(message: 'How you doing')
    Greeting.create(message: 'You are welcome')
  end
end
