<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/quiz', name: 'quiz_')]

class QuizController extends AbstractController
{
    #[Route('', name: 'selection')]
    public function selection(): Response
    {
        return $this->render('quiz/selection.html.twig', [
            'controller_name' => 'QuizController',
        ]);
    }

    #[Route('/questions', name: 'questions')]
    public function questions(): Response
    {
        return $this->render('quiz/questions.html.twig', [
            'controller_name' => 'QuizController',
        ]);
    }

    #[Route('/results', name: 'results')]
    public function results(): Response
    {
        return $this->render('quiz/questions.html.twig', [
            'controller_name' => 'QuizController',
        ]);
    }
}