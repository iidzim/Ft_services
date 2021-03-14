minikube delete
minikube start
eval $(minikube docker-env)
minikube addons enable metallb
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

docker build -t nginx ./srcs/nginx/
docker build -t phpmyadmin ./srcs/phpmyadmin/
docker build -t wordpress ./srcs/wordpress/
docker build -t mysql ./srcs/mysql/
docker build -t influxdb ./srcs/influxdb/
docker build -t grafana ./srcs/grafana/
docker build -t ftps ./srcs/ftps/

kubectl apply -f ./srcs/metalLB.yaml
kubectl apply -f ./srcs/nginx/nginx.yaml
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin.yaml
kubectl apply -f ./srcs/wordpress/wordpress.yaml
kubectl apply -f ./srcs/mysql/mysql.yaml
kubectl apply -f ./srcs/influxdb/influxdb.yaml
kubectl apply -f ./srcs/grafana/grafana.yaml
kubectl apply -f ./srcs/ftps/ftps.yaml

minikube dashboard 
