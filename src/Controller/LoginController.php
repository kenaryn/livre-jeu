<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Bundle\SecurityBundle\Security;

class LoginController extends AbstractController
{
    #[Route('/login', name: 'app_login')]
    public function index(AuthenticationUtils $authenticationUtils): Response
    {
        # Get the login error if there is one.
        $error = $authenticationUtils->getLastAuthenticationError();

        # Last username entered by the user.
        $lastUserName = $authenticationUtils->getLastUsername();
        
        return $this->render('login/index.html.twig', [
            'last_username' => $lastUserName,
            'error' => $error,
        ]);
    }

    #[Route('/logout', name: 'app_logout')]
    public function logOut(Security $security): Response
    {
        /**
         * Log out the user on current firewall.
         *  */ 
        $response = $security->logout();
        return $this->redirectToRoute('app_home', [], Response::HTTP_SEE_OTHER);
    }
}
