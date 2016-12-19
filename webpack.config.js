 module.exports = {
     entry: "./app.js",
     output: {
         path: ".",
         filename: "app.bundle.js"
     },
     devServer: {
         port: 2112,
         historyApiFallback: true
     }
 };
