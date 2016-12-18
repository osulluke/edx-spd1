;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1bQuiz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; 1. Signature, purpose, stub.
; (Image1, Image2) -> Boolean
; Purpose: take two images, and return true if Image1 is bigger than Image2.
; (define (bigger-pic? img1 img2) false)

; 2. Test cases and examples
(define small (rectangle 10 30 "solid" "red"))
(define big (rectangle 10 33 "solid" "blue"))

(check-expect (bigger-pic? small big) false)
(check-expect (bigger-pic? big small) true)
(check-expect (bigger-pic? big big) false)
(check-expect (bigger-pic? small small) false)

; 3. Template and inventory.

;(define (bigger-pic? img1 img2)
;  (... img1 img2))

; 4. Code the function
(define (bigger-pic? img1 img2)
  (>
   (* (image-width img1) (image-height img1))
   (* (image-width img2) (image-height img2))))