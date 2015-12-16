### Alpha

```ruby
class Sun
  include DataMapper::Resource
  property :id, Serial

  has n, :planets
end
```

```ruby
class Planet
  include DataMapper::Resource
  property :id, Serial

  belongs_to :sun
end
```

Now our tests should pass.
