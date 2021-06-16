import Vue from 'vue'
import App from '../app.vue'
import New from './roads/New.vue'

document.addEventListener('DOMContentLoaded', () => {
  var app = new Vue({
    el: "#input-form",
    data: {
      adrs_list: []
    }
  });
});
