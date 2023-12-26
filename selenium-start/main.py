from selenium import webdriver
from selenium.webdriver.common.by import By
from webdriver_manager . chrome import ChromeDriverManager
from time import sleep
driver = webdriver.Chrome()
driver.get("https://www.google.com")
driver.maximize_window()
sleep(5)
input = driver.find_element(By.NAME, "q") #name'e göre bir bağlantı olacak
input.send_keys("kodlamaio")
sleep(3)
searchbutton = driver.find_element(By.NAME, "btnK")
searchbutton.click() #buton clickleme 
sleep(4)
firstResult = driver.find_element(By.XPATH,"//*[@id='rso']/div[1]/div/div/div/div/div/div/div/div[1]/div/span/a/h3")
firstResult.click()
sleep(5)
listOfCourses = driver.find_elements(By.CLASS_NAME, "course-listening")
testResult=len(listOfCourses) == 6
print(f"Test Sonucu : {testResult}")


