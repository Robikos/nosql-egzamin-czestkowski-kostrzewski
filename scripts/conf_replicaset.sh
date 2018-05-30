var cfg = { _id: 'mongo-replset',
    members: [
        { _id: 0, host: '139.59.177.113:27017'},
        { _id: 1, host: '139.59.185.228:27017'},
    ]
};

var error = rs.initiate(cfg);
printjson(error);
