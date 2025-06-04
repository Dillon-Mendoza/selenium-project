// To run the script, use the command: bash setup.sh
#!/bin/bash

echo "Setting up the environment..."
python3 -m venv setup_env

echo "Virtual environment created. Activating it..."
source setup_env/bin/activate
echo "Installing required packages..."
curl -O https://storage.googleapis.com/chrome-for-testing-public/137.0.7151.68/linux64/chromedriver-linux64.zip
unzip chromedriver-linux64.zip

pip install --upgrade pip
pip install selenium
pip install webdriver-manager
pip install pytest
pip install pytest-selenium
echo "Setup complete. You can now run your tests."
# Deactivate the virtual environment
deactivate
echo "Virtual environment deactivated."
# Clean up
rm chromedriver-linux64.zip
rm chromedriver
echo "Temporary files removed."