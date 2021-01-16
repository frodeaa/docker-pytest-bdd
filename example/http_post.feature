@post
Feature: HTTP POST
    Example illustrating use of docker-pytest-bdd

Scenario: post to urls
    Given a <url>
    When I request POST
    Then response status should be <status>

    Examples:
    | url                     | status      |
    | https://httpstat.us/200 | OK          |
    | https://httpstat.us/400 | BAD_REQUEST |
