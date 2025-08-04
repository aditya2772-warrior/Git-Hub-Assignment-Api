Feature: writing the script for the patch request 
@patch
Scenario: Patch Request example
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    And request 
    """
    {
        "title": "rahula",
    }
    """
    And method patch
    When status 200
    * print response 
