db.createUser({user: "u1", pwd: "1234", roles: ["read"]})

db.createUser({user: "u2", pwd: "1234", roles:[ "readWrite"]})

db.createUser({user: "admin", pwd: "password", roles: ["dbAdmin"]})
