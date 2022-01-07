# Checking Web Service Status
echo "Waiting for web services"
until $(curl --output /dev/null --silent --head --fail http://127.0.0.1:8080/openmrs); do
    printf '.'
    sleep 5
done

# Checking Setup Status
echo "Waiting for setup to complete"
until $(curl --output /dev/null --silent --head --fail http://127.0.0.1:8080/openmrs/login.htm); do
    printf '.'
    sleep 5
done