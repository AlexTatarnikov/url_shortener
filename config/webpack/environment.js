const { environment } = require('@rails/webpacker')
const typescript =  require('./loaders/typescript')
const html =  require('./loaders/html')
const sass =  require('./loaders/sass')

environment.loaders.append('typescript', typescript)
environment.loaders.append('html', html)
environment.loaders.append('sass', sass)

environment.config.merge({
  resolve: {
    alias: {
      images: 'src/images',
    }
  }
})

module.exports = environment
