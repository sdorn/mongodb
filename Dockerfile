FROM ubuntu:15.04

RUN apt-get  update
RUN apt-get install -y php5 
RUN echo "<?php echo 'Hello  folks!';" > /var/index.php

WORKDIR /var

CMD ["php",  "-S", "0.0.0.0:9090", "-t",  "."]