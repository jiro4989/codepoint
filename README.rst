====
codepoint
====

|nimble-version| |nimble-install| |gh-actions|

codepoint prints codepoint of characters.

.. contents:: Table of contents

Usage
=====

Basic usage.

.. code-block:: shell

   $ echo 'hello world' | codepoint
   char code_point code_point(hex)
   h 104 \U68
   e 101 \U65
   l 108 \U6C
   l 108 \U6C
   o 111 \U6F
     32 \U20
   w 119 \U77
   o 111 \U6F
   r 114 \U72
   l 108 \U6C
   d 100 \U64

   # Multibyte characters
   $ echo '寿司' | codepoint
   char code_point code_point(hex)
   寿 23551 \U5BFF
   司 21496 \U53F8

Installation
============

.. code-block:: shell

   $ nimble install -Y codepoint

LICENSE
=======

MIT

.. |gh-actions| image:: https://github.com/jiro4989/codepoint/workflows/build/badge.svg
   :target: https://github.com/jiro4989/codepoint/actions
.. |nimble-version| image:: https://nimble.directory/ci/badges/codepoint/version.svg
   :target: https://nimble.directory/ci/badges/codepoint/nimdevel/output.html
.. |nimble-install| image:: https://nimble.directory/ci/badges/codepoint/nimdevel/status.svg
   :target: https://nimble.directory/ci/badges/codepoint/nimdevel/output.html
