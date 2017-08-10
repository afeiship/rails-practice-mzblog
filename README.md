# rails-practice-mzblog
> Rails practice for a mini blog.


## keynotes:
+ post model:
```conf
# post model:
rails g model post title:string content:text author:string published_at:datetime

# rollback your wrong potion:
# generate
rails g controller post 
# destroy
rails d controller post



```
+ categories:
  - category model:
```bash
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

+ user:
```bash
rails g model User nickname:string email:string password_digest:string
rails g controller users
rails g controller sessions
## OR:
rails g model User nickname email password_digest
```

+ login/logout
```rb
  # sign_up:
  get :sign_up, to: 'users#new'
  post :sign_up, to: 'users#create'

  # sign_in:
  get :sign_in, to: 'sessions#new'
  post :sign_in, to: 'sessions#create'
  
  # sign_out:
  get :sign_out, to:'sessions#destroy'
```