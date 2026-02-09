Feature: LoginTests

	Background:
		#@POEI2-691
		Scenario Outline: Connexion avec identifiants valides
		    Given l'utilisateur est sur la page de connexion
		    When il saisit le login "<username>" et le mot de passe "<password>"
		    And il valide la saisie
		    Then il est redirigé vers la page d'accueil
		    Examples:
		      | username      | password     |
		      | standard_user | secret_sauce |
		      | problem_user  | secret_sauce |
		      | visual_user   | secret_sauce |

	@POEI2-656 @POEI2-702 @PO-ET @SA
	Scenario: successfulLogin
		Scenario Outline: Connexion avec identifiants valides
		    Given l'utilisateur est sur la page de connexion
		    When il saisit le login "<username>" et le mot de passe "<password>"
		    And il valide la saisie
		    Then il est redirigé vers la page d'accueil
		    Examples:
		      | username      | password     |
		      | standard_user | secret_sauce |
		      | problem_user  | secret_sauce |
		      | visual_user   | secret_sauce |
		
