from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By

import time

service = Service(executable_path='')
driver = webdriver.Chrome(service=service)