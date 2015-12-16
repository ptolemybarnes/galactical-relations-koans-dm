### Beta

```ruby
class Planet
  include DataMapper::Resource
  property :id, Serial

  belongs_to :sun
  has n, :moons 
end
```

```ruby
class Moon 
  include DataMapper::Resource
  property :id, Serial

  belongs_to :planet
end
```
 
