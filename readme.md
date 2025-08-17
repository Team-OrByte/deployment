docker tag payment_service:latest thetharz/orbyte_payment_service:latest
docker push thetharz/orbyte_payment_service:latest

docker tag reward_service:latest thetharz/orbyte_reward_service:latest
docker push thetharz/orbyte_reward_service:latest

docker tag auth_service:latest thetharz/orbyte_auth_service:latest
docker push thetharz/orbyte_auth_service:latest

docker tag user_service:latest thetharz/orbyte_user_service:latest
docker push thetharz/orbyte_user_service:latest

docker tag review_service:latest thetharz/orbyte_review_service:latest
docker push thetharz/orbyte_review_service:latest

docker tag bike_service:latest thetharz/orbyte_bike_service:latest
docker push thetharz/orbyte_bike_service:latest

Make sure port 8080 is free and just run docker compose up
