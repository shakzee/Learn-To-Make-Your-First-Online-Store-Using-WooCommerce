/* global BalticKitl10n, Balticl10n, Typist */
( function( $ ) {

	var balticKit = balticKit || {};

	balticKit.init = function() {

		// Cache dom
		balticKit.$document 			= $( document.body ),
		balticKit.$window 				= $( window ),
		balticKit.$html 				= $( 'html' ),
		balticKit.$body 				= $( 'body' ),
		balticKit.$quickViewContainer 	= $( '#quick-view__container' ),
		balticKit.$quickViewInner       = $( '.quick-view__inner' ),
		balticKit.$cartLink 			= $( 'a.site-header__extra-cartlink' ),
		balticKit.$widget 				= $( '.site-header__extra-toggle' );

		this.QuickView();
		this.wishListLoader();
		this.wishListTable();
		this.matchHeight();
		this.heroTypist();
		this.homepageSlider();
		this.sectionCarousel();
		this.events();

	};

	balticKit.headerCartOpen = function() {

		balticKit.$cartLink.addClass( 'toggled' );
		balticKit.$widget.toggleClass( 'show' );

	};

	balticKit.headerCartClose = function() {

		balticKit.$cartLink.removeClass( 'toggled' );
		balticKit.$widget.removeClass( 'show' );

	};

	balticKit.QuickView = function() {

		var $quickView			= $( 'a.baltic-quick-view' ),
			$quickViewContent 	= $( '.quick-view__content');

		$quickView.on( 'click', function( e ){

			e.preventDefault();

			balticKit.$body.css({ 'overflow':'hidden' });
			balticKit.$quickViewContainer.removeClass( 'hide' ).addClass( 'show' ).attr( 'tabindex', '-1' ).focus();

			balticKit.$quickViewContainer.append( '<div class="quick-view-ajax-loader spinner">'+ Balticl10n.loader +'</div>' );

			$.ajax({
	            url: BalticKitl10n.ajax_url,
	            data: {
	                action: 'quick_view_product',
	                product_id: $(this).attr('data-product_id')
	            },
	            dataType: 'html',
	            type: 'POST',
				beforeSend: function() {

					$quickViewContent.html('');

				},
				success: function( data ) {

	            	$('.quick-view-ajax-loader').fadeOut( 'slow', function(){
	            		$(this).remove();
	            	});

					balticKit.$quickViewInner.addClass( 'show' );

					$quickViewContent.html(data);

					var form_variation = $quickViewContent.find( '.variations_form' );
					form_variation.wc_variation_form();
					form_variation.trigger( 'check_variations' );

					var product_gallery = $quickViewContent.find( '.woocommerce-product-gallery' );
					product_gallery.each( function() {
						$( this ).wc_product_gallery();
						$( this ).ajaxComplete( function(){
							$(this).trigger( 'woocommerce_gallery_reset_slide_position' );
						});
					} );

				},
				error: function() {

					$quickViewContent.html( BalticKitl10n.error_msg );

				}
			});

		});

	};

	balticKit.closeQuickView = function() {

		if ( balticKit.$quickViewContainer.hasClass( 'hide' ) ) {
			return;
		}

		balticKit.$quickViewInner.removeClass( 'show' );
		balticKit.$quickViewContainer.removeClass( 'show' );
		balticKit.$quickViewContainer.toggleClass( 'hide' );
		balticKit.$body.css({ 'overflow':'visible' });

	};

	balticKit.wishList = function() {

		var $counter = $( '.site-header__extra-wishlist > span.total' );

		if ( 'undefined' === typeof $counter ) {
			return;
		}

		$.ajax({
			url: BalticKitl10n.ajax_url,
			data: {
				action: 'wishlist_count'
			},
			dataType: 'json',
			success: function( data ) {

				if ( data.count > 0 ) {
					$counter.removeClass( 'hide' );
					$counter.html( data.count );
				} else {
					$counter.addClass( 'hide' );
				}

			}
		});

	};

	balticKit.wishListLoader = function() {

		$( '.add_to_wishlist' ).on( 'click', function(){

			var $loader = $( this ).find( '.baltic-wishlist-loader' );

			$loader.addClass( 'show' );

			$loader.on( 'added_to_wishlist', function(){
				$( this ).removeClass( 'show' );
			});

		});

	};

	balticKit.wishListTable = function() {

		var $table = $( '#yith-wcwl-form' );

		$table.find( '.shop_table' ).addClass( 'shop_table_responsive' );
		$table.find( '.product-name' ).attr( 'data-title', 'Product');
		$table.find( '.product-price' ).attr( 'data-title', 'Price');
		$table.find( '.product-stock-status' ).attr( 'data-title', 'Stock Status');

	};

	balticKit.recentlyViewed = function() {

		var $widget 	= $( '.baltic-kit-ajax-recent-viewed-products' ),
			$id 		= $widget.attr( 'id' ),
			$container 	= $( '#' + $id + ' .baltic-kit__recently-viewed' ),
			total 		= $container.attr('data-count');

		$.ajax({
			url: BalticKitl10n.ajax_url,
			data: {
				action: 'recently_viewed_product',
				count: total
			},
			dataType: 'html',
			type: 'POST',
	        beforeSend: function() {

        		$container.html( Balticl10n.loader );

        	},
			success: function( data ) {

				if ( data ) {
					$widget.css({
						'margin-bottom' : '1.5rem'
					});
	        		$widget.find( '.widget-title' ).css({
	                	'display': 'block'
	            	});
				}

				$container.removeClass( 'loading' );
				$container.html( data );

			},
	        error: function(){

	            $container.html( BalticKitl10n.error_msg );

	        }
		});

	};

	balticKit.matchHeight = function() {

		var	$matchHeightPost 		= $( '.featured-posts' ).find( '.entry-inner' ),
			$matchHeightProduct 	= $( 'ul.products' ).find( '.entry-product' ),
			$matchHeightTwitter 	= $( '.baltic-twitter' ).find( '.baltic-twitter__item' ),
			$matchHeightProducCats 	= $( '.product-cats2' ).find( '.product-cats__inner' );

		$matchHeightPost.matchHeight();
		$matchHeightProduct.matchHeight();
		$matchHeightTwitter.matchHeight();
		$matchHeightProducCats.matchHeight();

	};

	balticKit.heroTypist = function() {

		var typist;

		typist = document.querySelector( '#homepage__hero-rotator' );

		new Typist( typist, {
			letterInterval: 120,
			textInterval: 5000
		});

	};

	balticKit.homepageSlider = function() {

		var $slider 		= $( '.homepage__slider' ),
			effect  		= $slider.data( 'fade' ),
			autoplay  		= $slider.data( 'autoplay' ),
			autoplayspeed 	= $slider.data( 'autoplayspeed' ),
			arrows 			= $slider.data( 'arrows' ),
			dots 			= $slider.data( 'dots' ),
			pauseonhover 	= $slider.data( 'pauseonhover' );

		$( '.homepage__slider-container' ).not('.slick-initialized').slick({
			infinite: true,
			adaptiveHeight: true,
			slidesToScroll: 1,
			slidesToShow: 1,
			fade: effect,
			autoplay: autoplay,
			autoplaySpeed: autoplayspeed,
			arrows: arrows,
            dots: dots,
            pauseOnHover: pauseonhover,
            dotsClass: 'baltic-slick-dots',
            prevArrow: Balticl10n.sliderPrevBtn,
            nextArrow: Balticl10n.sliderNextBtn,
			responsive: [
				{
					breakpoint: 788,
					settings: {
						fade: true,
						slidesToShow: 1
					}
				}
			]
		});

	};

	balticKit.sectionCarousel = function() {

		var $slider 	 = $( '.homepage-section.slider' );

	    if ( 'undefined' === typeof $slider ) {
	        return;
	    }

		$slider.each( function(){

			var $this 		 = $(this),
				sliderID 	 = $this.attr('id'),
				columns 	 = $this.data('columns');

			$( '#' + sliderID + ' .columns, .products' ).not('.slick-initialized').slick({
				lazyLoad: 'progressive',
				infinite: true,
				adaptiveHeight: true,
				slidesToScroll: 1,
				fade: false,
				slidesToShow: columns,
				autoplay: true,
				autoplaySpeed: 5000,
				arrows: false,
	            dots: true,
	            pauseOnHover: false,
	            dotsClass: 'baltic-slick-dots',
				responsive: [
					{
						breakpoint: 788,
						settings: {
							fade: false,
							slidesToShow: 2
						}
					}
				]
			});

		});

	};

	balticKit.events = function() {

		balticKit.$body.on( 'afterChange', function () {
			balticKit.matchHeight();
		});

		balticKit.$window.on( 'load', function() {
			balticKit.recentlyViewed();
			balticKit.wishList();
		});

		balticKit.$cartLink.on( 'click', function(e) {
			e.stopPropagation();
			e.preventDefault();
			balticKit.headerCartOpen();
		});

		balticKit.$html.on( 'click', function( e ) {

			if ( balticKit.$cartLink.hasClass( 'toggled' ) || balticKit.$widget.hasClass( 'show' ) ) {
				if( !$( e.target ).is( '.site-header__extra-toggle, .site-header__extra-toggle *' ) ){
					balticKit.headerCartClose();
				}
			}

		});

		$( '.quick-view__close' ).on( 'click', function( e ){

			e.preventDefault();
			balticKit.closeQuickView();

		});

		balticKit.$quickViewContainer.on( 'click', function( e ) {

			if ( balticKit.$quickViewContainer.hasClass( 'show' ) ) {
				if( !$( e.target ).is( '.quick-view__inner, .quick-view__inner *' ) ){
					balticKit.closeQuickView();
				}
			}

		});

		balticKit.$document.keyup( function( e ) {

			if ( e.keyCode === 27 ) {
				balticKit.closeQuickView();
				balticKit.headerCartClose();
			}

		});

		balticKit.$document.on( 'added_to_wishlist removed_from_wishlist added_to_cart', function() {
			balticKit.wishList();
			balticKit.wishListTable();
		});

	};

	/** Initialize balticKit.init() */
	$( function() {

		balticKit.init();

	    if ( 'undefined' === typeof wp || ! wp.customize || ! wp.customize.selectiveRefresh ) {
	        return;
	    }

	    wp.customize.selectiveRefresh.bind( 'partial-content-rendered', function( placement ) {

			// Hero selective refresh
	        var heroPartialID = [
	        	'hero_prefix',
	        	'hero_rotator',
	        	'hero_suffix',
	        	'hero_description',
	        	'hero_btn1_text',
	        	'hero_btn1_link',
	        	'hero_btn1_style',
	        	'hero_btn2_text',
	        	'hero_btn2_link',
	        	'hero_btn2_style',
				'hero_btn_rounded',
	        	'hero_layout',
	        	'homepage_order'
	        ];
			if ( $.inArray( placement.partial.id, heroPartialID ) >= 0 ) {
			    balticKit.heroTypist();
			}

			// Homepage order partial refresh
	        if ( placement.partial.id === 'homepage_order' ) {
				balticKit.heroTypist();
				balticKit.homepageSlider();
	            balticKit.sectionCarousel();
	            balticKit.matchHeight();
	        }

	        // General
	        if ( placement.container ) {
				balticKit.homepageSlider();
	            balticKit.sectionCarousel();
	            balticKit.matchHeight();
	        }

	    });

	});

} )( jQuery );
