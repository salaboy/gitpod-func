FROM gitpod/workspace-full

USER root

COPY func /usr/local/bin/

RUN sudo apt-get install apt-transport-https ca-certificates gnupg -y
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update -y && apt-get install google-cloud-cli -y
RUN sudo apt-get install -y kubectl 
RUN sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin   
<<<<<<< Updated upstream

RUN brew install ko
=======
RUN wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | /bin/bash
RUN alias k=kubectl

>>>>>>> Stashed changes
