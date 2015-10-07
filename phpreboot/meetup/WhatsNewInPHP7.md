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

> slide 20

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

> All necessary for php to remain as useful scripting language for web development.

## PHP NG

- PHP New Generation.
- Internal branch in php repo with goal of improved performance and efficient memory useage.
- PHP NG is not the JIT but internal refactoring to make JIT possible in future.
- PHPNG never released but later on, it is merged to master and becomes base of PHP 7.

> Notes: So that all about short introduction of what happened to PHP since 2005.

## Whats new PHP 7?

-> Are we prepared for that?
-> What was new in PHP 5.3, 5.4?

> As discussed, many PHP 6 features were merged in PHP 5.3 and 5.4.

> Unless we know about them, we can't take benefit of PHP 7.

## Agenda of meetup

PHP 7 (supposed to be) releasing in October 2015
- ~~Where is PHP 6?~~
- ~~What is Hack/HHVM/Zephir?~~
- ~~What is/was PHP NG?~~
- ~~What is new in PHP NG? (Speed improvement)~~
- New features in PHP 5.3-5.6.
- New features in PHP 7.
- How will it impact me?

## What was new in PHP 5.3?

Most important:

- * Namespace
- Late static binding
- Jump labels (limited goto)
- Closures (Lambda/Anonymous function)
- Now doc
- Constants outside class using const keyword
- Shorthand ternary operator
- New magic method: \_\_callStatic & \_\_invoke

## Namespace

Have you worked with class names like

- Zend_Validate_Db_NoRecordExists
- Zend_Auth_Storage_Session
- Zend_Acl_Role_Registry

Why such a long names?

## Zend_Auth_Storage_Session

Session, a very common class name. We can have custom class called 'Session'.

$session = new Session();

- Is it our custom class or Session class form ZF1?
-> Well we can't say.
-> $session = new Zend_Auth_Storage_Session()
-> We can now easily say which class we are referring.

## Auto loading

$session = new Zend_Auth_Storage_Session();

- or

include_once(library/Zend/Auth/Storage/Session);
$session = new Zend_Auth_Storage_Session();

## Auto loading

> Slide 30

ZF 1 comes with autoloading support which allow us using

$session = new Zend_Auth_Storage_Session();

Internally auto loader will split class with '\_' and use it as path.

Still 'Zend_Auth_Storage_Session' is ugly class name, right?

## Auto loading

With PHP 5.3 namespace, there are standard ways of auto loading.

- PSR 0
- PSR 4

> We are not going into PSR details, please google php-fig and psr for details.

## Namespace

Same class in ZF2 is

```php
<?php
namespace Zend\Authentication\Storage;
use Zend\Session\Container as SessionContainer;
use Zend\Session\ManagerInterface as SessionManager;
class Session implements StorageInterface {
  //code
}
```

> So class name is simple and there will be no name collusion due to same class name. Even if class name is same, namespace will be different.

## Namespace

```php
<?php
// application library 1
namespace App\Lib1;

// Constants can be defined outside class.
const MYCONST = 'App\Lib1\MYCONST';

function MyFunction() {
	return __FUNCTION__;
}

class MyClass {
	static function WhoAmI() {
		return __METHOD__;
	}
}
```

```php
<?php
// Assuming we are not using autoloading
require_once('lib1.php');

echo \App\Lib1\MYCONST . "\n";
echo \App\Lib1\MyFunction() . "\n";
echo \App\Lib1\MyClass::WhoAmI() . "\n";
```

Output

App\Lib1\MYCONST

App\Lib1\MyFunction

App\Lib1\MyClass::WhoAmI

## Namespace

- Name space in itself are easy.
- However it drastically changed the way applications are structured.
- This force big project to stop backward compatibility.
- Example Symfony 2 and Zend Framework 2.

## Closures or Lambda or Anonymous functions

Taken from PHP manual

Anonymous functions, also known as closures, allow the creation of functions which have no specified name. They are most useful as the value of callback parameters, but they have many other uses.

## Example

```php
<?php
$favourite = array(
		'fruit' => 'Mango',
		'color' => 'Green',
		'day' => 'Obviously Sunday',
    );
foreach ($favourite as $key=>$value) {
	  printf ("My favourite %s is %s\n", $key, $value);
}
```
Output

My favourite fruit is Mango
My favourite color is Green
My favourite day is Obviously Sunday

-> Little aside, can we do same example without foreach?
-> array_map
-> array_walk (for associative arrays)

## Example with array_walk

```php
<?php
$favourite = array(
		'fruit' => 'Mango',
		'color' => 'Green',
		'day' => 'Obviously Sunday',
    );

function display($name, $value)
{
    printf ("My favourite %s is %s\n", $name, $value);
}

array_walk($favourite, 'display');
```

> Advantage: It is faster than foreach.

> Disadvantage, I've one more function in scope.

## Lambda

```php
<?php
$favourite = array(
		'fruit' => 'Mango',
		'color' => 'Green',
		'day' => 'Obviously Sunday',
    );

array_walk($favourite, function($name, $value) {
		printf ("My favourite %s is %s\n", $name, $value);
});
```

> We needed function only once, make it immediately and it is not available anymore after operation.

> Few more new things in PHP 5.3 but namespace was most important. LEts move to PHP 5.4

## What was new in PHP 5.4?

- * Traits (most important)
- Build-in web server (Allows quick local testing)
- Short array syntax
- Function array dereferencing
- Closures can use $this
- <?= available regardless of short_open_tag setting.

## Traits

- Minimising code duplication is one of major goal of OOP.
- PHP, being single inheritance model, have some limitation.
- If you similar code in two unrelated classes (Cant extend same class)
  - Refactoring: Extract class.
  - but it do not fit every where.
- PHP 5.4 had new solutions; Traits

## Traits

Traits is a mechanism for code reuse in single inheritance languages such as PHP. A Trait is intended to reduce some limitations of single inheritance by enabling a developer to reuse sets of methods freely in several independent classes living in different class hierarchies.

## Traits Example

```php
<?php
class XmlWriter extends FileWriter
{
    private static $instance;

    public static function getInstance() {
        if (is_null(self::instance)) {
            self::instance = new XmlWriter();
        }
    }
}

class CsvReader extends FileReader
{
    private static $instance;

    public static function getInstance() {
        if (is_null(self::instance)) {
            self::instance = new CsvReader();
        }
    }
}
```

> Consider we want both of these class as singleton.

> Without multiple inheritance support, both class need to implement singleton code.

## Traits example

```php
<?php
trait Singleton
{
    private static $instance;

    public static function getInstance() {
        if (is_null(self::$instance)) {
            self::$instance = new self;
        }

        return self::$instance;
    }
}

class DbReader extends ArrayObject
{
    use Singleton;
}

class  FileReader
{
    use Singleton;
}
```

## What was new in PHP 5.5

- * New Password hashing API
- * Generators
- finally keyword
- List support in foreach
- Array and string literal dereferencing
- Class name resolution via ::class
- Non scalar keys support for foreach.

## Password hashing

- How do you hash your password?

->
```php
<?PHP

$hash = md5($password);
```

-> Not safe

-> There are lot of md5 database.

->
```php
<?php

$hash = md5($password . $salt);
```

-> Still not safe, not because cryptographic weaknesses but because it is too fast
-> Too fast for Brute-force attack.

## Password hashing

- PHP 5.5 came with simple password hashing api.
- To hash password
```php
$hash = password_hash($passwod, PASSWORD_DEFAULT);
```
- Verifing password is also easy:
```php
if (password_verify($password, $hash)) {
    // Success!
}
else {
    // Invalid credentials
}
```

> There is more in password hashing, look at manuals for details.

## Generators

## What is new in php 5.6

- Constant expression
- Constant array
- ... operator (for variable length parameters)
- use const and use function
- \_\_debugInfo() magic method

## PHP 5.7

- Well not released and will not be released.
- Proposed PHP 5.7 was:
  - Prepare our users to 7
  - No or very little additions, development must be focused on 7
  - Keep to our release process
- Supposed to add the necessary notices or deprecation notices to prepare our users to move to 7.
- However in voting, it was voted down. So no PHP 5.7.

## PHP 7

Internal goals

- 100%+ performance gain on most real world applications.
- Lower memory usages.

## PHP 7 (for developers)

- Type hinting for primitive data types
- Return type
- Spaceship operator
- Anonymous Class
- Null coalesce operator (??)
- Exceptions on Fatals
- Many new reserved keywords
