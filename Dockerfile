FROM sysdig/sysdig:dev

ENV DRAGENT_CONFIG=/dragent.yaml

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["bash"]
