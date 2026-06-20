#!/bin/bash

#!/bin/bash
set -e

chmod +x *.sh

./install-dependencies.sh

./launch-instance.sh

./permissions.sh

./deploy.sh

echo "Pizza website deployed successfully!"

./orders.sh Harsha2145@gmail.com

echo "Pizza order placed successfully! Check your email for updates on your order status."