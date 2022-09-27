<?php

namespace App\Controller;

use App\Repository\QuestionRepository;
use App\Repository\ThemeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/quiz', name: 'quiz_')]

class QuizController extends AbstractController
{
    #[Route('', name: 'selection')]
    public function selection(ThemeRepository $themeRepository): Response
    {
        // $theme= $themeRepository->findAll();
        $themes= $themeRepository->findAll();
        dump($themes);
        return $this->render('quiz/selection.html.twig', [
            'themes' => $themes,
        ]);
    }

    #[Route('/questions', name: 'questions')]
    public function questions(QuestionRepository $questionRepository): Response
    {   
        $questions= $questionRepository->findAll();
        return $this->render('quiz/questions.html.twig', [
            'questions' => $questions,
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