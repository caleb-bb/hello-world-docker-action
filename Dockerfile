# Container image that runs your code
FROM debian:10 

RUN apt update -y && apt upgrade -y && apt-get install git -y && git clone https://github.com/hlissner/doom-emacs.git && grep -irl "2.23" doom-emacs | xargs sed -i 's/2.23/2.20/g' && /doom-emacs/bin/doom install -y

ENV PATH="~/doom-emacs/bin:$PATH"
 
CMD ["emacs"]
