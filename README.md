# CV Tomka Boris
"OPPORTUNITY DON'T HAPPEN, YOU CREATE THEM"

This repository is created to present my resume for employment opportunities. 
The image of this web-server/site can be also pulled from Docker hub.

```bash
docker run -p 80:80 -d boristomka/cv_tomkaboris
```

M1/M2 Mac
```bash
docker run -p 80:80 -d --platform linux/x86_64/v8 boristomka/cv_tomkaboris
```

On the repository is setup GitHub Action and all updates will perform build, test and push to the Docker Hub image automatically.
