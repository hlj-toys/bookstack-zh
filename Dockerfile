FROM linuxserver/bookstack
ENV TZ=Asia/Shanghai
# add chinese font for wkhtmltopdf export
RUN \
  apk --no-cache add msttcorefonts-installer fontconfig && \
  update-ms-fonts && \
  fc-cache -f && \
  echo @edge http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && apk add wqy-zenhei@edge && \
  apk add wqy-zenhei --update-cache --repository http://nl.alpinelinux.org/alpine/edge/testing --allow-untrusted && \
  apk add --update font-adobe-100dpi ttf-dejavu fontconfig && \
  rm -rf /var/cache/apk/*




