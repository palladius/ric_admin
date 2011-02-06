ActiveRecord::Schema.define(:version => 0) do
  create_table :hickwalls, :force => true do |t|
    t.string :name
    t.string :last_squawk
    t.datetime :last_squawked_at
  end
  create_table :wickwalls, :force => true do |t|
    t.string :name
    t.string :last_tweet
    t.datetime :last_tweeted_at
  end
  create_table :woodpeckers, :force => true do |t|
    t.string :name
  end
  
  # riccardo
  create_table :facebook_friends, :force => true do |t|
    t.string :user_id                    # user 'guest'
    t.string :friend_facebook_id         # one for every user of 'guest'
    t.string :name
    t.string :email
    t.text   :description
    t.text   :sys_notes                  # for pvt use
    t.datetime :last_twitted_at
  end
  
  # TODO Riccardo, the aforementioned schma works.
  # Create maybe user_options ?
  # Maybe migrate users schema? Maybe adding "admin" boolean?
end