FROM node:4-wheezy

ENV DEBIAN_FRONTEND noninteractive
ENV NODE_ENV production

RUN npm install --production ezvis -g
ADD startup.sh /

VOLUME /data/ezvis

# # # Write in mounted volume requires root privileges
# RUN groupadd -r ezvis \
# && useradd -r -g ezvis ezvis \
# && chown -R ezvis:ezvis /data/ezvis
# USER ezvis

EXPOSE 3000

CMD ["bash", "/startup.sh"]
