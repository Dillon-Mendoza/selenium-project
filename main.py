from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

import time

service = Service(executable_path='chromedriver')
driver = webdriver.Chrome(service=service)

driver.get("https://www.google.com")

input_element = driver.find_element(By.CLASS_NAME, "gLFyf")
input_element.send_keys("Github" + Keys.ENTER)

time.sleep(10)

driver.quit()
