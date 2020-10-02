Vue.component('comment-item', {
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