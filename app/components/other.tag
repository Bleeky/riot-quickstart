<comment-box>
  <h1>{{ opts.title }}</h1>

  <comment-list comments={ comments } />
  <comment-form />

  this.comments = []

  add(comment) {
    comments.push(comment)
    this.update()
  }
</comment-box>

<comment-list>
    <comment each={ opts.comments } name={ this.name } message={ this.message } />
</comment-list>

<comment-form>
  <form onSubmit={ add }>
    <input type="text" name="name">
    <textarea name="message"></textarea>
    <input type="submit" value="Post">
  </form>

  add(e) {
    var comment = {
      name: this.name.value,
      message: this.message.value
    }

    this.parent.add(comment)
    e.target.reset()
  }
</comment-form>

<comment>
  <div>
    <h2>My name</h2>
    <p>My message</p>
  </div>
</comment>
