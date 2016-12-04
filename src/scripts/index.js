'use strict'

if (module.hot) {
  module.hot.accept()
}

import 'babel-polyfill'
import '../styles/index.scss'

// simple riot event handling
import './events.js'

import '../components/app.tag'
riot.mount('election-impact-app')
