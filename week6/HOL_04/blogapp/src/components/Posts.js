import React from 'react';

class Posts extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            posts: []
        };
    }
    loadPosts = () => {
    fetch('https://jsonplaceholder.typicode.com/posts')
      .then(response => response.json())
      .then(data => this.setState({ posts: data }));
    };
    componentDidMount() {
      this.loadPosts();
    }

   render() {
      return (
        <div>
         <h2>Posts</h2>
         {this.state.posts.map(post => (
           <div key={post.id}>
             <h3>{post.title}</h3>
             <p>{post.body}</p>
           </div>
          ))}
        </div>
      );
    }

    componentDidCatch(error, info) {
        alert("An error occurred in the Posts component.");
        console.error("Error:", error);
        console.error("Info:", info);
    }
}
export default Posts;
