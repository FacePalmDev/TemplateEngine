Feature: Read File Templates
	As a business owner
	I want a to be able to read template file templates
	So that I can choose an appropriate template for document generation

	@FileTemplates
	Scenario: Directory is not accessible
		Given a template path is provided
		But the template path does not exist
		When the templates are requested
		Then a directory does not exist error is returned
	
	@FileTemplates
	Scenario: Directory path empty
		Given a template path is provided
		But the template path is empty
		When the templates are requested
		Then an empty list is returned
	
	@FileTemplates
	Scenario: Directory path contains files but not templates
		Given a template path is provided
		But the template path does not any contain templates
		When the templates are requested
		Then an empty list is returned
		
	@FileTemplates
	Scenario: Template format incorrect
		Given a template path is provided
		And the template path contains templates
		When the templates are requested
		But the template format is incorrect
		Then a format error is returned
	
	@FileTemplates
	Scenario: Reads template files from the directory
		Given a template path is provided
		And the template path contains templates
		When the templates are requested
		Then the correct number of templates are returned
		And each template returned will match the files provided