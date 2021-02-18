/*C - CREATE */

db.users.insertOne({f_name: "Noland", l_name:"Dankers"})

db.locations.insertOne(
    {
        "country": "NL",
        "Address": "Damrak",
        "str_number": 20,
        account_owner:
        {
            $ref:  "users",
            $_id: ObjectId("602e3e491d3427f34dfac62b"),
        }
    })

db.users.insertOne({f_name: "Jonas", l_name:"Von Lust"})

db.locations.insertOne(
    {
        "country": "NL",
        "Address": "Damrak",
        "str_number": 21,
        account_owner:
        {
            $ref:  "users",
            $_id: ObjectId("602e3e4c1d3427f34dfac62c"),
        }
    })

/* R - READ */

db.users.find();

db.users.find( { _id:  3} )

db.users.find({}).toArray()

db.locations.find();

db.locations.find({country: "SE"});


/* U - UPDATE */

db.locations.update(
    {
        "country": "NL",
        "Address": "Damrak",
        "str_number": 21,
    },
    {
        $set: {"str_number": 20}
    })

/* D - DELETE */
db.users.deleteOne(
    {
        first_name: "Mike",
        last_name: "Mitchell",
    });