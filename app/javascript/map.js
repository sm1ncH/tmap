/**
       * @license
       * Copyright 2019 Google LLC. All Rights Reserved.
       * SPDX-License-Identifier: Apache-2.0
       */
      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
      function initMap() {
        const map = new google.maps.Map(document.getElementById("map"), {
          center: { lat: 46.362274, lng: 15.110658 },
          zoom: 9,
          mapTypeControl: false,
        });

        <% @todos.each do |todo| %>
          // Create a marker for each todo
          const marker_<%= todo.id %> = new google.maps.Marker({
            position: { lat: <%= todo.location.latitude %>, lng: <%= todo.location.longitude %> },
            map: map,
            description: '<%= todo.description %>' // optional: display description on marker
          });
        <% end %>
      }
      
      window.initMap = initMap;