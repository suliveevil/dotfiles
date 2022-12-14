Snowball stemming library collection for Python
===============================================

This document pertains to the Python version of the stemmer library distribution,
available for download from:

* https://github.com/shibukawa/snowball/

  This repository includes Python source code generator

* https://github.com/shibukawa/snowball_python/

  This repository includes generated Python source codes

Original program is maintained at following place:

* http://snowball.tartarus.org/

Original Snowball product created by Dr Martin Porter and Richard Boulton (Java porting).
Original Snowball and my products are released under BSD license.

How to use library
------------------

The ``snowballstemmer`` module has two functions.

The ``snowballstemmer.algorithms`` function returns a list of avilable algorithm name' string.

The ``snowballstemmer.stemmer`` function accepts algorithm name and returns ``Stemmer`` objects.

``Stemmer`` objects have ``Stemmer.stemWord(word)`` method and ``Stemmer.stemWords(word[])`` method.

.. code-block:: python

   import snowballstemmer

   stemmer = snowballstemmer.stemmer('english');
   print(stemmer.stemWords("We are the world".split()));

``Stemmer`` objects have ``Stemmer.maxCacheSize`` property. They cache result within the value. Default is ``10000``.

Accerarates Stemming
--------------------

if **PyStemmer** is installed, ``snowballstemmer.stemmer`` returns ``PyStemmer``\ 's ``Stemmer`` objects. This ``Stemmer`` object has same methods (``Stemmer.stemWord()``, ``Stemmer.stemWords()``).

**PyStemmer** is a Snowball's ``libstemmer_c`` wrapper module and it returns 100% compatible result with **snowballstemmer**.

**PyStemmer** has faster speed because it uses C-lang module, and **snowballstemmer** has higher usability because it is pure Python module.

* `PyStemmer <http://pypi.python.org/pypi/PyStemmer/>`_

Benchmark
~~~~~~~~~

Test Case: Snowball stemmer check data (16 algorithms, total 582560 words, cache hit 0%)
Computer: MacBook Pro 3rd Gen Corei7 2.3GHz

* Python 2.7 + **snowballstemmer** : 2m 30s
* PyPy 1.9 + **snowballstemmer** : 45s
* Python 2.7 + **PyStemmer** : 5s

This test case is much harder than usual usecases!

The TestApp example
-------------------

The ``testapp.py`` example program allows you to run any of the stemmers
on a sample vocabulary.

Usage::

   testapp.py <algorithm> "sentences ... "

.. code-block:: bash

   $ python testapp.py English "sentences... "

Thanks
-------

* Original Snowball authors
* Emil Stenstr??m

License
-------

It is a BSD licensed library.

-----------------------------

Copyright (c) 2013, Yoshiki Shibukawa

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided
that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this list of conditions and
  the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions
  and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS
BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

