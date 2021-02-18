db.locations.insertOne(
    {
        "country": "SE",
        "Address": "Vimmerbygatan",
        "str_number": 20,
        account_owner:
        {
            $ref:  "users",
            _id: 3,
        }
    })

db.locations.insertOne(
    {
        "country": "SE",
        "Address": "Brunnsgatan",
        "str_number": 7,
        account_owner:
        {
            $ref: "users",
            _id: 1,
        }
    })

db.locations.insertOne(
    {
        "country": "US",
        "Address": "Comet road",
        "str_number": 41,
        account_owner:
        {
            $ref: "users",
            _id: 4,
        }
    })

    db.locations.insertOne(
        {
            "country": "US",
            "Address": "Asteroid road",
            "str_number": 5,
            account_owner:
            {
                $ref: "users",
                _id: 2,
            }
        })
