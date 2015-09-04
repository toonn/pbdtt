Programmeren in Dependently Typed Talen
=======================================
Toon Nolten

.. image:: image/cc_by.png


Overzicht
=========
* Dependent Types


Dependent Types
===============

* Types kunnen afhangen van waarden

.. code-block:: agda

    replicate : ∀ {A n} → A → Vec A n

    _!!_ : ∀ {A n} → Fin n → Vec A n → A


