# Flatiron Tamagotchi Pal

You're building the next greatest app for Flatiron School called, "Flatiron Tamagotchi Pal".
Your task is to take a pre-built backend (don't worry, we will give you the documentation
to the backend.), and use it to display all of our wondrous tamagotchis and make sure
they can exercise and get love. Below you'll have an example of the implementation and from
there you will need to recreate it.

## Example



## Deliverables
Your tasks include the following:
- As a user, when the page **loads** I should see an entire list of tamagotchis from a remote API
- As a user clicks on the Give Love button, it should increment the love value by one. This should be persisted in the remote API as well.
- As a user clicks on the Exercise button, it should increment the strength value by one. This should be persisted in the remote API as well.

## Implementation Notes

### Cards Look
We will be using Semantic UI to build out our pretty view. Take this base for each card
and you can use this to render the view. Think about what can we do with this HTML **string**. Fill out the appropriate fields with `()`. Be sure to attached the appropriate
clicks as well.

```html
<div class="ui raised card">
  <div class="content">
    <div class="header">
      (Tamagotchi Name)
    </div>
    <div class="meta">
      <span>Owner: (Tamagotchi Owner)</span>
      <span>(Tamagotchi Age)</span>
    </div>
    <div class="description">
      <div id="ui strength">
        Strength: (Tamagotchi Strength)
      </div>
      <div class="ui love">
        Love: (Tamagotchi Love)
      </div>
    </div>
  </div>
  <div class="extra content">
    <div class="left floated">
      <div class="ui green button">Exercise</div>
    </div>
    <div class="right floated">
      <div class="ui red button">Give Love</div>
    </div>
  </div>
</div>
```

### The API
You will be able to run the backend API on your own system. You will make sure to have a
terminal window open and in the `tamagotchi-backend` folder. You will need to be sure to:

1. `rake db:migrate`
2. `rake db:seed`
3. `rails s`

This will get your server all prepared and running. The base url is `http://localhost:3000/`.
You will then make sure append whatever resource you are using moving forward through this document, such as `/tamagotchis`.

#### GET `/tamagotchis`
You will get **all** tamagotchis.

```
# Example Requests
GET 'http://localhost:3000/tamagotchis'

# Example Response
[
  {
    "id":33,
    "name":"Johann",
    "owner":"Adam",
    "age":9,
    "love":20,
    "strength":10,
    "created_at":"2018-02-14T15:24:44.752Z",
    "updated_at":"2018-02-14T15:42:00.660Z"
  },
  {
    "id":34,
    "name":"Meryl",
    "owner":"Adam",
    "age":8,
    "love":30,
    "strength":40,
    "created_at":"2018-02-14T15:24:44.762Z",
    "updated_at":"2018-02-14T15:24:44.762Z"
  },
  ...
]
```

#### PATCH `/tamagotchis/:id`
This is how you will be able to update their `love` or `strength`. This request
can take either `love` or `strength` within the body but we **cannot** put both. The
love button should align to increasing love **by 1** and the exercise button should
align to increase strength **by 1**.

```
# Example Request
PATCH 'http://localhost:3000/tamagotchis/35'

Required Headers
{
  'Content-Type': 'application/json'
}

Required Body
{
  "bump": "love"
}

# Example Response
{
	"id": 35,
	"love": 21,
	"name": "Steven",
	"owner": "Adam ",
	"age": 8,
	"strength": 15,
	"created_at": "2018-02-14T15:24:44.768Z",
	"updated_at": "2018-02-14T16:37:53.470Z"
}
```

```
# Example Request
PATCH 'http://localhost:3000/tamagotchis/35'

Required Headers
{
  'Content-Type': 'application/json'
}

Required Body
{
  "bump": "strength"
}

# Example Response
{
	"id": 35,
	"strength": 16,
	"name": "Steven",
	"owner": "Adam ",
	"age": 8,
	"love": 21,
	"created_at": "2018-02-14T15:24:44.768Z",
	"updated_at": "2018-02-14T16:38:50.692Z"
}
```
