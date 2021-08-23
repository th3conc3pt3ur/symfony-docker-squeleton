<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Info;

class AppController extends AbstractController
{
    #[Route('/', name: 'app')]
    public function index(): Response
    {
        $em = $this->getDoctrine()->getManager();
        $test = $em->getRepository(Info::class)->findAll();
        return $this->render('app/index.html.twig', [
            'controller_name' => 'AppController',
            'test' => $test
        ]);
    }
    #[Route('/test', name: 'app')]
    public function test(): Response
    {
        return new Response("coucou");
    }
}
