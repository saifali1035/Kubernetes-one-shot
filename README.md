# Kubernetes-one-shot

## Important Things.

## Port Forward command - 
```sh
sudo -E kubectl port-forward service/<service-name> -n <namespace> <application-port>:<container-port> --address=0.0.0.0
```


Example - 

```sh
sudo -E kubectl port-forward service/apache-service -n apache 82:80 --address=0.0.0.0
```


## Load Runner command - (Convenient to test VPA and HPA)

```sh
kubectl run -it <name-of-pod> --image=busybox -n <namespace>
```

Example - 

```sh
kubectl run -it load-generator --image=busybox -n apache
```


Inside the pod run this

```sh
while true; do wget -q -O- http://<service-name>.<namespace>.svc.cluster.local; done
```

Example -

```sh
while true; do wget -q -O- http://apache-service.apache.svc.cluster.local; done
```

