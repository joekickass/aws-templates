FROM alpine

ENV AWS_DEFAULT_PROFILE=cet-prod
ENV AWS_PROFILE=cet-prod

RUN apk --no-cache add \
    ansible \
    py-boto

ADD templates/*.template.json /root/
ADD *.inventory /root/

ADD *.template.json /root/
ADD template.yml /root/

WORKDIR /root

CMD ["sh", "-c", "printf \"\n%s\n\" \"ModifiedDate=$(< /dev/urandom tr -dc A-Z-a-z-0-9 | head -c20)\" >> ${env}.inventory && ansible-playbook -v -i ${env}.inventory template.yml"]