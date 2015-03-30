# reveal.js in Docker container

## Slide-deck powered by Docker, Node.js and reveal.js

Build Docker image:

```shell
$ docker build -t="siso/docker-revealjs" .
```

Launch Docker container from image:

```shell
docker run -p 8000:8000 --name "docker-revealjs" \
-v $(pwd)/slide-deck:/opt/reveal.js/slide-deck \
-d "siso/docker-revealjs"
```

Start and stop Docker container:

```
$ docker start docker-revealjs
$ docker stop docker-revealjs
```

## On-line presentation

### Add content

Add `index.html` do `./slide-deck`.

An example is provided, please see [reveal.js](https://github.com/hakimel/reveal.js/) documentation.

### View the presentation

View the on-line presentation:

- http://127.0.0.1:8000/slide-deck#/
- http://BOOT2DOCKER-IP:8000/slide-deck, OS X users should replace `BOOT2DOCKER-IP` with `$(boot2docker ip)`

### Export as PDF

Point web browser to:

- http://127.0.0.1:8000/slide-deck/?print-pdf

Print, and select "save as PDF".

## Links

- [The HTML Presentation Framework](http://lab.hakim.se/reveal-js) on [GitHub](https://github.com/hakimel/reveal.js/)
- [Presenting with Docker](http://kartar.net/2014/05/presenting-with-docker/) by James Turnbull
