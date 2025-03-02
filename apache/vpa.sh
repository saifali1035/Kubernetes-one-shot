kind: VerticalPodAutoscaler
apiVersion: autoscaling.k8s.io/v1
metadata:
 name: apache-vpa
 namespace: apache

spec:
 targetRef:
  name: apache-deployment
  apiVersion: apps/v1
  kind: Deployment
 updatePolicy:
  updateMode: "Auto"

