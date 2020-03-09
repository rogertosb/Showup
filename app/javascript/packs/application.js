import "bootstrap";
import {initAutocomplete} from '../plugins/autocomplete'
import $ from "jquery"

initAutocomplete()

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
