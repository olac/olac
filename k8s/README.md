If you have a kubernetes cluster, you can simply install olac in it.

```
kubectl apply -k .
```

If you don't have a kubernetes cluster, you can try minikube. Here is an
example.

```
$ minikube -p olac start --container-runtime=containerd --addons=metallb
$ minikube -p olac addons configure metallb
-- Enter Load Balancer Start IP: 172.19.5.100
-- Enter Load Balancer End IP: 172.19.5.120
...
```

Above, the metallb addon is used to expose the olac web site running in
the kubernetes cluster. There are different ways to access a service inside
a kubernetes cluster. In this example, the OLAC web site will be exposed to
one of the IP addresses in the range you specify.
