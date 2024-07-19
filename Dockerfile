FROM dev171192/ngnix-alpine
COPY explore_california/index.html /usr/share/nginx/html/index.html
COPY explore_california/assets /usr/share/nginx/html/assets
COPY explore_california/contact.html /usr/share/nginx/html/contact.html
COPY explore_california/explorers.html /usr/share/nginx/html/explorers.html
COPY explore_california/mission.html /usr/share/nginx/html/mission.html
COPY explore_california/resources /usr/share/nginx/html/resources
COPY explore_california/resources.html /usr/share/nginx/html/resources.html
COPY explore_california/support.html /usr/share/nginx/html/support.html
COPY explore_california/tours /usr/share/nginx/html/tours
COPY explore_california/tours.html /usr/share/nginx/html/tours.html

~                                                                                                                                                           ~                                                                 
