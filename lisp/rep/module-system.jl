#| rep.module-system bootstrap

   $Id$

   Copyright (C) 2000 John Harper <john@dcs.warwick.ac.uk>

   This file is part of librep.

   librep is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   librep is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with librep; see the file COPYING.  If not, write to
   the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
|#

(declare (in-module rep.module-system))

(open-structures '(rep.lang.symbols
		   rep.structures
		   rep.data))

;; rename the bindings required by exported macros
(setq %make-structure make-structure)
(setq %make-interface make-interface)
(setq %parse-interface parse-interface)
(setq %external-structure-ref external-structure-ref)
(setq %alias-structure alias-structure)


;; module syntax

(defmacro define-interface (name sig)
  "Associate the symbol NAME with the module interface SIG (in a
separate interface-name namespace). An interface specification must be
of the form:

   INTERFACE ->  (export [ID...])
	     or  NAME
	     or  (compound-interface [INTERFACE...])
	     or  (structure-interface [STRUCTURE-NAME...])

where an ID is a symbol naming a top-level binding to export, and NAME
is the name of an interface previously defined using define-interface.

The `export' form adds top-level definitions ID... to the interface;
the `compound-interface' clauses forms the union of the given
interfaces."

  (list '%make-interface (list 'quote name)
	(list '%parse-interface (list 'quote sig))))

(defmacro structure (&optional sig config . body)
  "Create a new module whose interface is SIG, whose configuration is
defined by CONFIG (either a single clause, or a list of clauses), and
whose definitions are defined by the list of forms BODY.

See `define-interface' for the interface syntax, each configuration
clause must have the syntax:

   CLAUSE ->  (open [NAME...])
	  or  (access [NAME...])

where NAME is the name of a module. Opening a module imports all of its
exported definitions into the currently module, while accessing a
module makes the exported definitions available from the current module
using the `structure-ref' form."

  (unless (listp (car config))
    (setq config (list config)))
  (list '%make-structure (list '%parse-interface (list 'quote sig))
	(list* 'lambda nil (cons '(open rep.module-system) config))
	(list* 'lambda nil body)))

(defmacro define-structure (name &optional sig config . body)
  "Create a module called NAME whose interface is SIG, whose
configuration is defined by CONFIG (either a single clause, or a list
of clauses), and whose definitions are defined by the list of forms
BODY.

See the `define-interface' and `structure' macros for descriptions of
the interface and configuration clause syntaxes respectively."

  (unless (listp (car config))
    (setq config (list config)))
  (list '%make-structure (list '%parse-interface (list 'quote sig))
	(list* 'lambda nil (cons '(open rep.module-system) config))
	(list* 'lambda nil body)
	(list 'quote name)))

(defmacro define-structure-alias (to from)
  "Create a secondary name TO for the structure called FROM."
  (list '%alias-structure (list 'quote from) (list 'quote to)))


;; helper definitions

(defmacro structure-open names
  (list '%open-structures (list 'quote names)))

(defmacro structure-access names
  (list '%access-structures (list 'quote names)))

(defmacro structure-ref (struct-name var-name)
  "Evaluates to the current value of the global binding of symbol
VAR-NAME in the module called STRUCT-NAME. This structure must
previously have been opened or accessed by the current module.

When read, the syntax `FOO#BAR' expands to `(structure-ref FOO BAR)'."

  (list '%external-structure-ref
	(list 'quote struct-name) (list 'quote var-name)))


;; `%meta' structure used for configuring modules

(let ((meta-struct (make-structure '(open %open-structures
				     access %access-structures
				     quote) nil nil '%meta)))
  (structure-set meta-struct 'quote quote)
  (structure-set meta-struct 'open structure-open)
  (structure-set meta-struct '%open-structures open-structures)
  (structure-set meta-struct 'access structure-access)
  (structure-set meta-struct '%access-structures access-structures))


;; exports

(export-bindings '(define-interface structure define-structure
		   define-structure-alias structure-ref
		   %make-structure %make-interface %parse-interface
		   %external-structure-ref %alias-structure))

(export-bindings '(provide require featurep))

(export-bindings '(lambda validate-byte-code run-byte-code load))