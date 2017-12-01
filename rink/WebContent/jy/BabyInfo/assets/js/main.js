/*
	Strata by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {

	var settings = {

		// Parallax background effect?
			parallax: true,

		// Parallax factor (lower = more intense, higher = less intense).
			parallaxFactor: 20

	};

	skel.breakpoints({
		xlarge: '(max-width: 1800px)',
		large: '(max-width: 1280px)',
		medium: '(max-width: 980px)',
		small: '(max-width: 736px)',
		xsmall: '(max-width: 480px)'
	});

	$(function() {
		var $window = $(window),
		$body = $('body'),
		$header = $('#header'),
/*		$footer = $('#footer'),
*/		$main = $('#main');
		
		

	// Disable animations/transitions until the page has loaded.
		$body.addClass('is-loading');

		$window.on('load', function() {
			window.setTimeout(function() {
				$body.removeClass('is-loading');
			}, 100);
		});

	// Touch?
		if (skel.vars.mobile)
			$body.addClass('is-touch');

	// Forms.
		var $form = $('form');

		// Auto-resizing textareas.
			$form.find('textarea').each(function() {

				var $this = $(this),
					$wrapper = $('<div class="textarea-wrapper"></div>'),
					$submits = $this.find('input[type="submit"]');

				$this
					.wrap($wrapper)
					.attr('rows', 1)
					.css('overflow', 'hidden')
					.css('resize', 'none')
					.on('keydown', function(event) {

						if (event.keyCode == 13
						&&	event.ctrlKey) {

							event.preventDefault();
							event.stopPropagation();

							$(this).blur();

						}

					})
					.on('blur focus', function() {
						$this.val($.trim($this.val()));
					})
					.on('input blur focus --init', function() {

						$wrapper
							.css('height', $this.height());

						$this
							.css('height', 'auto')
							.css('height', $this.prop('scrollHeight') + 'px');

					})
					.on('keyup', function(event) {

						if (event.keyCode == 9)
							$this
								.select();

					})
					.triggerHandler('--init');

				// Fix.
					if (skel.vars.browser == 'ie'
					||	skel.vars.mobile)
						$this
							.css('max-height', '10em')
							.css('overflow-y', 'auto');

			});

		// Fix: Placeholder polyfill.
			$form.placeholder();

	// Prioritize "important" elements on medium.
		skel.on('+medium -medium', function() {
			$.prioritize(
				'.important\\28 medium\\29',
				skel.breakpoint('medium').active
			);
		});
		
		$window.on('load', function() {

			$('#two').poptrox({
				caption: function($a) { return $a.next('h3').text(); },
				overlayColor: '#2c2c2c',
				overlayOpacity: 0.85,
				popupCloserText: '',
				popupLoaderText: '',
				selector: '.work-item a.image',
				usePopupCaption: true,
				usePopupDefaultStyling: false,
				usePopupEasyClose: false,
				usePopupNav: true,
				windowMargin: (skel.breakpoint('small').active ? 0 : 50)
			});

		});
	// Menu.
		var $menu = $('#menu');

		$menu.wrapInner('<div class="inner"></div>');

		$menu._locked = false;

		$menu._lock = function() {

			if ($menu._locked)
				return false;

			$menu._locked = true;

			window.setTimeout(function() {
				$menu._locked = false;
			}, 350);

			return true;

		};

		$menu._show = function() {

			if ($menu._lock())
				$body.addClass('is-menu-visible');

		};

		$menu._hide = function() {

			if ($menu._lock())
				$body.removeClass('is-menu-visible');

		};

		$menu._toggle = function() {

			if ($menu._lock())
				$body.toggleClass('is-menu-visible');

		};

		$menu
			.appendTo($body)
			.on('click', function(event) {
				event.stopPropagation();
			})
			.on('click', 'a', function(event) {

				var href = $(this).attr('href');

				event.preventDefault();
				event.stopPropagation();

				// Hide.
					$menu._hide();

				// Redirect.
					if (href == '#menu')
						return;

					window.setTimeout(function() {
						window.location.href = href;
					}, 350);

			})
			.append('<a class="close" href="#menu">Close</a>');

		$body
			.on('click', 'a[href="#menu"]', function(event) {

				event.stopPropagation();
				event.preventDefault();

				// Toggle.
					$menu._toggle();

			})
			.on('click', function(event) {

				// Hide.
					$menu._hide();

			})
			.on('keydown', function(event) {

				// Hide on escape.
					if (event.keyCode == 27)
						$menu._hide();

			});
		
		

		// Disable animations/transitions until the page has loaded.
			$body.addClass('is-loading');

			$window.on('load', function() {
				$body.removeClass('is-loading');
			});

		// Touch?
			if (skel.vars.mobile) {

				// Turn on touch mode.
					$body.addClass('is-touch');

				// Height fix (mostly for iOS).
					window.setTimeout(function() {
						$window.scrollTop($window.scrollTop() + 1);
					}, 0);

			}

		// Fix: Placeholder polyfill.
			$('form').placeholder();

		// Prioritize "important" elements on medium.
			skel.on('+medium -medium', function() {
				$.prioritize(
					'.important\\28 medium\\29',
					skel.breakpoint('medium').active
				);
			});

		// Footer.
			skel.on('+medium', function() {
				$footer.insertAfter($main);
			});

			skel.on('-medium !medium', function() {
				$footer.appendTo($header);
			});

		// Header.

			// Parallax background.

				// Disable parallax on IE (smooth scrolling is jerky), and on mobile platforms (= better performance).
					if (skel.vars.browser == 'ie'
					||	skel.vars.mobile)
						settings.parallax = false;

				if (settings.parallax) {

					skel.on('change', function() {

						if (skel.breakpoint('medium').active) {

							$window.off('scroll.strata_parallax');
							$header.css('background-position', 'top left, center center');

						}
						else {

							$header.css('background-position', 'left 0px');

							$window.on('scroll.strata_parallax', function() {
								$header.css('background-position', 'left ' + (-1 * (parseInt($window.scrollTop()) / settings.parallaxFactor)) + 'px');
							});

						}

					});

					$window.on('load', function() {
						$window.triggerHandler('scroll');
					});

				}

		// Main Sections: Two.

			// Lightbox gallery.
				$window.on('load', function() {

					$('#two').poptrox({
						caption: function($a) { return $a.next('h3').text(); },
						overlayColor: '#2c2c2c',
						overlayOpacity: 0.85,
						popupCloserText: '',
						popupLoaderText: '',
						selector: '.work-item a.image',
						usePopupCaption: true,
						usePopupDefaultStyling: false,
						usePopupEasyClose: false,
						usePopupNav: true,
						windowMargin: (skel.breakpoint('small').active ? 0 : 50)
					});

				});
				// Menu.
				

				$menu.wrapInner('<div class="inner"></div>');

				$menu._locked = false;

				$menu._lock = function() {

					if ($menu._locked)
						return false;

					$menu._locked = true;

					window.setTimeout(function() {
						$menu._locked = false;
					}, 350);

					return true;

				};

				$menu._show = function() {

					if ($menu._lock())
						$body.addClass('is-menu-visible');

				};

				$menu._hide = function() {

					if ($menu._lock())
						$body.removeClass('is-menu-visible');

				};

				$menu._toggle = function() {

					if ($menu._lock())
						$body.toggleClass('is-menu-visible');

				};

				$menu
					.appendTo($body)
					.on('click', function(event) {
						event.stopPropagation();
					})
					.on('click', 'a', function(event) {

						var href = $(this).attr('href');

						event.preventDefault();
						event.stopPropagation();

						// Hide.
							$menu._hide();

						// Redirect.
							if (href == '#menu')
								return;

							window.setTimeout(function() {
								window.location.href = href;
							}, 350);

					})
					.append('<a class="close" href="#menu">Close</a>');

				$body
					.on('click', 'a[href="#menu"]', function(event) {

						event.stopPropagation();
						event.preventDefault();

						// Toggle.
							$menu._toggle();

					})
					.on('click', function(event) {

						// Hide.
							$menu._hide();

					})
					.on('keydown', function(event) {

						// Hide on escape.
							if (event.keyCode == 27)
								$menu._hide();

					});
				var	$window = $(window),
				$body = $('body');

			// Disable animations/transitions until the page has loaded.
				$body.addClass('is-loading');

				$window.on('load', function() {
					$body.removeClass('is-loading');
				});

			// CSS polyfills (IE<9).
				if (skel.vars.IEVersion < 9)
					$(':last-child').addClass('last-child');

			// Fix: Placeholder polyfill.
				$('form').placeholder();

			// Prioritize "important" elements on mobile.
				skel.on('+mobile -mobile', function() {
					$.prioritize(
						'.important\\28 mobile\\29',
						skel.breakpoint('mobile').active
					);
				});

			// Dropdowns.
				$('#nav > ul').dropotron({
					mode: 'fade',
					speed: 350,
					noOpenerFade: true,
					alignment: 'center'
				});

			// Scrolly links.
				$('.scrolly').scrolly();

			// Off-Canvas Navigation.

				// Navigation Button.
					$(
						'<div id="navButton">' +
							'<a href="#navPanel" class="toggle"></a>' +
						'</div>'
					)
						.appendTo($body);

				// Navigation Panel.
					$( 
						'<div id="navPanel">' +
							'<nav>' +
								$('#nav').navList() +
							'</nav>' +
						'</div>'
					)
						.appendTo($body)
						.panel({
							delay: 500,
							hideOnClick: true,
							hideOnSwipe: true,
							resetScroll: true,
							resetForms: true,
							target: $body,
							visibleClass: 'navPanel-visible'
						});

				// Fix: Remove navPanel transitions on WP<10 (poor/buggy performance).
					if (skel.vars.os == 'wp' && skel.vars.osVersion < 10)
						$('#navButton, #navPanel, #page-wrapper')
							.css('transition', 'none');

			// Carousels.
				$('.carousel').each(function() {

					var	$t = $(this),
						$forward = $('<span class="forward"></span>'),
						$backward = $('<span class="backward"></span>'),
						$reel = $t.children('.reel'),
						$items = $reel.children('article');

					var	pos = 0,
						leftLimit,
						rightLimit,
						itemWidth,
						reelWidth,
						timerId;

					// Items.
						if (settings.carousels.fadeIn) {

							$items.addClass('loading');

							$t.onVisible(function() {
								var	timerId,
									limit = $items.length - Math.ceil($window.width() / itemWidth);

								timerId = window.setInterval(function() {
									var x = $items.filter('.loading'), xf = x.first();

									if (x.length <= limit) {

										window.clearInterval(timerId);
										$items.removeClass('loading');
										return;

									}

									if (skel.vars.IEVersion < 10) {

										xf.fadeTo(750, 1.0);
										window.setTimeout(function() {
											xf.removeClass('loading');
										}, 50);

									}
									else
										xf.removeClass('loading');

								}, settings.carousels.fadeDelay);
							}, 50);
						}

					// Main.
						$t._update = function() {
							pos = 0;
							rightLimit = (-1 * reelWidth) + $window.width();
							leftLimit = 0;
							$t._updatePos();
						};

						if (skel.vars.IEVersion < 9)
							$t._updatePos = function() { $reel.css('left', pos); };
						else
							$t._updatePos = function() { $reel.css('transform', 'translate(' + pos + 'px, 0)'); };

					// Forward.
						$forward
							.appendTo($t)
							.hide()
							.mouseenter(function(e) {
								timerId = window.setInterval(function() {
									pos -= settings.carousels.speed;

									if (pos <= rightLimit)
									{
										window.clearInterval(timerId);
										pos = rightLimit;
									}

									$t._updatePos();
								}, 10);
							})
							.mouseleave(function(e) {
								window.clearInterval(timerId);
							});

					// Backward.
						$backward
							.appendTo($t)
							.hide()
							.mouseenter(function(e) {
								timerId = window.setInterval(function() {
									pos += settings.carousels.speed;

									if (pos >= leftLimit) {

										window.clearInterval(timerId);
										pos = leftLimit;

									}

									$t._updatePos();
								}, 10);
							})
							.mouseleave(function(e) {
								window.clearInterval(timerId);
							});

					// Init.
						$window.load(function() {

							reelWidth = $reel[0].scrollWidth;

							skel.on('change', function() {

								if (skel.vars.mobile) {

									$reel
										.css('overflow-y', 'hidden')
										.css('overflow-x', 'scroll')
										.scrollLeft(0);
									$forward.hide();
									$backward.hide();

								}
								else {

									$reel
										.css('overflow', 'visible')
										.scrollLeft(0);
									$forward.show();
									$backward.show();

								}

								$t._update();

							});

							$window.resize(function() {
								reelWidth = $reel[0].scrollWidth;
								$t._update();
							}).trigger('resize');

						});
				});
	});

})(jQuery);