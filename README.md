This rails 7 project was created to test the integration possibilities of Tesseract with Rails.
In the project we create a user with the following fields
  first_name
  last_name
  email
  identification_number
  identification_document_image
  
When validating the Customer model we check the image for an ID number and check that against the number entered by user. If it doesnt match, it will throw an error
