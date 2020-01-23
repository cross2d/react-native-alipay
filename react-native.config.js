module.exports = {
    project: {
        ios: {},
        android: {}, // grouped into "project"
    },
    hooks:{
        "postlink": "node node_modules/@cross2d/react-native-alipay/scripts/postlink/postlink",
        "postunlink": "node node_modules/@cross2d/react-native-alipay/scripts/postunlink/postunlink",
    }
};



