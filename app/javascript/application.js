
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import './jquery-init';
import Rails from '@rails/ujs';
Rails.start();

//import "popper";
import "jquery";
import "bootstrap";
import "slick-carousel";

import "@fortawesome/fontawesome-free/js/all"
import "./homepage.js";
import "./filter.js";

import '../assets/stylesheets/application.css';

