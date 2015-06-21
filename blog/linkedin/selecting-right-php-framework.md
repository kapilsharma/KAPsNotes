# Selecting right PHP framework for you next project

There is no thing best in the world. If something is best, it means, others simply wont exist and id exist, won't survive.

Same is true for PHP frameworks. Presence of multiple frameworks is proof that no framework is best. So how will we select right framework for our next project?

I am Kapil Sharma, Technical Architect at Eastern Enterprise, with 10.5 years of professional experience in web application development, using different programming languages, CMS & frameworks. This article mainly shows how do I select framework for my next project. Personally I have worked with Zend Framework 1 (not 2), Symfony 1 & 2, Code Ignitor (not working any more), and Laravel 4 & 5. So I might not be the right person to compare all frameworks but it doesn't stops me select right framework for next project, does it?

> Please note, this article list down my points for considering framework for next project. There could be many who might not agree with me, and I respect their views.

To keep article short, I am assuming we already selected PHP as programming language and ruled out CMS. So only PHP frameworks are considered in this article.

## Type of frameworks.

I generally keep frameworks in three category:

- Full fledged frameworks
- Mid level frameworks
- Micro frameworks

### Full fledged frameworks

These are frameworks which have support for nearly all common web development tasks, you might need in your project. Obviously they are huze and as a result, need time to learn. However once learned, you will not need to look any other framework.

I personally keep only two frameworks in this category; Zend Framework and Symfony.

Major disadvantage of full fledged frameworks include steep learning curve and hosting requirements. You can't (shouldn't) host them on shared hosting or better you will need server farms to host them. Thus they are best suited for enterprise applications.

Major advantage is, good community and professional  support from Sensui Labs (for Symfony) and Zend (for ZF) and professional support, if needed, is crucial for enterprises. Another major advantage is, there are generally more then one way of doing a thing, making it easier to adopt framework in your personal coding style and preferences but on the flip side, it also cause confusions for new programmers.

If you are learning your first framework and have time critical application, I personally recommend not to try them. Better prefer any mid level framework or micro framework to start and once you have some experience with frameworks, try ZF or Symfony.

### Mid level frameworks

Don't get confused by my naming. You can create enterprise applications with mid level frameworks. I generally keep frameworks like Laravel, Phalcon, Yii, Cake PHP, Aura etc in this category.

These frameworks are comparatively easier to learn, but at the same time, good to make a web application of any size; Small mobile backend to enterprise applications. So for  most projects, these are my best bet.

### Micro frameworks

They have very small footprint. Needless to say, very easy to learn but to keep their size small and fast execution time, they skip many libraries, commonly used in modern web applications.

Although most micro frameworks support composer, making it easy to install any extra library you need. Still I personally prefer in-build support than manually figuring out best library for a common task.

They could be right choice for small applications like exposing web services for mobile application. Still I personally prefer Laravel (earlier code ignitor) for that, as same knowledge can be used for small and big projects.

Still if we are sure that our application will not be extended (which rarely happens) and execution speed is major concern, specially with shared hosting, micro frameworks could be better choice.

## Current knowledge

We all live in a professional world and business always need results in least possible time (minimal investment). In such practical cases, your best bet is a framework, your team is already familier with.

If team is not familier with any framework, a framework with least learning curve is best. This obviously make micro framework as best framework but hold down. Your next project could be a big one and you might not want to train your team again with new framework. Remember master of one trade is always better then jack of all trades (Hmm can be argued). So best is, first make your team master in one framework before trying another.

However there could be conditions when you might want to try new things. Taking my example, when I joined Eastern Enterprise, all projects were on ZF1. Developers were very good on ZF (& drupal for mobile backend). However we were also getting small projects where ZF was not a good fit. Again training new developers is ZF was time taking process too. So that was the good time to look at other options and I selected Laravel 4 at that time. First couple of projects took little extra time but now we have a team of Laravel masters. Again we preferred Symfony 2 over ZF2. One year later, we have a very good team (individual developers) who can work on project of any size.

So the trick is to stick to your strengths but keep a constant eye on changing trends and prepare for future. Assigning one resource on an internal project, for a month, is never difficult.

## Conclusions

> I recommend to go through different frameworks before deciding best framework for your needs and style. Making small blog application must not take more than couple of days.

Still based on lot of such questions on different forums, if you decided to go with someone else's choice, my recommendations are:

**If you are making a big product, with long deadline but lot of features after first release**, you need full fledged framework. I recommend Symfony 2 here because of better documentation and  helpful community than ZF2.

**If you have service based company, and have projects of different size**, mid level frameworks are best for you. I recommend Laravel based on my experience. With LTS version available, it is a safe bet now. Yii was me preference before laravel 5.1 (LTS). This will help you to make both small and big projects. I preferred Laravel over others because of its helpful community and best in class documentation.

**If you mainly develop mobile apps and need PHP just for API and small projects**, micro framework is good choice. Although I never worked with micro frameworks, Slim Framework will be my preference, if needed. Reason, it is well proved. Lumen seems promising but its a new kid and not proved in production environment. I will never put my money on untested application.
