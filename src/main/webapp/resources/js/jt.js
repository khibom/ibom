'use strict';

/**
 * JT javascript UI library
 * @namespace
 * @description UI library create to help front end developement
 */
var JT = JT || {};

(function(win, $) {

	/**
	 * Custom Alert helper
	 *
	 * @version 1.1.0
	 * @since 2018-02-12
	 * @author STUDIO-JT (NICO)
	 *
	 * @param {string|object} args - the message or an options object for more custom.
	 * @param {string} args.message - 알림 메시지 내용.
	 * @param {string} [args.title=false] - 알림 메시지 제목.
	 * @param {string} [args.is_confirm=false] - if need display confirm modal (with cancel button).
	 * @param {string} [args.ok=확인] - 확인 버튼 커스텀 텍스트.
	 * @param {string} [args.cancel=취소] - 취소 버튼 커스텀 텍스트.
	 * @param {string} [args.primary_button=true]
	 * @param {string} [args.button_icon=true]
	 * @param {callback} [args.on_confirm] - callback if press confirm.
	 * @param {callback} [args.on_cancel] - callback if press cancel button for confirm modal.
	 * @param {callback} [cb] - on confirm callback for simple.
	 *
	 * @todo create custom ui
	 *
	 * @example
	 * // String minimal required option :
	 * JT.alert('Some alert message');
	 *
	 * // String type with callback :
	 * JT.alert('Some alert message', function(){
	 *     console.log('Alert 끝!');
	 * });
	 *
	 * // Object type parameter옵션 :
	 * JT.alert({
	 *	   title          : '상태 변경 완료',
	 *     message        : '개인정보수집 및 이용안내에 동의하여 주십시오.',
	 *     ok             : '확인 버튼 커스텀 텍스트',
	 *     cancel         : '취소 버튼 커스텀 텍스트',
	 *     is_confirm     : true,
	 *     primary_button : false,
	 *     button_icon    : false,
     *     on_confirm     : function(){
	 *         console.log('Alert 끝!');
     *     },
     *     on_cancel      : function(){
	 *         console.log('Alert 취소!');
     *     }
	 * });
	 *
	 */
	JT.alert = function(args,cb){

        if(typeof args !== 'object' && typeof args !== 'string') return;

		if(typeof cb == 'undefined') {
			cb = '';
		}

        var title, message, on_confirm, on_cancel, ok, cancel, is_confirm, primary_button, button_icon;

        // string or object parameter
        if(typeof args == 'object'){
            message = args.message;
            on_confirm = args.on_confirm;
			on_cancel = args.on_cancel;
        }else{
            message = args;
        }

		// if has on_confirm callback second parameter  (TODO : improve the parameter 확인 logic)
		if(typeof cb == 'function' && typeof args != 'object'){
		    on_confirm = cb;
		}

		// set default value
        ok = (typeof args.ok != 'undefined') ? args.ok : '확인';
        cancel = (typeof args.cancel != 'undefined') ? args.cancel : '취소';
		is_confirm = (typeof args.is_confirm != 'undefined') ? args.is_confirm : false;
		title = (typeof args.title != 'undefined') ? args.title : false;
		primary_button = (typeof args.primary_button != 'undefined') ? args.primary_button : true;
		button_icon = (typeof args.button_icon != 'undefined') ? args.button_icon : true;

        // Get a unique id
        var now  = new Date().getTime();
        var uid  = now / 1000 | 0;
        var id   = 'jt_alert_'+ uid ;
        var _idObj = jQuery('#'+id);

		// defined class
		var css_class = "jt_alert";

		if(is_confirm){
		    css_class += " jt_alert_confirm";
		}

		if(primary_button){
		    css_class += " jt_alert_primary_button";
		}

		if(button_icon){
		    css_class += " jt_alert_button_icon";
		}

        // html 생성
        var html    = "";

        html +=  '<div id="'+ id +'" class="'+css_class+'" role="alert">';
            html +=  '<div class="jt_alert_container">';
                html +=  '<div class="jt_alert_content">';
				    if(title){
					html +=  '<h1>'+ title+'</h1>';
					}
					html +=  '<p>'+ message+'</p>';
				html +=  '</div> ';
                html +=  '<div class="jt_alert_actions">';
                    if(is_confirm){
				    html +=  '<button class="jt_alert_cancel"><span>'+cancel+'</span></button>';
				    }
				    html +=  '<button class="jt_alert_ok"><span>'+ok+'</span></button>';
                html +=  '</div>';
            html +=  '</div> ';
        html +=  '</div> ';

        // Body 안에 추가 or 교체
        if (_idObj.length) {
            _idObj.replaceWith(html);
        } else {
            _idObj = jQuery(html).appendTo('body');
        }

        // 접근성 포커스
        _idObj.find('.jt_alert_ok').attr("tabindex", 0).focus();

        // 이벤트 추가
        _idObj.find('.jt_alert_ok').on('click', function(e) {
            e.preventDefault();
            _idObj.remove();

            if(typeof on_confirm === 'function'){
                on_confirm(_idObj);
            }

        });

		_idObj.find('.jt_alert_cancel').on('click', function(e) {
            e.preventDefault();
            _idObj.remove();

            if(typeof on_cancel === 'function'){
                on_cancel(_idObj);
            }

        });

        // Esc 키누르시면 알림 팝업
		var esc = function(e){
            if (e.which == '27') {
                _idObj.remove();
            }
        };
        $(document).off('keyup', esc);
        $(document).on('keyup', function(e){
             esc(e);
        });

        return id;
	};



	/**
	 * Smooth scroll with TweenMax (TODO : make a plugin)
	 *
	 * @version 1.0.0
	 * @since 2018-02-03
	 * @author STUDIO-JT (NICO)
	 * @requires TweenMax.min.js
	 * @requires ScrollToPlugin.min.js
	 */
	JT.smoothscroll = {

		passive : function(){
			var supportsPassive = false;
			try {
			  document.addEventListener("test", null, { get passive() { supportsPassive = true }});
			} catch(e) {}

			return supportsPassive;
		},
		init : function(){

			if($('html').hasClass('mobile') || $('html').hasClass('mac') || $('html').hasClass('ff')) return;

			if(this.passive()){
			    window.addEventListener("wheel",this.scrolling,{passive: false});
			}else{
                $(window).on("mousewheel DOMMouseScroll", this.scrolling);
			}

		},
		destroy : function(){

			//window.removeEventListener("mousewheel DOMMouseScroll");
			if(this.passive()){
			    window.removeEventListener("wheel",this.scrolling);
			}else{
				$(window).off("mousewheel DOMMouseScroll", this.scrolling);
			}
			TweenMax.killChildTweensOf($(window),{scrollTo:true});

		},
		scrolling : function(event){

			event.preventDefault();

			var $window = $(window);
			var scrollTime = 1;
			var distance_offset = 2.5;
			var scrollDistance = $window.height() / distance_offset;
			var delta = 0;

			if(JT.smoothscroll.passive()){
				delta = event.wheelDelta/120 || -event.deltaY/3;
			}else{
				if(typeof event.originalEvent.deltaY != "undefined"){
					delta = -event.originalEvent.deltaY/120;
				}else{
					delta = event.originalEvent.wheelDelta/120 || -event.originalEvent.detail/3;
				}
			}

			var scrollTop = $window.scrollTop();
			var finalScroll = scrollTop - parseInt(delta*scrollDistance);

			TweenMax.to($window, scrollTime, {
				scrollTo : { y: finalScroll, autoKill:true },
				ease: Power3.easeOut,
				overwrite: 5
			});

		}

	};



	/**
	 * Check if screen is smaller than
	 *
	 * @description egal to css mediaqueries max-width
	 * @version 1.0.0
	 * @since 2018-02-12
	 * @author STUDIO-JT (NICO)
	 *
	 * @example
	 * // Basic usage :
	 * JT.is_screen('767');
	 */
	JT.is_screen = function(max_width){
		if(win.matchMedia){
			return win.matchMedia('(max-width:'+ max_width +'px)').matches;
		}else{
			return win.innerWidth <= max_width;
		}
	};



	/**
	 * Empty object will store all custom global of the site
	 *
	 * @description Sometime variables or functions need to be accessible globally.
	 * Use this object to store them, it avoid potentiel conflict with third party script.
	 * Please use this functionality with wisdom you avoid memory issue
	 *
	 * @version 1.0.0
	 * @since 2018-02-12
	 * @author STUDIO-JT (NICO)
	 *
	 * @example
	 * // Add global variable :
	 * JT.globals.my_var = 'somthing';
	 *
	 * // Add global fucntion :
	 * JT.globals.my_function = function(){
	 *   // alert('something')
	 * };
	 */
	JT.globals = {};



})(window, jQuery);
