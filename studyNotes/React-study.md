# Reactjs Study
> React is a language to develop fast and independent components in a web-application.

> This binds the components with the data and updates the component dynamically only for the changed parts only instead of reloading full component.

It'll also have a few neat features:

- **Optimistic commenting:** comments appear in the list before they're saved on the server so it feels fast.
- **Live updates:** other users' comments are popped into the comment view in real time.
- **Markdown formatting:** users can use Markdown to format their text.

Sample code
```coffeescript
  // tutorial1.js

  CommentBox = React.createClass(
    render: () ->
      return
        <div className="commentBox">
          Hello, world! I am a CommentBox.
        </div>
  )
  React.render <CommentBox />, document.getElementById('content')

```
> **Note** that native HTML element names start with a lowercase letter, while custom React classes names begin with an uppercase letter.

**What's going on**

We pass some methods in a JavaScript object to `React.createClass()` to create a new React component. The most important of these methods is called render which returns a tree of React components that will eventually render to `HTML`.

The `<div>` tags are not actual DOM nodes; they are instantiations of React `div` components. You can think of these as markers or pieces of data that React knows how to handle. React is safe. We are not generating HTML strings so XSS protection is the default.

You do not have to return basic HTML. You can return a tree of components that you (or someone else) built. This is what makes React composable: a key tenet of maintainable frontends.

`React.render()` instantiates the root component, starts the framework, and injects the markup into a raw DOM element, provided as the second argument.
