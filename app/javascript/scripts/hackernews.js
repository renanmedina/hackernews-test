
const StoryItemComponent = Vue.component('story-item', {
  props: {
    story: {type: Object}
  },
  data: function () {
    return {
      isLoadingComments: false,
      isShowingComments: false,
      comments: null
    }
  },
  computed: {
    created_at: function() {
      return moment.unix(this.story.time).format("DD/MM/YYYY HH:mm");
    }
  },
  methods: {
    toggleRelevantComments: function() {
      this.isShowingComments = !this.isShowingComments;
      this.comments = null;
      if (this.isShowingComments) {
        this.loadComments();
      }
    },
    loadComments: async function(storyId) {
      try {
        const storyId = this.story.id;
        this.isLoadingComments = true;
        const commentsReponse = await fetch(`/relevant_comments_json?story_id=${storyId}`);
        this.comments = await commentsReponse.json();
      } catch (errLoadComments){
        alert('Failed to load relevant comments');
      } finally {
        this.isLoadingComments = false;
      }
    }
  },
  template: `
    <div class="story-item">
      <h5 class="story-item-title">{{story.title}}</h5>
      <small class="story-item-author">By <span class="underline">{{story.by}}</span> <span class="underline">{{created_at}}</span></small>
      <h5 class="story-item-comments-count mt-2">{{story.kids ? story.kids.length : 0}} comments</h5>
      <span class="btn btn-link" @click="toggleRelevantComments">+ {{isShowingComments ? 'Hide' : 'Show'}} most relevant comments</span>
      <section class="story-comments" v-bind:class="{ showing: isShowingComments }">
        <span v-if="isLoadingComments" class="pt-3 pb-2 d-flex justify-content-center">Loading comments ....</span>
        <comment-item v-for="comment in comments" :key="comment.id" :comment="comment"></comment-item>
        <span v-if="comments && !comments.length" class="pt-3 pb-2 d-flex justify-content-center">No relevant comments found ....</span>
      </section>
    </div>
  `
});

const CommentItemComponent = Vue.component('comment-item', {
  props: {
    comment: {type: Object}
  },
  computed: {
    created_at: function() {
      return moment.unix(this.comment.time).format("DD/MM/YYYY HH:mm");
    }
  },
  template: `
    <div class='comment-item p-3'>
      <small class="story-item-author mb-2"><span class="underline">{{comment.by}}</span> <span class="underline">{{created_at}}</span></small>
      <div class="mt-3" v-html="comment.text"></div>
    </div>
  `
});

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#hackernews-app',
    components: {
      'story-item': StoryItemComponent,
    }
  });

 
});
