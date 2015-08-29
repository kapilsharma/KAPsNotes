# PHP 7 meetup notes

## Introduction
Whats new in PHP 7?

## Speaker
Kapil Sharma

Technical architect as Ansh Systems pvt. Ltd.

11 years experience in web development.

@kapilsharmainfo

Blog: blog.kapilsharma.info

email: kapil at kapil sharma dot info

## Agenda of meetup

PHP 7 (supposed to be) releasing in October 2015
- Where is PHP 6?
- What is Hack/HHVM/Zephir?
- What is/was PHP NG?
- What is new in it?
- New features in PHP 5.3-5.6.
- New features in PHP 7.
- How will it impact me?

## Image

Question.jpg

## Question?

What is currently latest PHP version?

-> PHP 5.6

-> PHP 5.6.11 (As of 29th August 2015)

> PHP 5.6 - 28th August 2014

> PHP 5.6.11 - 10 July 2015

##  Next major version?
PHP 7

## Image

Image: ConfusedKid.jpg

-> Text: Hey wait, where is PHP 6?

## PHP History

To understand this, lets go through history of PHP.

## PHP History

- In 1994, Rasmus Lerdorf wrote some CGI binaries in 'C' for his 'Personal Home Page'.
- So PHP, by that time was shortform on 'Personal Home Page'.
- In 1997, Zeev And Andi rewrite the parser and call it PHP 3.
- Also PHP become 'PHP: Hypertext Preprocessor'.
- In 2000, PHP 4 was released, Powered by Zend Engine 1.
- On 13th July 2004, PHP 5 was released, powered by Zend Engine 2.

## PHP 6

> 10  

- PHP core developers start discussing PHP 6 since 2005.
- From 2008, few books published on PHP 6.
- By end 2008, PHP 6 was not released, everyone started asking when it will be released.
- Major issue was unicode support, which was causing delay and problems.

> Notes: Internally represent everything as UTF16 (instead of ASCII)
> Everything internally needed to be converted to UTF16
> Core developers needed to convert all input (Request data, database etc) to UTF16 and back again.
> This would have taken lot of CPU time, memory and complexity to detect encoding for lesser gain.
> Thus many core contributors stopped working on trunk and started working on stable 5.x branch or completely refused contributions.

## PHP 6

We don't need timelines right now. What we need is some hacking time and to bring some fun back into PHP development. It hasn't been fun for quite a while. Once we have a body of new interesting stuff, we can start pondering releases...
-Rasmus Lerdorf

## PHP 6

- On 30th June, 2009, some of PHP 6 features were back ported & PHP 5.3 was released.
  - Major among these features was namespace.
- PHP 6 was officially abandoned in 2010.
- Few other PHP 6 features were later back ported in PHP 5.4.
- PHP 5.4 - 1st March 2012
- PHP 5.5 - 20th June 2013
- PHP 5.6 - 28th August 2014
- PHP 7 - October 2015 (Supposed)

## Why PHP 7? Why not PHP 6?

- Few PHP 6 books published in 2008-09.
- Many blog/tutorials about PHP 6, still searchable.
- If new version would be named as PHP 6, it might have created confusion.
- So there was a poll on 'What should be next PHP version?'
  - https://wiki.php.net/rfc/php6
  - Options: PHP 6 or PHP 7
  - Poll result: PHP 7 won 58:24.

> Notes: PHP 6 officially abandoned on 2010. So why not using version 6 again in 2015?

> Go to above link to check who voted on what.

## Agenda of meetup

PHP 7 (supposed to be) releasing in October 2015
- ~~Where is PHP 6?~~
- What is Hack/HHVM/Zephir?
- What is/was PHP NG?
- What is new in it?
- New features in PHP 5.3-5.6.
- New features in PHP 7.
- How will it impact me?

## Image

Image: facebook-page.jpg

> Anyone know this site?

## Image

Image: facebook.jpg

## Facebook

- Facebook was initially developed in PHP. (Still many FB pages are in php)
- Facebook was (is) used by millions of users around the globe.
- For sites with such user base, execution time is crucial.
- Being scripting language, PHP (Zend Engine) was slow for them.
- In 2008, FB make HipHop for PHP
  - Goal: Speed up PHP execution.

## HHVM

- There were some issue with HipHop for PHP
- In 2010, they decided to make HHVM - HipHop Virtual Machine
- In 2012, Facebook claimed HHVM have 3x-10x speed boost and 1/2 memory footprint as compare to PHP+ACP.

> A risk to PHP.

## Hack

- Soon facebook came with Hack, a new programming language.
  - Every valid PHP program is valid Hack program.
  - Also contains many features that PHP missed.
    - Return type
    - Type hinting for primitive data type.
    - Concise code.
    - Collection support
    - And many more (eg: Vector and Map)

## Phalcon

Image: Phalcon logo

> What is this?

-> Phalcon

> What is this

-> Fastest PHP framework

> How is it fastest?

> Core of framework is written as 'C' extension.

## Zephir

Zephir is an open source, high-level/domain specific language designed to ease the creation and maintainability of extensions for PHP with a focus on type and memory safety.

> Challenges were also from NodeJS, & other languages with advanced features.

## Challenges

In short, there were lot of challenges in front of PHP

- Increase execution speed.
- Decrease memory consumption.
- New features.

## 
