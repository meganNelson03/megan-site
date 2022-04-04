// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import jquery from 'jquery'
window.jQuery = jquery
window.$ = jquery
import "popper";
import "bootstrap";
import "slick-carousel";
import "paper";

// Font awesome Free
import {far} from "@fortawesome/free-regular-svg-icons"
import {fas} from "@fortawesome/free-solid-svg-icons"
import {fab} from "@fortawesome/free-brands-svg-icons"
import {library} from "@fortawesome/fontawesome-svg-core"
import "@fortawesome/fontawesome-free"
library.add(far, fas, fab)

