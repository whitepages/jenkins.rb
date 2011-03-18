
Feature: Plugin development

As a CI tool, Jenkins has no equal, but it's written in Java, which can be a
sticking point for Ruby devs. Jenkins will be much more of a "go-to" tool 
if you can extend its behavior with just Ruby, and no java.

Scenario: Create a new plugin

  When I run the command "jenkins plugin my-plugin"
  Then I should see a new directory called "my-plugin"
  And it should have a "Gemfile"
  And a "Rakefile"
  And a .gitignore with ".rspec,.rvmrc,.bundle"
  And a directory called "plugin"
  And it should have a directory for "models"
  And for "lib"
  And for "views"

Scenario: Generating a model
  