
Welcome to Chiχ!
=====================

**Chiχ** is a structured system to provide [flow-based programming](http://www.jpaulmorrison.com/fbp/) to build javascript applications.

It is still in alpha state.

The intent of this site is to explain and document the parts and pieces that make up the **Chiχ** system.

The main focus is not trying to re-invent the wheel.

There is already a wealth of [npm packages](https://npmjs.org/) available
providing almost every functionality imaginable.

**Chiχ** tries to be a glue for these packages and make you able to use them in a fun and productive way.

How you use **Chiχ** is up to you, for example you could make a webserver out of low-level components and make
almost all of the internals flow based or
you could take your favorite [npm package](https://npmjs.org/browse/star) and make configurable and reusable nodes out of them.

Everything in **Chiχ** is defined using [JSON](http://www.json.org/) and [JSON Schema](http://json-schema.org/).
At the moment even the code is saved within the **json**.

This means all parts of the system could come from a database or just be served statically.

-------
## Installation

At the moment only the command line utility is available.

The command line can execute files written in the [.fbp](/articles/fbp) format.

```bash
npm install fbpx -g
```
Once fbpx is installed you can try it out by creating your first .fbp file.
```coffeescript
title: Hello
description: A hello example using whoami

'Hello $1!'  -> replace Replace(string/replace)
'([A-z]+)\n' -> match Replace
'whoami'     -> in WhoAmI(utils/exec) out -> in Replace

Replace out -> msg Log(console/log)
```

Now you can execute the flow with fbpx:
```bash
$ fbpx hello.fbp
Hello rob!
```

You can look at the [example page](/examples) for some more first tries.

-------

## Node Definition Loading


**Chiχ** will [load it's definitions](https://github.com/psichi/chix-loader-remote/blob/master/lib/loader.js#L69) from a provider url, by default this is:

http://serve.chix.io/nodes/{ns}/{name}

If you want to serve the definitions locally you can fork the [chix-platform](https://github.com/psichi/chix-platform) repository and serve the definitions yourself:

```
git clone git@github.com:psichi/chix-platform.git
```

To serve the files you could use something like [http-server](https://npmjs.org/package/http-server):

```
npm i http-server -g
```

To enable loading from your own server, you will
have to specify the url in your .fbp file like so:

```
title: Provider Example
description: This is how to specify a provider

provider http://localhost:8080/nodes/{ns}/{name}

SomeNode(some/node)

.....

```

--------
## Automatic Requirement Installation

Besides the loading of the node Definitions **Chiχ** will also automatically install the [npm](https://npmjs.org/)  packages a node might require.

e.g. The email package [will require](http://chix.io/packages/emailjs#emailjs_server) emailjs, this will be automatically detected and installed prior to executing the file.

--------

