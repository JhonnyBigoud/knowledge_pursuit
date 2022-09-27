<?php

namespace App\Entity;

use App\Repository\QuestionRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: QuestionRepository::class)]
class Question
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $Wording = null;

    #[ORM\Column(length: 80)]
    private ?string $Proposition_1 = null;

    #[ORM\Column(length: 80)]
    private ?string $Proposition_2 = null;

    #[ORM\Column(length: 80)]
    private ?string $Proposition_3 = null;

    #[ORM\Column(length: 80)]
    private ?string $Bonne_Réponse = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $image = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getWording(): ?string
    {
        return $this->Wording;
    }

    public function setWording(string $Wording): self
    {
        $this->Wording = $Wording;

        return $this;
    }

    public function getProposition1(): ?string
    {
        return $this->Proposition_1;
    }

    public function setProposition1(?string $Proposition_1): self
    {
        $this->Proposition_1 = $Proposition_1;

        return $this;
    }

    public function getProposition2(): ?string
    {
        return $this->Proposition_2;
    }

    public function setProposition2(string $Proposition_2): self
    {
        $this->Proposition_2 = $Proposition_2;

        return $this;
    }

    public function getProposition3(): ?string
    {
        return $this->Proposition_3;
    }

    public function setProposition3(string $Proposition_3): self
    {
        $this->Proposition_3 = $Proposition_3;

        return $this;
    }

    public function getBonneRéponse(): ?string
    {
        return $this->Bonne_Réponse;
    }

    public function setBonneRéponse(string $Bonne_Réponse): self
    {
        $this->Bonne_Réponse = $Bonne_Réponse;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(?string $image): self
    {
        $this->image = $image;

        return $this;
    }
}
