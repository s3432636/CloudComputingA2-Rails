# Playerly Core

## Overview

API only Rails application for the Playerly app.

### Prerequisites

Before we begin, make sure that you have the following installed first before continuing.

 - 
 - 

### Setup

To get started with Playerly, clone the repository to your local machine.

Once cloned launch termainal and navigate to the playerly/core folder and run `bundle install --without production` to install all required dependaces

Next, migrate the database: `rails db:migrate` or `rails db:seed` to load dummy team data.

Run the test suite to verify that everything is working correctly: `rails test``

If the test suite passes, you'll be ready to run Playerly in a local server: `rails server`

# Authorization

All API requests will need to be authorized with a jwt token. To obtain a token, you will need to authorize using the /authenticate endpoint with the email and password of the user in the body of the request. 

```json
{
    "email": "email@gmail.com",
    "password":"password1234"
}
```

This will return a json with a bearer token that you will then need to attach to any API requests you make.

## Usage

### GET /api/v1/teams

You will need to add the bearer token to the request, and a call to this endpoint will return json in the format:

```json
[
    {
        "id": 1,
        "name": "Frequent Flyers",
        "players": "DDYBCN,BobS",
        "sport": "Netball",
        "created_at": "2020-04-14T09:16:51.439Z",
        "updated_at": "2020-04-14T09:16:51.439Z",
        "image": "https://i.pinimg.com/originals/02/0f/cc/020fcc5c03cf45a90a2ecb2eaa56902f.jpg",
        "admin": 1
    },
    {
        "id": 2,
        "name": "Gorillaz",
        "players": "DDYBCN,BobS",
        "sport": "Basketball",
        "created_at": "2020-04-14T09:16:51.446Z",
        "updated_at": "2020-04-14T09:16:51.446Z",
        "image": "https://cdn.dribbble.com/users/1222550/screenshots/4524432/b1db1259207091.5a198e7cae3cb.png",
        "admin": 2
    }
]
```

### POST /api/v1/teams#create

You will need to add the bearer token to the request, and json in the following format:

```json
{
    "team": {
        "name": "Some Team Name",
        "sport": "Baseball",
        "image": "aurl.com/img.jpg"
    }
}
```
The admin field of the team will automatically be populated using the user ID of the current user, which is authorised using the bearer token.