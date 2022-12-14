  1 FROM  node:16
  2 LABEL project="angular"
  3 LABEL author="saimain"
  4 ADD . /angular-realworld-example-app
  5 RUN cd angular-realworld-example-app && npm install -g @angular/cli && npm install
  6 EXPOSE 4200
  7 WORKDIR /angular-realworld-example-app
  8 CMD ["ng", "serve", "--host", "0.0.0.0"]
