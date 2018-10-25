---
title: Habitat - VoxxedDays Microservices 2018
separator: \n-----\n
verticalSeparator: \n---\n
theme: black
revealOptions:
    transition: slide
---

<img src="habitat.svg" width="400" style="border:none;background-color:rgb(34, 34, 34)"/>
#### Application that travels with the app

-----

## Whoami

@rsertelon

Tech lead @ Nuxeo <!-- .element: class="fragment" -->

Habitat core plans maintainer <!-- .element: class="fragment" -->

-----

## Background

---

### Context

1 product <!-- .element: class="fragment" -->

2 developers <!-- .element: class="fragment" -->

Monolith to µServices <!-- .element: class="fragment" -->

Simplest Infrastructure possible <!-- .element: class="fragment" -->

---

### Infrastructure

2 envs <!-- .element: class="fragment" -->

8 services <!-- .element: class="fragment" -->

"Container" tarballs <!-- .element: class="fragment" -->

Manual deployments each sprint <!-- .element: class="fragment" -->

---

### Wishlist

No more SSH <!-- .element: class="fragment" -->

Config Management <!-- .element: class="fragment" -->

Continuous Deployment <!-- .element: class="fragment" -->

Infrastructure Agnostic Tooling <!-- .element: class="fragment" -->

-----

## DevOps?

---

### Organization

Multi disciplinary team <!-- .element: class="fragment" -->

Part of a Large structure <!-- .element: class="fragment" -->

Ops team with old processes <!-- .element: class="fragment" -->

---

### Our goals

Control over the app deployment <!-- .element: class="fragment" -->

We needed to adapt easily to changes <!-- .element: class="fragment" -->

-----

<img src="habitat.svg" width="400" style="border:none;background-color:rgb(34, 34, 34)"/>

---

### The project

Backed by CHEF inc. <!-- .element: class="fragment" -->

Public announcement in June, 2016 <!-- .element: class="fragment" -->

Early adopters community <!-- .element: class="fragment" -->

Focus is on 1.0 release atm <!-- .element: class="fragment" -->

---

### Innovative vision

"Application Automation" <!-- .element: class="fragment" -->

<img src="habitat-pyramid.png" style="border:none;background-color:rgb(34, 34, 34)" class="fragment" />

---

### What it does

Packages your application <!-- .element: class="fragment" -->

Runs your application <!-- .element: class="fragment" -->

Adds automation around your application <!-- .element: class="fragment" -->

-----

## Package Your Application

---

### Studio

```bash
$ hab studio enter # Clean slate, isolated environment
```

---

### Plan

```bash
pkg_origin=rsertelon
pkg_name=http-echo
pkg_version=0.1.0
pkg_deps=(core/jre8)
pkg_build_deps(core/maven)

do_build() {
    mvn clean verify
}

do_install() {
    cp *.jar ${pkg_prefix}
}
```

---

### Build

```bash
$ hab pkg build plan.sh
```

... <!-- .element: class="fragment" -->

```bash
I love it when a plan.sh comes together.
```
 <!-- .element: class="fragment" -->

---

### Deploy

TODO: Add HART mention + Depot

---

 ### Export

<div style="display:flex;height:142px;justify-content:space-around">
 <img src="logo-cloud-foundry.png" style="border:none;background-color:rgb(34, 34, 34)" />
 <img src="logo-docker.png" style="border:none;background-color:rgb(34, 34, 34)" />
 <img src="logo-helm.svg" style="border:none;background-color:rgb(34, 34, 34)" />
 <img src="logo-k8s.svg" style="border:none;background-color:rgb(34, 34, 34)" />
 <img src="logo-mesos.jpg" style="border:none;background-color:rgb(34, 34, 34)" />
 <img src="logo-targz.svg" style="border:none;background-color:rgb(34, 34, 34);width:100px" />
</div>

-----

## Run Your Application

---
