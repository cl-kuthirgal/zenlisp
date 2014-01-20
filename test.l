; zenlisp test suite
; By Nils M Holm, 2007, 2008
; Feel free to copy, share, and modify this code.
; See the file LICENSE for details.

; Run: ./zenlisp -i <test.l >_test
;      diff test.OK _test

(load base)
(load rmath)

'-----core-test-----

'(and)
(and)
'(and :f)
(and :f)
'(and t)
(and t)
'(and 'foo)
(and 'foo)
'(and '(a))
(and '(a))
'(and '(a.b))
(and '(a.b))
'(and '#abc)
(and '#abc)
'(and :f 'foo)
(and :f 'foo)
'(and 'foo 'bar 'baz)
(and 'foo 'bar 'baz)
'(and t t t :f)
(and t t t :f)

'(apply cons '(a b))
(apply cons '(a b))
'(apply apply (cons cons '((a b))))
(apply apply (cons cons '((a b))))
'(apply cons 'foo)
(apply cons 'foo)
'(apply 'foo '(x y z))
(apply 'foo '(x y z))

'(atom 'a)
(atom 'a)
'(atom ())
(atom ())
'(atom '(a))
(atom '(a))
'(atom '(a.b))
(atom '(a.b))
'(atom '(a b c))
(atom '(a b c))

'(bottom)
(bottom)
'(bottom 'a)
(bottom 'a)
'(bottom 'a ())
(bottom 'a ())
'(bottom 'a () '(a . b))
(bottom 'a () '(a . b))

'(closure-form ())
(closure-form ())
'(closure-form foo)
(closure-form foo)
'(closure-form env)
(closure-form env)
'(lambda () foo)
(lambda () foo)
'(closure-form body)
(closure-form body)
'(lambda () foo)
(lambda () foo)
'(closure-form args)
(closure-form args)
'(lambda () foo)
(lambda () foo)

'(car 'a)
(car 'a)
'(car '(a))
(car '(a))
'(car '(a.b))
(car '(a.b))
'(car '(a b c))
(car '(a b c))
'(car ())
(car ())

'(cdr 'a)
(cdr 'a)
'(cdr '(a))
(cdr '(a))
'(cdr '(a.b))
(cdr '(a.b))
'(cdr '(a b c))
(cdr '(a b c))
'(cdr ())
(cdr ())

'(cond (t 'foo))
(cond (t 'foo))
'(cond (t 'foo) (t 'bar))
(cond (t 'foo) (t 'bar))
'(cond (:f 'foo) (t 'bar))
(cond (:f 'foo) (t 'bar))
'(cond (:f (bottom)) (t 'bar))
(cond (:f (bottom)) (t 'bar))
'(cond (:f (())) (t 'bar))
(cond (:f (())) (t 'bar))
'(cond (:f '1) (:f '2) (t 'bar))
(cond (:f '1) (:f '2) (t 'bar))
'(cond (:f 'foo))
(cond (:f 'foo))
'(cond)
(cond)

'(cons 'a 'b)
(cons 'a 'b)
'(cons 'a '(b))
(cons 'a '(b))
'(cons 'a '(b c))
(cons 'a '(b c))
'(cons 'a ())
(cons 'a ())
'(cons () 'a)
(cons () 'a)
'(cons () ())
(cons () ())
'(cons 'a (cons 'b 'c))
(cons 'a (cons 'b 'c))

'(defined 'xyz)
(defined 'xyz)
'xyz
xyz
'(define xyz 'foo)
(define xyz 'foo)
'(defined 'xyz)
(defined 'xyz)
'xyz
xyz
'(define (xyz) 'foo)
(define (xyz) 'foo)
'(defined 'xyz)
(defined 'xyz)
'(xyz)
(xyz)

'(define f (lambda () 'foo))
(define f (lambda () 'foo))
'(f)
(f)
'(define f (lambda (x) x))
(define f (lambda (x) x))
'(f 'foo)
(f 'foo)
'(define f (lambda (x y) (cons x y)))
(define f (lambda (x y) (cons x y)))
'(f 'foo 'bar)
(f 'foo 'bar)
'(define f (lambda (x y z) (cons x (cons y z))))
(define f (lambda (x y z) (cons x (cons y z))))
'(f 'foo 'bar 'baz)
(f 'foo 'bar 'baz)
'(define f (lambda x x))
(define f (lambda x x))
'(f)
(f)
'(f 'foo)
(f 'foo)
'(f 'foo 'bar)
(f 'foo 'bar)
'(define f (lambda (x . y) y))
(define f (lambda (x . y) y))
'(f)
(f)
'(f 'foo)
(f 'foo)
'(f 'foo 'bar)
(f 'foo 'bar)

'(define (f) 'foo)
(define (f) 'foo)
'(f)
(f)
'(define (f x) x)
(define (f x) x)
'(f 'foo)
(f 'foo)
'(define (f x y) (cons x y))
(define (f x y) (cons x y))
'(f 'foo 'bar)
(f 'foo 'bar)
'(define (f x y z) (cons x (cons y z)))
(define (f x y z) (cons x (cons y z)))
'(f 'foo 'bar 'baz)
(f 'foo 'bar 'baz)
'(define (f . x) x)
(define (f . x) x)
'(f)
(f)
'(f 'foo)
(f 'foo)
'(f 'foo 'bar)
(f 'foo 'bar)
'(define (f x . y) y)
(define (f x . y) y)
'(f)
(f)
'(f 'foo)
(f 'foo)
'(f 'foo 'bar)
(f 'foo 'bar)

'(defined 'defined)
(defined 'defined)
'(defined 'undefined)
(defined 'undefined)
'(defined ())
(defined ())
'(defined '(a.b))
(defined '(a.b))
'(defined '(a b))
(defined '(a b))
'(defined '(a b c))
(defined '(a b c))

'(dump-image delete-me)
(dump-image delete-me)

'(eq 'a 'a)
(eq 'a 'a)
'(eq 'a 'b)
(eq 'a 'b)
'(eq () ())
(eq () ())
'(eq 'a ())
(eq 'a ())
'(eq () 'b)
(eq () 'b)
'(eq 'a '(b))
(eq 'a '(b))
'(eq '(a) 'b)
(eq '(a) 'b)
'(eq '(a) '(a))
(eq '(a) '(a))
'(eq '(a.b) '(a.b))
(eq '(a.b) '(a.b))
'(eq '(a b c) '(a b c))
(eq '(a b c) '(a b c))

'(explode 'a)
(explode 'a)
'(explode 'hello-world)
(explode 'hello-world)
'(explode ())
(explode ())
'(explode '#abcdef)
(explode '#abcdef)

'(eval '(cons 'a 'b))
(eval '(cons 'a 'b))

'(define (f x) 'done)
(define (f x) 'done)
'(f (gc))
(f (gc))

'(implode '(x))
(implode '(x))
'(implode '#hello-world)
(implode '#hello-world)
'(implode '(a b c (d.e) f))
(implode '(a b c (d.e) f))
'(implode '(a b c de f))
(implode '(a b c de f))

'(lambda () 'foo)
(lambda () 'foo)
'(lambda (x) x)
(lambda (x) x)
'(lambda (x y) (cons x y))
(lambda (x y) (cons x y))
'(lambda x x)
(lambda x x)
'(lambda (x . y) y)
(lambda (x . y) y)
'(lambda (x y . z) z)
(lambda (x y . z) z)
'((lambda () 'foo))
((lambda () 'foo))
'((lambda () 'foo) 'bar)
((lambda () 'foo) 'bar)
'((lambda (x) x))
((lambda (x) x))
'((lambda (x) x) 'foo)
((lambda (x) x) 'foo)
'((lambda (x) x) 'foo 'bar)
((lambda (x) x) 'foo 'bar)
'((lambda (x y) (cons x y)))
((lambda (x y) (cons x y)))
'((lambda (x y) (cons x y)) 'foo)
((lambda (x y) (cons x y)) 'foo)
'((lambda (x y) (cons x y)) 'foo 'bar)
((lambda (x y) (cons x y)) 'foo 'bar)
'((lambda (x y) (cons x y)) 'foo 'bar 'baz)
((lambda (x y) (cons x y)) 'foo 'bar 'baz)
'((lambda x x))
((lambda x x))
'((lambda x x) 'x)
((lambda x x) 'x)
'((lambda x x) 'x 'y)
((lambda x x) 'x 'y)
'((lambda x x) 'x 'y 'z)
((lambda x x) 'x 'y 'z)
'((lambda (x . y) y) 'x)
((lambda (x . y) y) 'x)
'((lambda (x . y) y) 'x 'y)
((lambda (x . y) y) 'x 'y)
'((lambda (x . y) y) 'x 'y 'z)
((lambda (x . y) y) 'x 'y 'z)
'((lambda (x y . z) z) 'x)
((lambda (x y . z) z) 'x)
'((lambda (x y . z) z) 'x 'y)
((lambda (x y . z) z) 'x 'y)
'((lambda (x y . z) z) 'x 'y 'z)
((lambda (x y . z) z) 'x 'y 'z)

'(define (list . x) x)
(define (list . x) x)

'(let () ())
(let () ())
'(let ((x 'first)) x)
(let ((x 'first)) x)
'(let ((x 'first) (y 'second) (z 'third)) (list x y z))
(let ((x 'first) (y 'second) (z 'third)) (list x y z))
'(let (x) x)
(let (x) x)
'(let x x)
(let x x)
'(let ((x '0))
  (let ((x '1)
        (y (cons x '5)))
    y))
(let ((x '0))
  (let ((x '1)
        (y (cons x '5)))
    y))
'(let ((x '0))
  (let ((x '1))
    (let ((y (cons x '5)))
      y)))
(let ((x '0))
  (let ((x '1))
    (let ((y (cons x '5)))
      y)))

'(letrec () ())
(letrec () ())
'(letrec ((x 'first)) x)
(letrec ((x 'first)) x)
'(letrec ((x 'first) (y 'second) (z 'third)) (list x y z))
(letrec ((x 'first) (y 'second) (z 'third)) (list x y z))
'(letrec (x) x)
(letrec (x) x)
'(letrec x x)
(letrec x x)
'(letrec ((even-p (lambda (x)
                (cond ((eq x ()) t)
                        (t (odd-p (cdr x))))))
        (odd-p (lambda (x)
                (cond ((eq x ()) :f)
                        (t (even-p (cdr x)))))))
        (list (odd-p '(i i i i i)) (even-p '(i i i i i))))
(letrec ((even-p (lambda (x)
                (cond ((eq x ()) t)
                        (t (odd-p (cdr x))))))
        (odd-p (lambda (x)
                (cond ((eq x ()) :f)
                        (t (even-p (cdr x)))))))
        (list (odd-p '(i i i i i)) (even-p '(i i i i i))))

'(defined 'foo)
(defined 'foo)
'(load foo)
(load foo)
'foo
foo

'(or)
(or)
'(or :f)
(or :f)
'(or t)
(or t)
'(or 'foo)
(or 'foo)
'(or '(a))
(or '(a))
'(or '(a.b))
(or '(a.b))
'(or '#abc)
(or '#abc)
'(or :f 'foo)
(or :f 'foo)
'(or 'foo 'bar 'baz)
(or 'foo 'bar 'baz)
'(or :f :f :f t)
(or :f :f :f t)

'(quote foo)
(quote foo)
'(quote 'foo)
(quote 'foo)
'(quote (a))
(quote (a))
'(quote (a.b))
(quote (a.b))
'(quote #abcdef)
(quote #abcdef)
'(quote (define (f x) (cons x ())))
(quote (define (f x) (cons x ())))

'(recursive-bind ())
(recursive-bind ())
'(recursive-bind '((a . b)))
(recursive-bind '((a . b)))
'(recursive-bind '((f . (closure () (f) ((f . ()))))))
(recursive-bind '((f . (closure () (f) ((f . ()))))))
'(recursive-bind '((a . (closure () b ((b . ()))))
                  (b . (closure () a ((a . ()))))))
(recursive-bind '((a . (closure () b ((b . ()))))
                  (b . (closure () a ((a . ()))))))

'(define (d x)
  (cond ((eq x ()) 'foo)
    (t (d (cdr x)))))
(define (d x)
  (cond ((eq x ()) 'foo)
    (t (d (cdr x)))))

'(stats ())
(stats ())
'(stats (cons 'foo 'bar))
(stats (cons 'foo 'bar))
'(stats (or 'a 'b 'c 'd 'e 'f))
(stats (or 'a 'b 'c 'd 'e 'f))
'(stats (d '#iiiiiiiiiiiiiiiiiiiiiiiii))
(stats (d '#iiiiiiiiiiiiiiiiiiiiiiiii))

'(trace d)
(trace d)
'(d '#iiiii)
(d '#iiiii)
'(trace)
(trace)

'-----definitions-----

(define slist1 '(a b c d e f g h i j))
(define slist2 '(z y x w v u t s r q))

(define nlist '((1 0) (5) (2 5) (1 9) (9) (1 0 1) (7 7) (0) (3 3) (4 5)))
(define olist '((0) (5) (9) (1 0) (1 9) (2 5) (3 3) (4 5) (7 7) (1 0 1)))

(define ilist '((- 7 7) (- 2 5) (+ 1 0) (+ 5) (+ 1 9) (+ 9) (+ 1 0 1)
        (+ 0) (+ 3 3) (+ 4 5)))

(define rlist '(#7/8 #2/3 #8/9 #5/6 #1/2
        #4/5 #9/10 #6/7 #3/4))

(define set1 slist1)
(define set2 '(f g h i j k l m n o p))

(define plist1 '(i ii iii iv v vi vii viii ix x))
(define plist2 '(1 2 3 4 5 6 7 8 9 10))

(define alist '((i.1) (ii.2) (iii.3) (iv.4) (v.5) (vi.6) (vii.7) (viii.8)
        (ix.9) (x.10)))

(define clist1 '(((a b) (c d) e) ((f g) (h i)) ((j k) (l m)) n))
(define clist2 '(((a b) (c d) x) ((f g) (h i)) ((j k) (l m)) n))

(define num1 '(5 5 5 5 5))
(define num2 '(7 7 7))

(define int1 '(+ 5 5 5 5 5))
(define int2 '(+ 7 7 7))
(define int1n '(- 5 5 5 5 5))
(define int2n '(- 7 7 7))

(define rat1 '#17/23)
(define rat2 '#23/17)
(define rat1n '#-17/23)
(define rat2n '#-23/17)

(define xlist '(symbol (5 5 5) (list with members) (1 2 3)
        (car (some expr))))

(define expr '(symbol (5 5 5) ((a.b) (c.d)) (list with members) (1 2 3)
        (car (some expr))))

'-----base-tests-----

'(append slist1 slist2)
(append slist1 slist2)
'(append slist1 ())
(append slist1 ())
'(append () slist1)
(append () slist1)
'(append '(foo bar) '(baz))
(append '(foo bar) '(baz))
'(append '#abc '#def '#xyz)
(append '#abc '#def '#xyz)
'(append () '#foo)
(append () '#foo)
'(append '#foo ())
(append '#foo ())
'(append '(a) '(b . c))
(append '(a) '(b . c))
'(append '#abc 'd)
(append '#abc 'd)
'(append () ())
(append () ())
'(append ())
(append ())
'(append)
(append)

'(assoc 'vii alist)
(assoc 'vii alist)
'(assoc 'xxx alist)
(assoc 'xxx alist)
'(assoc 'xxx ())
(assoc 'xxx ())
'(assoc 'b '((a.1) (b.2)))
(assoc 'b '((a.1) (b.2)))
'(assoc 'x '((x.1) (x.2)))
(assoc 'x '((x.1) (x.2)))
'(assoc 'q '((x.1) (x.2)))
(assoc 'q '((x.1) (x.2)))
'(assoc '#foo '((#foo . bar)))
(assoc '#foo '((#foo . bar)))
'(assq 'b '((a.1) (b.2)))
(assq 'b '((a.1) (b.2)))
'(assq '#foo '((#foo . bar)))
(assq '#foo '((#foo . bar)))

; (caaaar clist1)
; (caaadr clist1)
; (caadar clist1)
; (caaddr clist1)
; (cadaar clist1)
; (cadadr clist1)
; (caddar clist1)
; (cadddr clist1)
; (cdaaar clist1)
; (cdaadr clist1)
; (cdadar clist1)
; (cdaddr clist1)
; (cddaar clist1)
; (cddadr clist1)
; (cdddar clist1)
; (cddddr clist1)

'(caaar clist1)
(caaar clist1)
'(caadr clist1)
(caadr clist1)
'(cadar clist1)
(cadar clist1)
'(caddr clist1)
(caddr clist1)
'(cdaar clist1)
(cdaar clist1)
'(cdadr clist1)
(cdadr clist1)
'(cddar clist1)
(cddar clist1)
'(cdddr clist1)
(cdddr clist1)

'(caar clist1)
(caar clist1)
'(cadr clist1)
(cadr clist1)
'(cdar clist1)
(cdar clist1)
'(cddr clist1)
(cddr clist1)

'(equal clist1 clist1)
(equal clist1 clist1)
'(equal clist1 clist2)
(equal clist1 clist2)
'(equal () ())
(equal () ())
'(equal '(a.b) '(a.b))
(equal '(a.b) '(a.b))
'(equal '(f (f x y) z) '(f (f x y) z))
(equal '(f (f x y) z) '(f (f x y) z))
'(equal '#abcdef '#abcdef)
(equal '#abcdef '#abcdef)
'(equal 'foo 'bar)
(equal 'foo 'bar)
'(equal '(x (y) z) '(x (q) z))
(equal '(x (y) z) '(x (q) z))
'(equal '#xxx '#xxy)
(equal '#xxx '#xxy)

'(id ())
(id ())
'(id 'foo)
(id 'foo)
'(id expr)
(id expr)

'(list)
(list)
'(list 'foo)
(list 'foo)
'(list 'a 'b 'c)
(list 'a 'b 'c)
''((cons 'a 'b))
'((cons 'a 'b))
'(list (cons 'a 'b))
(list (cons 'a 'b))

'(listp expr)
(listp expr)
'(listp '(x))
(listp '(x))
'(listp ())
(listp ())
'(listp '(a b c))
(listp '(a b c))
'(listp '#abcdef)
(listp '#abcdef)
'(listp '(a . b))
(listp '(a . b))
'(listp '(a b . c))
(listp '(a b . c))
'(listp 'foo)
(listp 'foo)

'(map cons olist olist)
(map cons olist olist)
'(map car '((a) (b) (c)))
(map car '((a) (b) (c)))
'(map cdr '((a) (b) (c)))
(map cdr '((a) (b) (c)))
'(map cons '(a b c) '(d e f))
(map cons '(a b c) '(d e f))
'(map list '(a b) '(c d) '(e f))
(map list '(a b) '(c d) '(e f))

'(member '(iv.4) alist)
(member '(iv.4) alist)
'(member '(iv.5) alist)
(member '(iv.5) alist)
'(member '(iv.4) ())
(member '(iv.4) ())
'(member 'bar '(foo bar baz))
(member 'bar '(foo bar baz))
'(member '(b.2) '((a.1) (b.2)))
(member '(b.2) '((a.1) (b.2)))
'(member 'foo '(a b c d e f))
(member 'foo '(a b c d e f))
'(memq 'h slist1)
(memq 'h slist1)
'(memq 'x slist1)
(memq 'x slist1)
'(memq 'a ())
(memq 'a ())
'(memq 'bar '(foo bar baz))
(memq 'bar '(foo bar baz))
'(memq '(b.2) '((a.1) (b.2)))
(memq '(b.2) '((a.1) (b.2)))

'(neq 'foo 'bar)
(neq 'foo 'bar)
'(neq 'foo '#foo)
(neq 'foo '#foo)
'(neq 'a '(a.b))
(neq 'a '(a.b))
'(neq 'foo 'foo)
(neq 'foo 'foo)
'(neq neq neq)
(neq neq neq)
'(neq () ())
(neq () ())
'(neq '#foo '#foo)
(neq '#foo '#foo)
'(neq '(a.b) '(a.b))
(neq '(a.b) '(a.b))

'(null ())
(null ())
'(null :f)
(null :f)
'(null 'x)
(null 'x)
'(null '(a b c))
(null '(a b c))
'(not ())
(not ())
'(not :f)
(not :f)
'(not t)
(not t)
'(not 'foo)
(not 'foo)
'(not '(a b c))
(not '(a b c))

'(fold cons 'a '(b))
(fold cons 'a '(b))
'(fold cons 'a '(b c))
(fold cons 'a '(b c))
'(fold cons 'a ())
(fold cons 'a ())

'(fold-r cons 'a '(b))
(fold-r cons 'a '(b))
'(fold-r cons 'a '(b c))
(fold-r cons 'a '(b c))
'(fold-r cons 'a ())
(fold-r cons 'a ())

'(reverse clist1)
(reverse clist1)
'(reverse olist)
(reverse olist)
'(reverse ())
(reverse ())
'(reverse '(foo bar))
(reverse '(foo bar))
'(reverse '(a b c d e f))
(reverse '(a b c d e f))
'(reverse ())
(reverse ())

'-----numeric-tests-----

'(*)
(*)
'(* '#2)
(* '#2)
'(* '#2 '#3 '#4 '#5)
(* '#2 '#3 '#4 '#5)
'(* rat1 rat1)
(* rat1 rat1)
'(* rat2 rat2n)
(* rat2 rat2n)
'(* rat1n rat1)
(* rat1n rat1)
'(* rat2n rat2n)
(* rat2n rat2n)
'(* int1 int2)
(* int1 int2)
'(* int1n int2)
(* int1n int2)
'(* int1 int2n)
(* int1 int2n)
'(* int1n int2n)
(* int1n int2n)
'(* num1 num2)
(* num1 num2)

'(+)
(+)
'(+ '#2)
(+ '#2)
'(+ '#2 '#3 '#4 '#5)
(+ '#2 '#3 '#4 '#5)
'(+ rat1 rat2)
(+ rat1 rat2)
'(+ rat1 rat2n)
(+ rat1 rat2n)
'(+ rat1n rat2)
(+ rat1n rat2)
'(+ rat1n rat2n)
(+ rat1n rat2n)
'(+ rat2 rat1)
(+ rat2 rat1)
'(+ rat2 rat1n)
(+ rat2 rat1n)
'(+ rat2n rat1)
(+ rat2n rat1)
'(+ rat2n rat1n)
(+ rat2n rat1n)
'(+ int1 int2)
(+ int1 int2)
'(+ int1 int2n)
(+ int1 int2n)
'(+ int1n int2)
(+ int1n int2)
'(+ int1n int2n)
(+ int1n int2n)
'(+ num1 num2)
(+ num1 num2)
'(+ num2 num1)
(+ num2 num1)

'(- '#2)
(- '#2)
'(- '#2 '#3 '#4 '#5)
(- '#2 '#3 '#4 '#5)
'(- rat1 rat2)
(- rat1 rat2)
'(- rat1 rat2n)
(- rat1 rat2n)
'(- rat1n rat2)
(- rat1n rat2)
'(- rat1n rat2n)
(- rat1n rat2n)
'(- rat2 rat1)
(- rat2 rat1)
'(- rat2 rat1n)
(- rat2 rat1n)
'(- rat2n rat1)
(- rat2n rat1)
'(- rat2n rat1n)
(- rat2n rat1n)
'(- int1 int2)
(- int1 int2)
'(- int1 int2n)
(- int1 int2n)
'(- int1n int2)
(- int1n int2)
'(- int1n int2n)
(- int1n int2n)
'(- int2 int1)
(- int2 int1)
'(- int2 int1n)
(- int2 int1n)
'(- int2n int1)
(- int2n int1)
'(- int2n int1n)
(- int2n int1n)
'(- num1 num2)
(- num1 num2)
'(- num2 num1)
(- num2 num1)

'(/ '#2)
(/ '#2)
'(/ '#2 '#3 '#4 '#5)
(/ '#2 '#3 '#4 '#5)
'(/ rat1 rat2)
(/ rat1 rat2)
'(/ rat1 rat2n)
(/ rat1 rat2n)
'(/ rat1n rat2)
(/ rat1n rat2)
'(/ rat1n rat2n)
(/ rat1n rat2n)
'(/ rat2 rat1)
(/ rat2 rat1)
'(/ rat2 rat1n)
(/ rat2 rat1n)
'(/ rat2n rat1)
(/ rat2n rat1)
'(/ rat2n rat1n)
(/ rat2n rat1n)
'(/ int1 int2)
(/ int1 int2)
'(/ int1 int2n)
(/ int1 int2n)
'(/ int1n int2)
(/ int1n int2)
'(/ int1n int2n)
(/ int1n int2n)
'(/ int2 int1)
(/ int2 int1)
'(/ int2 int1n)
(/ int2 int1n)
'(/ int2n int1)
(/ int2n int1)
'(/ int2n int1n)
(/ int2n int1n)
'(/ num1 num2)
(/ num1 num2)
'(/ num2 num1)
(/ num2 num1)

'(< '#2 '#3 '#4 '#5)
(< '#2 '#3 '#4 '#5)
'(< rat1 rat2)
(< rat1 rat2)
'(< rat1 rat2n)
(< rat1 rat2n)
'(< rat1n rat2)
(< rat1n rat2)
'(< rat1n rat2n)
(< rat1n rat2n)
'(< rat2 rat1)
(< rat2 rat1)
'(< rat2 rat1n)
(< rat2 rat1n)
'(< rat2n rat1)
(< rat2n rat1)
'(< rat2n rat1n)
(< rat2n rat1n)
'(< rat2 rat2)
(< rat2 rat2)
'(< rat2n rat2n)
(< rat2n rat2n)
'(< int1 int2)
(< int1 int2)
'(< int2n int1n)
(< int2n int1n)
'(< num1 num2)
(< num1 num2)
'(< num2 num1)
(< num2 num1)

'(<= '#3 '#3 '#4 '#5)
(<= '#3 '#3 '#4 '#5)
'(<= rat1 rat2)
(<= rat1 rat2)
'(<= rat1 rat2n)
(<= rat1 rat2n)
'(<= rat1n rat2)
(<= rat1n rat2)
'(<= rat1n rat2n)
(<= rat1n rat2n)
'(<= rat2 rat1)
(<= rat2 rat1)
'(<= rat2 rat1n)
(<= rat2 rat1n)
'(<= rat2n rat1)
(<= rat2n rat1)
'(<= rat2n rat1n)
(<= rat2n rat1n)
'(<= rat2 rat2)
(<= rat2 rat2)
'(<= rat2n rat2n)
(<= rat2n rat2n)
'(<= int1 int2)
(<= int1 int2)
'(<= int2n int1n)
(<= int2n int1n)
'(<= num1 num2)
(<= num1 num2)
'(<= num2 num1)
(<= num2 num1)

'(= '#3 '#3 '#3 '#3)
(= '#3 '#3 '#3 '#3)
'(= num1 num1)
(= num1 num1)
'(= num1 num2)
(= num1 num2)
'(= int1 int1)
(= int1 int1)
'(= int1 int1n)
(= int1 int1n)
'(= int1 int2)
(= int1 int2)
'(= int1n int1n)
(= int1n int1n)
'(= int1n int2n)
(= int1n int2n)
'(= rat1 rat1)
(= rat1 rat1)
'(= rat1 rat1n)
(= rat1 rat1n)
'(= rat1 rat2)
(= rat1 rat2)
'(= rat1n rat1n)
(= rat1n rat1n)
'(= rat1n rat2n)
(= rat1n rat2n)
'(= '#2 '#10/5)
(= '#2 '#10/5)

'(> '#5 '#4 '#3 '#2)
(> '#5 '#4 '#3 '#2)
'(> rat1 rat2)
(> rat1 rat2)
'(> rat1 rat2n)
(> rat1 rat2n)
'(> rat1n rat2)
(> rat1n rat2)
'(> rat1n rat2n)
(> rat1n rat2n)
'(> rat2 rat1)
(> rat2 rat1)
'(> rat2 rat1n)
(> rat2 rat1n)
'(> rat2n rat1)
(> rat2n rat1)
'(> rat2n rat1n)
(> rat2n rat1n)
'(> rat2 rat2)
(> rat2 rat2)
'(> rat2n rat2n)
(> rat2n rat2n)
'(> int1 int2)
(> int1 int2)
'(> int2n int1n)
(> int2n int1n)
'(> num1 num2)
(> num1 num2)
'(> num2 num1)
(> num2 num1)

'(>= '#5 '#4 '#3 '#3)
(>= '#5 '#4 '#3 '#3)
'(>= rat1 rat2)
(>= rat1 rat2)
'(>= rat1 rat2n)
(>= rat1 rat2n)
'(>= rat1n rat2)
(>= rat1n rat2)
'(>= rat1n rat2n)
(>= rat1n rat2n)
'(>= rat2 rat1)
(>= rat2 rat1)
'(>= rat2 rat1n)
(>= rat2 rat1n)
'(>= rat2n rat1)
(>= rat2n rat1)
'(>= rat2n rat1n)
(>= rat2n rat1n)
'(>= rat2 rat2)
(>= rat2 rat2)
'(>= rat2n rat2n)
(>= rat2n rat2n)
'(>= int1 int2)
(>= int1 int2)
'(>= int2n int1n)
(>= int2n int1n)
'(>= num1 num2)
(>= num1 num2)
'(>= num2 num1)
(>= num2 num1)

'(abs num1)
(abs num1)
'(abs int1)
(abs int1)
'(abs int1n)
(abs int1n)
'(abs rat1)
(abs rat1)
'(abs rat1n)
(abs rat1n)

'(denominator rat1)
(denominator rat1)
'(denominator rat2)
(denominator rat2)
'(denominator rat1n)
(denominator rat1n)
'(denominator rat2n)
(denominator rat2n)

'(divide int1 int2)
(divide int1 int2)
'(divide int1 int2n)
(divide int1 int2n)
'(divide int1n int2)
(divide int1n int2)
'(divide int1n int2n)
(divide int1n int2n)
'(divide int2 int1)
(divide int2 int1)
'(divide int2 int1n)
(divide int2 int1n)
'(divide int2n int1)
(divide int2n int1)
'(divide int2n int1n)
(divide int2n int1n)
'(divide num1 num2)
(divide num1 num2)
'(divide num1 int2)
(divide num1 int2)
'(divide num1 int2n)
(divide num1 int2n)
'(divide int1n num2)
(divide int1n num2)

'digits
0 1 2 3 4 5 6 7 8 9

'(even '#100)
(even '#100)
'(even '#101)
(even '#101)
'(even '#-102)
(even '#-102)
'(even '#-103)
(even '#-103)
'(even '#104)
(even '#104)
'(even '#105)
(even '#105)
'(even '#106)
(even '#106)
'(even '#-107)
(even '#-107)
'(even '#-108)
(even '#-108)
'(even '#-109)
(even '#-109)
'(even '#2/1)
(even '#2/1)
'(even '#2/3)
(even '#2/3)

'(expt '#2 '#0)
(expt '#2 '#0)
'(expt '#2 '#1)
(expt '#2 '#1)
'(expt '#2 '#16)
(expt '#2 '#8)
'(expt '#2 '#-1)
(expt '#2 '#-1)
'(expt '#2 '#-8)
(expt '#2 '#-8)
'(expt '#1/2 '#-8)
(expt '#1/2 '#-8)
'(expt '#2/3 '#-3)
(expt '#2/3 '#-3)
'(expt '#-2/3 '#3)
(expt '#-2/3 '#3)
'(expt '#-2/3 '#-3)
(expt '#-2/3 '#-3)

'(gcd '#289 '#34)
(gcd '#289 '#34)
'(gcd '#34 '#289)
(gcd '#34 '#289)
'(gcd '#+289 '#+34)
(gcd '#+289 '#+34)
'(gcd '#+34 '#+289)
(gcd '#+34 '#+289)
'(gcd '#-289 '#+34)
(gcd '#-289 '#+34)
'(gcd '#+34 '#-289)
(gcd '#+34 '#-289)

'(integer rat1)
(integer rat1)
'(integer '#20/5)
(integer '#20/5)
'(integer int1n)
(integer int1n)
'(integer num1)
(integer num1)

'(integer int1)
(integer int1)
'(integer int1n)
(integer int1n)
'(integer num1)
(integer num1)

'(integer-p int1)
(integer-p int1)
'(integer-p int1n)
(integer-p int1n)
'(integer-p num1)
(integer-p num1)

'(length clist1)
(length clist1)
'(length nlist)
(length nlist)
'(length xlist)
(length xlist)

'(apply max '(#2/3))
(apply max '(#2/3))
'(apply max rlist)
(apply max rlist)

'(apply min '(#2/3))
(apply min '(#2/3))
'(apply min rlist)
(apply min rlist)

'(modulo int1 int2)
(modulo int1 int2)
'(modulo int1 int2n)
(modulo int1 int2n)
'(modulo int1n int2)
(modulo int1n int2)
'(modulo int1n int2n)
(modulo int1n int2n)
'(modulo int2 int1)
(modulo int2 int1)
'(modulo int2 int1n)
(modulo int2 int1n)
'(modulo int2n int1)
(modulo int2n int1)
'(modulo int2n int1n)
(modulo int2n int1n)
'(modulo num1 num2)
(modulo num1 num2)
'(modulo num1 int2)
(modulo num1 int2)
'(modulo num1 int2n)
(modulo num1 int2n)
'(modulo int1n num2)
(modulo int1n num2)

'(natural num1)
(natural num1)
'(natural int1)
(natural int1)
'(natural int1n)
(natural int1n)
'(natural rat1)
(natural rat1)
'(natural '#20/4)
(natural '#20/4)
'(natural '#-20/4)
(natural '#-20/4)

'(natural-p num1)
(natural-p num1)
'(natural-p int1)
(natural-p int1)
'(natural-p int1n)
(natural-p int1n)

'(negate rat1)
(negate rat1)
'(negate rat1n)
(negate rat1n)
'(negate int1)
(negate int1)
'(negate int1n)
(negate int1n)
'(negate num1)
(negate num1)

'(negative rat1)
(negative rat1)
'(negative rat1n)
(negative rat1n)
'(negative int1)
(negative int1)
'(negative int1n)
(negative int1n)
'(negative num1)
(negative num1)

'(number-p num1)
(number-p num1)
'(number-p int1)
(number-p int1)
'(number-p int1n)
(number-p int1n)
'(number-p rat1)
(number-p rat1)
'(number-p rat1n)
(number-p rat1n)
'(number-p '#-1/-1)
(number-p '#-1/-1)
'(number-p clist1)
(number-p clist1)

'(numerator rat1)
(numerator rat1)
'(numerator rat2)
(numerator rat2)
'(numerator rat1n)
(numerator rat1n)
'(numerator rat2n)
(numerator rat2n)

'(odd '#100)
(odd '#100)
'(odd '#101)
(odd '#101)
'(odd '#-102)
(odd '#-102)
'(odd '#-103)
(odd '#-103)
'(odd '#104)
(odd '#104)
'(odd '#105)
(odd '#105)
'(odd '#106)
(odd '#106)
'(odd '#-107)
(odd '#-107)
'(odd '#-108)
(odd '#-108)
'(odd '#-109)
(odd '#-109)
'(odd '#2/1)
(odd '#2/1)
'(odd '#2/3)
(odd '#2/3)

'(one '#0)
(one '#0)
'(one '#1)
(one '#1)
'(one '#+1)
(one '#+1)
'(one '#+25)
(one '#+25)
'(one '#-1)
(one '#-1)
'(one rat1)
(one rat1)
'(one '#1/2)
(one '#1/2)
'(one '#2/2)
(one '#2/2)
'(one '#-2/2)
(one '#-2/2)

'(quotient int1 int2)
(quotient int1 int2)
'(quotient int1 int2n)
(quotient int1 int2n)
'(quotient int1n int2)
(quotient int1n int2)
'(quotient int1n int2n)
(quotient int1n int2n)
'(quotient int2 int1)
(quotient int2 int1)
'(quotient int2 int1n)
(quotient int2 int1n)
'(quotient int2n int1)
(quotient int2n int1)
'(quotient int2n int1n)
(quotient int2n int1n)
'(quotient num1 num2)
(quotient num1 num2)
'(quotient num1 int2)
(quotient num1 int2)
'(quotient num1 int2n)
(quotient num1 int2n)
'(quotient int1n num2)
(quotient int1n num2)

'(rational rat1)
(rational rat1)
'(rational rat1n)
(rational rat1n)
'(rational int1)
(rational int1)
'(rational int1n)
(rational int1n)
'(rational num1)
(rational num1)

'(rational-p rat1)
(rational-p rat1)
'(rational-p rat1n)
(rational-p rat1n)
'(rational-p int1)
(rational-p int1)
'(rational-p int1n)
(rational-p int1n)
'(rational-p num1)
(rational-p num1)

'(remainder int1 int2)
(remainder int1 int2)
'(remainder int1 int2n)
(remainder int1 int2n)
'(remainder int1n int2)
(remainder int1n int2)
'(remainder int1n int2n)
(remainder int1n int2n)
'(remainder int2 int1)
(remainder int2 int1)
'(remainder int2 int1n)
(remainder int2 int1n)
'(remainder int2n int1)
(remainder int2n int1)
'(remainder int2n int1n)
(remainder int2n int1n)
'(remainder num1 num2)
(remainder num1 num2)
'(remainder num1 int2)
(remainder num1 int2)
'(remainder num1 int2n)
(remainder num1 int2n)
'(remainder int1n num2)
(remainder int1n num2)

'(sqrt '#1)
(sqrt '#1)
'(sqrt '#100)
(sqrt '#100)
'(sqrt '#2)
(sqrt '#2)

'(zero '(0))
(zero '(0))
'(zero '(1))
(zero '(1))
'(zero '(+ 0))
(zero '(+ 0))
'(zero '(- 0))
(zero '(- 0))
'(zero '#2/5)
(zero '#2/5)
'(zero '#0/5)
(zero '#0/5)

'(quit)
(quit)

'still-here-p