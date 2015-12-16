### Gamma

```ruby
class Planet
  include DataMapper::Resource

  property :id, Serial

  belongs_to :sun
  has n, :moons 
  has n, :asteroids, through: Resource
end
```

```ruby
class Asteroid
  include DataMapper::Resource

  property :id, Serial
  has n, :planets, through: Resource
end
```
