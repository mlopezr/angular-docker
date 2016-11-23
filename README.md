
**Dockerfile for [Yeoman](http://yeoman.io/) with [AngularJS](https://angularjs.org/) generators**

### Run

```
docker run -it --rm -p 9000:9000 -p 3000:3000 -p 3001:3001 -v $(pwd)/app:/app alexagency/angular-yeoman
```

Initiate one of Yeoman generators:

[AngularJS Oficial generator](https://github.com/yeoman/generator-angular):
```
yo angular
```

[AngularJS Full-Stack generator](https://github.com/DaftMonk/generator-angular-fullstack):
```
yo angular-fullstack
```

[ngBoilerplate generator](https://github.com/thardy/generator-ngbp):
```
yo ngbp
```

[AngularJS with GulpJS](https://github.com/Swiip/generator-gulp-angular):
```
yo gulp-angular
```

Check generated project in /app.

Build:

AngularJS Oficial, AngularJS Full-Stack and ngBoilerplate:
```
grunt build --force
```

AngularJS with GulpJS:
```
gulp build
```

Run unit tests:

AngularJS Oficial, AngularJS Full-Stack and ngBoilerplate:
```
grunt test
```

AngularJS with GulpJS:
```
gulp test
```

Compile and launch:

AngularJS Oficial, AngularJS Full-Stack and ngBoilerplate:
```
sed -i s/localhost/0.0.0.0/g Gruntfile.js
grunt serve --force
```

AngularJS with GulpJS:
```
gulp serve
```

Browse to Angular webapp:

AngularJS Oficial, AngularJS Full-Stack and ngBoilerplate:
```
http://<virtual machine ip>:9000/
```

AngularJS with GulpJS:
```
http://<virtual machine ip>:3000/
http://<virtual machine ip>:3001/
```
