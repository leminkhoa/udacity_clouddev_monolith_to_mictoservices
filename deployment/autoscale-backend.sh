kubectl autoscale deployment backend-feed --cpu-percent=70 --min=2 --max=3
kubectl autoscale deployment backend-user --cpu-percent=70 --min=2 --max=3
kubectl autoscale deployment reverseproxy --cpu-percent=70 --min=2 --max=3
kubectl autoscale deployment frontend --cpu-percent=70 --min=2 --max=3
