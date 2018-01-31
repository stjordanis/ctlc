{-# OPTIONS --without-K #-}

open import Agda.Primitive
open import Base
open import Equality
open import logic.Propositions

module logic.Sets where

  -- A type is a set if any two equalities on the type are equal
  isSet : ∀{ℓ}  (A : Type ℓ) → Type ℓ
  isSet A = (x y : A) → isProp (x == y)

  -- The type of sets
  hSet : ∀{ℓ} → Type (lsuc ℓ)
  hSet {ℓ} = Σ (Type ℓ) isSet