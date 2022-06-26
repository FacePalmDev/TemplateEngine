Feature: Data_Validation
	Simple calculator for adding two numbers

@DataModelValidation
Scenario: A value falls out of range
	Given The model data is populated
	And a numeric field has value outside of it's range
	When the model is validated
	Then a failure status should be returned
	And a validation error should be returned

@DataModelValidation
Scenario: A required property is null
	Given The model data is populated
	And a required field is null
	When the model is validated
	Then a failure status should be returned
	And a validation error should be returned

@DataModelValidation
Scenario: A required string property is empty
	Given The model data is empty
	And a required field is empty
	When the model is validated
	Then a failure status should be returned
	And a validation error should be returned

@DataModelValidation
Scenario: The model is valid
	Given The model data is populated
	And the model is valid
	When the model is validated
	Then a success status should be returned
	
