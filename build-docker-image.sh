docker build -t traffic-waster:v1.0.0 .

#tag name
docker tag traffic-waster:v1.0.0 liuzy/traffic-waster:latest

# push to docker hub
docker push liuzy/traffic-waster:latest

# clean docker images
# shellcheck disable=SC2006
imagesId=`docker images | grep traffic-waster | awk '{print $3}'`
echo $imagesId
for str in $imagesId
do
  docker rmi $str -f
done