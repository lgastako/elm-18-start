module.exports = {
     entry: "./app.js",
     output: {
         path: ".",
         filename: "app.bundle.js"
     },
     loaders: [{
         test: /\.elm$/,
         include: ["src"],
         loader: `elm-webpack?cwd=${__dirname}/src`,
         warn: true,
         yes: true
     }],
     devServer: {
         port: 2112,
         historyApiFallback: true
     }
 };
