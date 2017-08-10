# rails-practice-mzblog
> Rails practice for a mini blog.


## keynotes:
```conf
# post model:
rails g model post title:string content:text author:string published_at:datetime

# rollback your wrong potion:
# generate
rails g controller post 
# destroy
rails d controller post


# category model:
rails g model category name:string

```

```rb
class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
    end
    create_join_table :categories, :posts;
  end
end
```