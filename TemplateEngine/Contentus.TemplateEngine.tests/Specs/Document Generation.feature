Feature: Document_Generation
	As a business owner
	I want to be able to generate documents
	So that I can automate parts of my business process

@DocumentGeneration
Scenario: Generating a document template from a valid data 
	Given A template is specified
	And a valid data model is provided
	When the document is requested
	Then the document should be created
	And the document should be populated as expected
	
@DocumentGeneration
Scenario: Generating a document template from invalid data
	Given A template is specified
	And an invalid data model is provided
	When the document is requested
	Then a validation error should be returned