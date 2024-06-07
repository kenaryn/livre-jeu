<?php

namespace App\Controller;

use App\Repository\PersonnageRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class JouerController extends AbstractController
{
    #[Route('/jouer', name: 'app_jouer')]
    public function index(PersonnageRepository $personnageRepository): Response
    {
        $personnages = $personnageRepository->findAll();
        return $this->render('jouer/index.html.twig', [
            'personnages' => $personnages,
        ]);
    }
}
