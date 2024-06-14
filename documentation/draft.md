### To Do:
- Understand hosting models
- Blazor WebAssembly
- Blazor client-side
- Blazor server
- SignalR
- Blazor hybrid  
- Diagrams? 

--------------------

### What is Blazor?

Blazor is a framework for building interactive web user interfaces (UIs) using C# and HTML. It allows you to:
- Create web apps that run in the browser using WebAssembly (WASM) or on the server.
- Integrate seamlessly with JavaScript.
- Enjoy the performance benefits of .NET.

### ASP.NET Core Blazor

Blazor is part of the ASP.NET Core suite, which includes:
- **ASP.NET Core MVC**: For building web apps using the Model-View-Controller pattern.
- **ASP.NET Core Razor Pages**: For building dynamic web pages.
- **ASP.NET Core Blazor**: For building interactive web UIs.

### ASP.NET Core Platform

The ASP.NET Core platform provides several key components:
- **Kestrel**: A web server for ASP.NET Core.
- **Middleware**: Components for handling HTTP requests.
- **Razor**: A syntax for combining HTML and C#.
- **Model Binding**: For mapping data from HTTP requests to action method parameters.
- **Dependency Injection**: For managing object dependencies.
- **Logging**: For tracking application activity.

### Understanding Hosting Models

Blazor supports different hosting models:
- **WebAssembly**: Runs .NET code in the browser using WebAssembly.
- **Server**: Runs on the server and interacts with the client via SignalR.
- **Hybrid**: Combines server-side and client-side processing.


IL interpreter 
deployed as static files
.net runtime runs inside the browser.

Blazor server
* ASP on server in ASP.NET core app
* backend by SignalR connection
* application instance is created per "circuit"

blazor is .net frontend web framework that supports server side rendering and client interactivity
in a single programming model

* rich interactive UIs using C#
* share server side and client side app logic written in .NET
* render the UI as HTML and CSS for wide browser support, including mobile browser.
* build hybrid desktop and mobile apps with .NET and blazor. 

### Components in Blazor

Components are the building blocks of Blazor applications. They are:
- .NET C# classes compiled into .NET assemblies.
- Designed to handle flexible UI rendering and user events.
- Nestable and reusable.
- Shareable and distributable as Razor class libraries or NuGet packages.

### Full Stack Web Development with Blazor

Blazor supports comprehensive web development features:
- **Dependency Injection**: For managing dependencies.
- **Layouts**: For consistent look and feel across pages.
- **JavaScript Interoperability**: For integrating with JavaScript code.
- **Client-Side Routing**: For navigating between pages.
- **Forms**: For handling user input.



