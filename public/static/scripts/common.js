var Common = {};

Common.Ticker = new Class({
  Implements: Options,
  options: {
    items: [],
    link_id: 'ticker',
    duration: 4000
  },

  initialize: function(id, options) {
    this.setOptions(options);
    if($(id) && this.options.items.length > 1) {
      this.container = $(id).getElement('p');
      this.counter = 0;
      
      this.fx = new Fx.Tween(this.container, {
        duration: 10,
        property: 'opacity'
      });
      this.p = this.switchLinks.bind(this).periodical(this.options.duration);
    }
  },

  switchLinks: function() {
    this.fx.start(1, 0.01).chain(
      function(){
        this.counter++;
        if(this.counter >= this.options.items.length) {
          this.counter = 0;
        }
        this.container.set({
          html: this.options.items[this.counter]
        });
        this.fx.start(0.01, 1);
      }.bind(this)
    );
  }

});

window.addEvent('domready',function() {
	/* settings */
	var showDuration = 5000;
	var container = $('page_banner');
	var images = container.getElements('img');
	var currentIndex = 0;
	var interval;
	/* opacity and fade */
	images.each(function(img,i){
		if(i > 0) {
			img.set('opacity',0);
		}
	});
	/* worker */
	var show = function() {
		images[currentIndex].fade('out');
		images[currentIndex = currentIndex < images.length - 1 ? currentIndex+1 : 0].fade('in');
	};
	/* start once the page is finished loading */
	window.addEvent('load',function(){
		interval = show.periodical(showDuration);
	});
});