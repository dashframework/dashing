let webpack = require("webpack");
let path = require("path");

const PROJECT_ROOT = path.resolve(__dirname);

module.exports = {
    devtool: "source-map",
    entry: [
        "./example/scripts/load_bower_components.js",
        "./example/scripts/main.js"
    ],
    module: {
        loaders: [
            {
                test: /\.js$/,
                include: [
                    path.join(PROJECT_ROOT, "example"),
                    path.join(PROJECT_ROOT, "scripts")
                ],
                loader: "babel-loader"
            },
            {
                test: /\.ejs$/,
                include: [
                    path.join(PROJECT_ROOT, "example"),
                    path.join(PROJECT_ROOT, "scripts"),
                    path.join(PROJECT_ROOT, "templates")
                ],
                loader: "ejs-compiled"
            }
        ]
    },
    output: {
        filename: "application.js",
        path: path.resolve(__dirname, "dist")
    },
    plugins: [
        new webpack.ProvidePlugin({
            "underscore": "underscore",
            _: "underscore",
            "jquery": "jquery"
        }),
    ],
    resolve: {
        alias: {
            "scripts": path.join(PROJECT_ROOT, "scripts"),
            "example": path.join(PROJECT_ROOT, "example")
        },
        modulesDirectories: [
            path.join(PROJECT_ROOT, "node_modules"),
            path.join(PROJECT_ROOT, "bower_components")
        ]
    }
}
