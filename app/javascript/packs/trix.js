// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/activestorage").start()

const trix = require("trix")

// trix default behaviour is terrible:
// convention over configuration only works if the conventions are sane

// uses h2 instead of h1 (h1 is the site title)
trix.config.blockAttributes.heading1.tagName = "h2"

// wtf, use the paraghraph tag
trix.config.blockAttributes.default.tagName = "p"


// by default, trix can't handle relative links...
input = trix.config.toolbar.content.querySelector("input[type=url]")
input.type = "text"

require("@rails/actiontext")
