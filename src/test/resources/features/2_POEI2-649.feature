Feature: LoginTests

	@POEI2-649 @POEI2-702 @PO-ET @SA
	Scenario: failedLogin
		Given l'utilisateur est sur la page de connexion
		    When il saisit le login "standard_user" et le mot de passe "invalid_password"
		    And il valide la saisie
		    Then le message d'erreur s'affiche
		
