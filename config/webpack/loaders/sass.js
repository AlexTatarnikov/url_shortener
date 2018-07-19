module.exports = {
  test: /\.(scss|sass)$/,
  use: [{
    loader: "to-string-loader"
  }, {
    loader: "css-loader"
  }, {
    loader: "postcss-loader"
  }, {
    loader: "resolve-url-loader"
  }, {
    loader: "sass-loader"
  }]
}
