/*
 * File       : js/main.js
 * Author     : STUDIO-JT (KMS)
 * Guideline  : JTstyle.1.0
 *
 * SUMMARY:
 * 1) Global Variable
 * 2) Functions INIT
 * 3) ON LOAD
 * 4) ON RESIZE
 * 5) Functions
 */



(function(){



/* **************************************** *
 * Functions INIT
 * **************************************** */
JT.smoothscroll.init();

page_body_class();

minimize_header();
screen_nav_helper();
small_screen_nav_open();
small_screen_nav_toggle();

family_select_change();

scroll_top();
scroll_down();

bubble_btn_setting();

icheck_init();
iradio_etc_textarea();
selectric_init();
mail_select_change();
nicescroll_init();
custom_input_file();

sns_popup_init();
share_clipboard();
jt_board_list_fullclick();

// a11y
screen_nav_a11y();
focus_on_tab_only();

// main
main_fullpage_init();
main_visual_slider();
main_floating_rwd();

// member
join_agree_check();
join_birth_check();
//account_remove();

// intro
character_fullpage_init();
character_animation_video();

// project
project_init();

// adventure
thema_audio_play();
thema_lyrics_popup();
youtube_play();
character_slideshow();

// single
single_comment();
single_report();

// motion
illust_floating_motion();
illust_scroll_motion();

// rwd
jt_icon_write_mobile();

// helper
is_naver();



/* **************************************** *
* ON LOAD
* **************************************** */
jQuery(window).load(function() {

    menu_hover_effect();
    match_height();
    main_visual_control_pos(true);

});



/* **************************************** *
 * ON RESIZE
 * **************************************** */
// INITIALIZE RESIZE
function init_resize(){

    match_height();
    main_visual_control_pos(false);
    main_floating_rwd();

}

// Init resize on reisize
jQuery(window).on('resize',init_resize);



/* **************************************** *
 * Functions
 * **************************************** */
/**
 * FIX HEADER ANIMATION
 *
 * @version 1.0.0
 * @since 2018-02-03
 * @author STUDIO-JT (KMS, Nico)
 * @requires TweenMax.min.js
 */
function minimize_header() {

    var _window = jQuery(window);
    var _body = jQuery('body');
	var _header = jQuery('#header');
    var did_scroll     = null;
    var current_scroll = 0;
    var last_scroll    = 0;
    var move_scroll    = 10;

	_window.on('scroll', function() {
        did_scroll = true;

		if (_window.scrollTop() > _header.height()) {
			_header.addClass('minimize');
            _body.addClass('minimize_layout');
		} else {
			_header.removeClass('minimize');
            _body.removeClass('minimize_layout');
		}
	});

    setInterval(function() {

        if (did_scroll && !_body.hasClass('open_menu')) {
            hasScrolled();
            did_scroll = false;
        }

    }, 50);

    function hasScrolled(){

        current_scroll = jQuery(this).scrollTop();

        // Make sure they scroll more than move_scroll
        if(Math.abs(last_scroll - current_scroll) <= move_scroll) return;

        if(current_scroll > last_scroll){ // ScrollDown
            if(current_scroll > _window.height()){
                if(!JT.is_screen(1023)){
                    TweenMax.to( _header, 0.4, { autoAlpha:0, y: -_header.outerHeight(), ease: Power3.easeOut });
                }else {
                    TweenMax.to( _header, 0.4, { autoAlpha:1, y: 0, ease: Power3.easeOut });
                }
            }
        }
        else { // ScrollUp
            TweenMax.to( _header, 0.4, { autoAlpha:1, y: 0, ease: Power3.easeOut });
        }

        last_scroll = current_scroll;

    }

}



/**
 * small screen navigation
 *
 * @version 1.0.0
 * @since 2018-02-03
 * @author STUDIO-JT (KMS)
 * @requires TweenMax.min.js
 */
function small_screen_nav_open(){

    var _body = jQuery('body');
    var _header = jQuery('#header');
    var _menu_container = jQuery('#small_menu_container');
    var _menu_overlay = jQuery('#small_menu_overlay');
    var _button_line_01 = jQuery('.small_menu_btn_line_01');
    var _button_line_02 = jQuery('.small_menu_btn_line_02');
    var _button_line_03 = jQuery('.small_menu_btn_line_03');
    var is_open = false;

    // open menu
    jQuery('#small_menu_btn').on('click', function(){

        if( is_open ){ // close action

            screen_nav_close();

        } else { // open action

            is_open = true;
            _body.addClass('open_menu');
            _header.removeAttr('style');

            // active menu check
            jQuery('.small_screen_menu > li').each(function(){
                var _this = jQuery(this);

                if( _this.hasClass('active') ){
                    _this.addClass('open').find('> ul').show();
                    return false;
                }
            });

            // open
            var y_position = 9;
            if(JT.is_screen(540)) { y_position = 8; }

            TweenMax.set('.small_menu_btn_line', {backgroundColor: '#fff'});
            TweenMax.to(_button_line_01, .3, {delay: .2,y: y_position,rotation: 45,ease: Quad.easeInOut});
            TweenMax.to(_button_line_02, .3, {width: 0,ease: Quad.easeInOut});
            TweenMax.to(_button_line_03, .3, {delay: .2,y: -y_position,rotation: -45,ease: Quad.easeInOut});

            TweenLite.to(_menu_overlay, .3, {autoAlpha: 1,onStart: function() {_menu_overlay.css('display', 'block');}});
            TweenLite.fromTo(_menu_container, .3, {x: '0%'}, {x: '-100%',onStart: function() {_menu_container.css('display', 'block');}});

        }

    });

    // close menu
    jQuery('#small_menu_overlay').on('click',function(){

        screen_nav_close();

    });

    function screen_nav_close(){

        TweenMax.to('.small_menu_btn_line', .3, {backgroundColor: '#222'});
        TweenMax.to(_button_line_01, .3, {y: 0,x: 0,rotation: 0,ease: Quad.easeInOut});
        TweenMax.to(_button_line_02, .3, {delay: .2,width: '100%',ease: Quad.easeInOut});
        TweenMax.to(_button_line_03, .3, {y: 0,x: 0,rotation: 0,ease: Quad.easeInOut});

        TweenLite.to(_menu_overlay, .5, {autoAlpha: 0,onComplete: function() {_menu_overlay.css('display', 'none');}});
        TweenLite.to(_menu_container, .5, {
            x: '100%',
            onComplete: function() {
                _body.removeClass('open_menu');
                _menu_container.css('display', 'none');

                jQuery('.small_screen_menu > li > ul').stop().slideUp();

                is_open = false;
            }
        });

    }

}



/**
 * small screen 2depth menu
 *
 * @version 1.0.0
 * @since 2018-02-03
 * @author STUDIO-JT (KMS)
 * @requires TweenMax.min.js
 */
function small_screen_nav_toggle(){

    // menu top level link
	jQuery('.small_screen_menu').on('click', 'li.menu_item_has_children > a', function(e){

        e.preventDefault();

        var _li = jQuery(this).closest('li');

        if(_li.hasClass('open')) { // 열려있는 menu 클릭시 닫기

            _li.removeClass('open').find('> ul').stop().slideUp();

        } else {

            jQuery('.small_screen_menu > li').removeClass('open').find('> ul').stop().slideUp();
            _li.addClass('open').find('> ul').stop().slideDown();

        }

	});

}



// 모바일 환경에서 메뉴hover 대응
function screen_nav_helper(){

    if(!jQuery('html').hasClass('mobile')) { return; }

    jQuery('#menu > li > a').on('click', function(e){
        if(jQuery(this).closest('li').hasClass('menu_item_has_children')){
            e.preventDefault();
        }
    });

}



/**
 * GNB menu ally setting
 *
 * @version 1.0.0
 * @since 2018-12-19
 * @author STUDIO-JT (sumi)
 */
function screen_nav_a11y() {

    jQuery('#menu > li').on('focusin', function(){
		jQuery(this).addClass('focusin');
	}).on('focusout', function(){
		jQuery(this).removeClass('focusin');
	});

}



/**
 * fixed scroll top button, animate scroll top
 *
 * @version 1.0.0
 * @since 2018-02-03
 * @author STUDIO-JT (KMS)
 */
function scroll_top(){

    var _window = jQuery(window);
    var _document = jQuery(document);
    var _footer = jQuery('#footer');
    var _scroll_btn = jQuery('#go_top');

    _scroll_btn.on({
        'click': function(){

            if(jQuery('.fullpage').length > 0){
                $.fn.fullpage.moveTo(1);
            } else {
                jQuery("html, body").stop().animate({
                    scrollTop: 0
                }, 600);
            }

            return false;

        }
    });

    _window.on('scroll', function() {
        if (_window.scrollTop() < _document.height() - _window.height() - _footer.outerHeight() + 15) {
            _scroll_btn.addClass('js_go_top_fix');
        } else {
            _scroll_btn.removeClass('js_go_top_fix');
        }

        if (_window.scrollTop() < _window.height()) {
            _scroll_btn.addClass('js_go_top_hide');
        } else {
            _scroll_btn.removeClass('js_go_top_hide');
        }
    });

}



/**
 * animate scroll down
 *
 * @version 1.0.0
 * @since 2018-02-03
 * @author STUDIO-JT (KMS)
 */
function scroll_down(){

    var _el = jQuery('.scroll_down');

    if( _el.length > 0 ){
        // motion
        var tongtong_tl = TweenMax.to(_el, .4, { y:-18, repeat:-1, yoyo:true, paused:true });
        tongtong_tl.play();

        _el.on({
            'mouseenter': function(){
                var currentTime = tongtong_tl.time();
                tongtong_tl.reverse(currentTime);
            },
            'mouseleave': function(){
                tongtong_tl.play();
            }
        });

        // click
        _el.on('click',function(){

            if(jQuery('.fullpage').length > 0){
                $.fn.fullpage.moveSectionDown();
            } else {
                var target = jQuery(this).attr('href');
                var target_top = jQuery(target).offset().top;
                var header_height = jQuery('#header').height();

                jQuery('html,body').animate({
                    scrollTop : target_top - header_height
                }, 600);
            }

            return false;

        });
    }

}



/**
 * SNS 공유 팝업창을 생성합니다.
 *
 * @version 1.0.0
 * @since 2018-02-03
 * @author STUDIO-JT (Jun)
 */
function sns_popup_init(){

    // SNS POPUP
    jQuery('.jt_share_sns').each(function(){

        var element = this;
        var _element = jQuery(element);

        _element.on('click', function(e){

            e.preventDefault();

            //if( jQuery(this).hasClass('jt_share_kakaotalk') || jQuery(this).hasClass('jt_share_url') ) { return; }
            if( jQuery(this).hasClass('jt_share_url') ) { return; }

            // OPTIONS
            var options = {
                href        : this.href,    // 주소
                title       : '',           // 타이틀
                width       : '600',        // { number } 열리는 창의 가로 크기
                height      : '600',        // { number } 열리는 창의 세로 크기
                top         : '0',          // { number } 열리는 창의 좌표 위쪽
                left        : '0',          // { number } 열리는 창의 좌표 왼쪽
                status      : 'no',         // { yes | no | 1 | 0 } 상태 표시바 보이거나 숨기기
                fullscreen  : 'no',         // { yes | no | 1 | 0 } 전체 창 (기본값은 no)
                channelmode : 'no',         // { yes | no | 1 | 0 } 채널모드 F11 키 기능이랑 같음
                location    : 'no',         // { yes | no | 1 | 0 } 주소창 (기본값은 yes)
                menubar     : 'no',         // { yes | no | 1 | 0 } 메뉴바 (기본값은 yes)
                toolbar     : 'no',         // { yes | no | 1 | 0 } 툴바 (기본값은 yes)
                resizable   : 'yes',        // { yes | no | 1 | 0 } 창 (기본값은 yes)
                scrollbars  : 'yes'         // { yes | no | 1 | 0 } 창 스크롤바 (기본값은 yes)
            };

            // ALIGN CENTER
            var align_center = {
                top : Math.round((jQuery(window).height() / 2) - (options.height / 2)),
                left : Math.round((jQuery(window).width() / 2) - (options.width / 2))
            };

            // WINDOW OPEN
            window.open(''+ options.href +'',''+ options.title +'','width='+ options.width +',height='+ options.height +',top='+ align_center.top +',left='+ align_center.left +',status='+ options.status +',fullscreen='+ options.fullscreen +', channelmode='+ options.channelmode+', location='+ options.location+', menubar='+ options.menubar +', toolbar='+ options.toolbar +', resizable='+ options.resizable +', scrollbars='+ options.scrollbars +'');

        });

    });

}



// clipboard
function share_clipboard(){

    var _clipboard_target = $('.jt_share_url');

    _clipboard_target.each(function(){

        if(typeof Clipboard != "undefined"){
            var clipboard = new Clipboard(jQuery(this)[0]);
            var _clipboard_tooltip = jQuery.find('.jt_share_clipboard_tooltip');

            jQuery(this).on('click', function(e){

                e.preventDefault();

                var that = this;
                var _el = jQuery(that);
                var clipboard_text = _el.data('clipboard-text');

                clipboard.on('success', function(e) {

                    e.clearSelection();
                    if(!jQuery('html').hasClass('mobile')){
                        TweenMax.fromTo(_clipboard_tooltip, 0.2, {autoAlpha: 0,height: 0}, {autoAlpha: 1,height: 'auto',onComplete: function(){TweenMax.to(_clipboard_tooltip, 0.2, {autoAlpha: 0,height: 0,delay: 2});}});
                    } else {
                        alert('URL이 복사되었습니다.');
                    }

                });

                clipboard.on('error', function(e) {
                    prompt("복사하여 붙여 넣으려면 Ctrl + C와 Ctrl + V를 사용하십시오.", this.href);
                });

            });

        }else{

            prompt("복사하여 붙여 넣으려면 Ctrl + C와 Ctrl + V를 사용하십시오.", this.href);

        }

    }); // end each

}



/**
 * icheck plugin init 함수
 * checkbox와 radio 커스텀 스타일을 설정합니다.
 * 각 사이트별 맞춤 skin css 파일을 연동합니다. (ex. minimal.css)
 *
 * @version 1.0.0
 * @since 2016-12-14
 * @author STUDIO-JT (KMS)
 * @see {@link http://icheck.fronteed.com|icheck API}
 * @requires icheck.js
 * @requires /icheck/*.css
 *
 * @example
 * // markup sample
 * <label class="jt_icheck_label"><input class="jt_icheck" type="checkbox" /> <span>체크박스</span></label>
 * <label class="jt_icheck_label"><input class="jt_icheck" type="radio" /> <span>라디오</span></label>
 */
function icheck_init() {

    jQuery('.jt_icheck').iCheck({
        checkboxClass: 'icheckbox_minimal',
        radioClass: 'iradio_minimal'
    });

}



/**
 * selectbox custom plugin init 함수
 * selectbox 커스텀 스타일을 설정합니다.
 *
 * @version 1.0.0
 * @since 2016-12-14
 * @author STUDIO-JT (KMS)
 * @see {@link http://selectric.js.org/|selectric API}
 * @requires jquery.selectric.js
 * @requires jt-strap.css
 * @requires jt-strap-rwd.css
 *
 * @example
 * markup sample
 * <select class="jt_selectric">
 *     <option value="op1">OP1</option>
 *     <option value="op2">OP2</option>
 *     <option value="op3">OP3</option>
 * </select>
 */
function selectric_init() {

    jQuery('.jt_selectric').selectric({
        disableOnMobile: true
    });

}



/**
 * nicescroll plugin init 함수
 * 커스텀 스크롤바를 설정합니다.
 *
 * @version 1.0.0
 * @since 2016-12-14
 * @author STUDIO-JT (KMS)
 * @see {@link https://github.com/inuyaksa/jquery.nicescroll|nicescroll API}
 * @requires jquery.nicescroll.js
 * @requires jt-strap.css
 * @requires jt-strap-rwd.css
 *
 * @example
 * // markup sample
 * <div class="nicescroll_area_outer">
 *     <div class="nicescroll_area"></div>
 * </div>
 */
function nicescroll_init() {

    jQuery('.nicescroll_area').niceScroll({
        autohidemode       : false,
        background         : "#f1f1f1",
        cursorborder       : "0px solid #888",
        cursorcolor        : "#888",
        cursorwidth        : 5,
        cursorborderradius : "25px",
        railoffset		   : {top: 0, left: 0}
    });

}



/**
 * input file custom plugin init 함수
 * file타입 input 스타일을 설정합니다.
 *
 * @version 1.0.0
 * @since 2016-12-14
 * @author STUDIO-JT (KMS)
 * @requires jquery.customFile_jt-custom.js
 * @requires jt-strap.css
 * @requires jt-strap-rwd.css
 *
 * @example
 * markup sample
 * <input class="jt_custom_file" type="file" />
 */
function custom_input_file(){

    jQuery('.jt_custom_file').customFile({
        input_class: 'jt_form_field', // input text에 추가할 class
        input_placeholder: '선택된 파일 없음', // input text placeholder
        // btn_class: '', // 파일찾기 버튼에 추가할 class
        btn_text: '찾아보기', // 파일찾기 버튼에 들어갈 value
        // remove_btn_class: '', // 삭제 버튼에 추가할 class
        remove_btn_text: '삭제' // 삭제 버튼에 들어갈 value
    });

}



/**
 * 게시판 리스트 fullclick 효과를 추가합니다
 *
 * @version 1.0.0
 * @since 2018-02-03
 * @author STUDIO-JT (KMS)
 */
function jt_board_list_fullclick() {

    jQuery('.js_full_click').on('click', function(e){

        e.stopPropagation();

		var target = e.target;

		var url = jQuery(this).find('a:first').attr('href');
		if(url != undefined){
            window.location.href = url;
		}

    });

}



/**
 * element height matching function
 * v1.0 notice: inner 아이템이 아닌 리스트 outer wrap에 셋팅해야 합니다.
 *
 * @version 1.0.0
 * @since 2018-02-03
 * @author STUDIO-JT (KMS)
 * @see {@link https://codepen.io/micahgodbolt/pen/FgqLc|Reference}
 */
function match_height(){

    // element
    var _item = jQuery('.js_match_height > li, .series_item');

    // init
    jt_equal_height();

    // resize
    jQuery(window).resize(jt_equal_height);

    // Add closures to keep the _item alive
    function jt_equal_height(){

        var currentTallest = 0,
            currentRowStart = 0,
            rowDivs = new Array(),
            _el,
            topPosition = 0;

        _item.each(function() {
            _el = jQuery(this);
            _el.height('auto');
            topPostion = _el.position().top;

            if (currentRowStart != topPostion) {
                for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
                    rowDivs[currentDiv].height(currentTallest);
                }
                rowDivs.length = 0;
                currentRowStart = topPostion;
                currentTallest = _el.height();
                rowDivs.push(_el);
            } else {
                rowDivs.push(_el);
                currentTallest = (currentTallest < _el.height()) ? (_el.height()) : (currentTallest);
            }

            for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
                rowDivs[currentDiv].height(currentTallest);
            }
        });

    } // jt_equal_height()

}



/**
 * 접근성 & UX 개선 (키보드 사용할때만 포커스 나오게)
 *
 * @version 1.0.0
 * @since 2018-07-16
 * @author STUDIO-JT (Nico)
 */
function focus_on_tab_only(){

    var _body = jQuery('body');

    _body.on('mousedown', function(){

        _body.addClass('use_mouse');

    }).on('keydown', function() {

        _body.removeClass('use_mouse');

    });

}



// body에 페이지 고유 class 추가
function page_body_class(){

    var _body = jQuery('body');
    var class_list = jQuery('#main_container_inner').attr('class');

    if(typeof class_list != 'undefined'){
        var class_arr = class_list.split(/\s+/);

        jQuery.each(class_arr, function(index, val){
            _body.addClass('body_' + val);
        });
    }

}



// gnb hover motion
function menu_hover_effect(){

    var _menu_nav = jQuery('.main_menu_container');
    var _menu = jQuery('#menu');
    var _current = null;
    var flag = true;

    /* add menu line markup via javascript */
    _menu_nav.append('<div id="menu_line"></div>');
    var _menu_line = jQuery('#menu_line');

    /* check current menu */
    if(_menu.find('> li.active').length > 0) {
        _current = _menu.find('> li.active');
    } else {
        // not current menu
        flag = false;
    }

    /* menu line setting */
    gnb_hover_effect_pos();

    jQuery(window).on({
        resize : function(){
            gnb_hover_effect_pos();
        }
    });

    /* hover effect */
    _menu.find('> li').hover(function(){
        if(!JT.is_screen(1023)){
            var offset_y = jQuery(this).position().left + (jQuery(this).width()/2);

            if(flag){
                _menu_line.stop().animate({
                    left: offset_y
                });
            } else {
                _menu_line.stop().animate({
                    opacity: 1,
                    left: offset_y
                });
            }
        }
    }, function() {
        if(!JT.is_screen(1023)){
            if(flag){
                _menu_line.stop().animate({
                    left: _menu_line.data("orig_y")
                });
            } else {
                _menu_line.stop().animate({
                    opacity: 0
                });
            }
        }
    });

    /* line position setting */
    function gnb_hover_effect_pos(){
        if(flag){
            var dump_y = _current.position().left + (_current.width()/2);
            _menu_line.css("left", dump_y)
                      .data("orig_y", dump_y);
        } else {
            _menu_line.css("opacity", 0)
                      .css("left", 0);
        }
    }

}



// select change family site
function family_select_change(){

    jQuery('.footer_family_site select').on('change', function(){
        var url = jQuery(this).val();
        if(url != '#'){
            var open_new_window = window.open("about:blank");
            open_new_window.location.href = url;

            if(jQuery('html').hasClass('desktop')){
                jQuery('.footer_family_site select').prop('selectedIndex', 0).selectric('refresh');
            }
        }
    });

}



// main fullpage init
function main_fullpage_init(){

    if( jQuery('#main_fullpage').length <= 0 ) return;

    var save_index = 0;

    jQuery('#main_fullpage').fullpage({
        controlArrows: false,
        verticalCentered: false,
        scrollingSpeed: 1000,
        navigation: true,
		navigationPosition: 'right',
		navigationTooltips: ['여기 주목!', '아이돌봄서비스 이용', '아이돌보미 활동', '우리i봄은?'],
        responsiveWidth: 1024,
        afterRender: function(){
            // add navigation tooltip innter wrap
            jQuery('#fp-nav .fp-tooltip').each(function(){
                var words = jQuery(this).text();
                jQuery(this).empty();
                jQuery(this).append('<span>'+ words +'</span>');
            });

            // illust setting
            var _first_section = jQuery('.fp-section:eq(0)');
            var _first_primary_circle = _first_section.find('.home_illust_primary_point');
            var _first_secondary_circle = _first_section.find('.home_illust_secondary_point');

            TweenMax.set('.home_illust_primary', {width: parseInt(_first_primary_circle.css('width')),height: parseInt(_first_primary_circle.css('height')),x: parseInt(_first_primary_circle.offset().left),y: parseInt(_first_primary_circle.position().top) + parseInt(_first_section.css('padding-top'))});
            TweenMax.set('.home_illust_secondary', {width: parseInt(_first_secondary_circle.css('width')),height: parseInt(_first_secondary_circle.css('height')),x: parseInt(_first_secondary_circle.offset().left),y: parseInt(_first_secondary_circle.position().top) + parseInt(_first_section.css('padding-top'))});

            TweenMax.to('.home_illust_primary .home_illust_item_inner', 3, {x: 22,repeat: -1,yoyo: true,ease: Sine.easeInOut,force3D: true});
            TweenMax.to('.home_illust_primary .home_illust_item_inner', 2.5, {y: -12,repeat: -1,yoyo: true,ease: Sine.easeInOut,force3D: true});
            TweenMax.to('.home_illust_secondary .home_illust_item_inner', 2.5, {x: 15,repeat: -1,yoyo: true,ease: Sine.easeInOut,force3D: true});
            TweenMax.to('.home_illust_secondary .home_illust_item_inner', 3, {y: -15,repeat: -1,yoyo: true,ease: Sine.easeInOut,force3D: true});

            // first script loading debugging
            jQuery('.home_container').css('opacity', 1);
        },
        afterResize: function(){
            main_circle_motion(save_index);
        },
        onLeave: function(index, nextIndex, direction){
            // current index
            save_index = nextIndex - 1;

            // circle motion
            if(save_index >= 2 && save_index <= 4 && !JT.is_screen(1023)) {
                if(direction == 'up' && save_index == 4) { return true; }

                var _circle = jQuery('.fp-section:eq('+save_index+')').find('.main_section_circle_mask > circle');

                if(!jQuery('html').hasClass('edge')){
                    TweenMax.set(_circle, {scale: 1.3, transformOrigin: '50% 50%'});
                    TweenMax.to(_circle, 1.5, {scale: 1,transformOrigin: '50% 50%',rotation: 0.01,ease: Elastic.easeOut.config(2, 0.5)});
                } else {
                    jQuery('.main_section_circle_mask > circle').removeClass('current')
                    _circle.addClass('current');
                }
            }

            // illust motion
            main_circle_motion(save_index);
        }
    });

}

// main illust motion
function main_circle_motion(index){

    var _curr_section = jQuery('.fp-section:eq('+index+')');
    var _curr_illust_primary = _curr_section.find('.home_illust_primary_point');
    var _curr_illust_secondary = _curr_section.find('.home_illust_secondary_point');

    if(_curr_illust_primary.length > 0 || _curr_illust_secondary.length > 0){

        if(jQuery('html').hasClass('edge')){
            TweenMax.to('.home_illust_primary', 1, {
                x: parseInt(_curr_illust_primary.offset().left),
                y: parseInt(_curr_illust_primary.position().top) + parseInt(_curr_section.css('padding-top')),
                ease: Power2.easeOut,
                onStart: function(){
                    jQuery('.home_illust_primary').css({
                        'width' : parseInt(_curr_illust_primary.css('width')),
                        'height' : parseInt(_curr_illust_primary.css('height'))
                    })
                }
            });
            TweenMax.to('.home_illust_secondary', 1, {
                x: parseInt(_curr_illust_secondary.offset().left),
                y: parseInt(_curr_illust_secondary.position().top) + parseInt(_curr_section.css('padding-top')),
                ease: Power2.easeOut,
                onStart: function(){
                    jQuery('.home_illust_secondary').css({
                        'width' : parseInt(_curr_illust_secondary.css('width')),
                        'height' : parseInt(_curr_illust_secondary.css('height'))
                    })
                }
            });
        } else {
            TweenMax.to('.home_illust_primary', 1, {width: parseInt(_curr_illust_primary.css('width')),height: parseInt(_curr_illust_primary.css('height')),x: parseInt(_curr_illust_primary.offset().left),y: parseInt(_curr_illust_primary.position().top) + parseInt(_curr_section.css('padding-top')),ease: Power2.easeOut});
            TweenMax.to('.home_illust_secondary', 1, {width: parseInt(_curr_illust_secondary.css('width')),height: parseInt(_curr_illust_secondary.css('height')),x: parseInt(_curr_illust_secondary.offset().left),y: parseInt(_curr_illust_secondary.position().top) + parseInt(_curr_section.css('padding-top')),ease: Power2.easeOut});
        }

    }

}



// main visual slider
function main_visual_slider(){

    var _slider = jQuery('.main_visual_slider');
    var _progress = jQuery('.main_visual .cycle_progress');
    var _progress_time = null;
    var _circle_front = jQuery('.main_visual_circle_front_img');
    var _circle_back = jQuery('.main_visual_circle_back_img');
    var _circle_path = jQuery('#main_visual_clip_path circle');
    var flag_next = false;

    if( !_slider.length ){ return; }

    // init
	jQuery(document).on('cycle-initialized', _slider, function( event, opts ){
        if(jQuery(event.target).hasClass('main_visual_slider')) {
            // single slider check
            if(opts.slideCount == 1){
                jQuery('.main_visual .cycle_control').remove();
				jQuery('.main_visual_state').remove();
			} else {
                // total count
                jQuery('.main_visual .cycle_caption').text('1/'+opts.slideCount);
                jQuery('.main_visual .cycle_caption').addClass('loaded');
            }

            // circle image set
            _circle_front.attr('xlink:href', jQuery('.main_visual_item:eq(0)').data('image'));
            _circle_back.attr('xlink:href', jQuery('.main_visual_item:eq(1)').data('image'));

            // progress
            main_visual_action(opts.timeout);
        }
    });

	// Run cycle
	_slider.cycle({
        slides          : '> div',
        paused          : true,
        timeout         : 4000,
        speed           : 800,
        swipe           : true,
		log			    : false,
		prev            : '.main_visual .cycle_prev',
		next            : '.main_visual .cycle_next',
        caption         : '.main_visual .cycle_caption',
        captionTemplate : '<span class="cycle_caption_caption_text current">{{slideNum}}</span>/<span class="cycle_caption_caption_text total">{{slideCount}}</span>',
        pager           : '.main_visual .cycle_pager',
        pagerTemplate   : '<li><button>{{slideNum}}</button></li>'
	});

    // before change
    _slider.on( 'cycle-before', function(event, opts, currEl, nextEl, fwdFlag) {

        var save_img = jQuery(nextEl).data('image');
        _circle_back.attr('xlink:href', save_img);

        var circle_tl = new TimelineMax();
        if(!JT.is_screen(1023) && !jQuery('html').hasClass('edge')){
            circle_tl.to(_circle_path, .3, {scale: 1.15, transformOrigin: '50% 50%', ease: Power0.easeNone});
            circle_tl.to(_circle_path, 2, {scale: 1, transformOrigin: '50% 50%', ease: Elastic.easeOut.config(2, 0.5)});
        }

        TweenMax.to(_circle_front, .4, {
            autoAlpha: 0,
            ease: Power0.easeNone,
            onComplete: function(){
                _circle_front.attr('xlink:href', save_img);
                setTimeout(function(){
                    TweenMax.set(_circle_front, {autoAlpha: 1});
                }, 50);
            }
        });

        main_visual_action(opts.timeout+opts.speed);

    });

	// Play, Pause
    jQuery('.main_visual_state .cycle_state').on('click', function(){
        if(jQuery(this).hasClass('play')){
            jQuery(this).removeClass('play').addClass('pause');
            _progress_time.pause();
            jQuery(this).find('.icon_play').focus();
        } else {
            jQuery(this).removeClass('pause').addClass('play');
            _progress_time.play();
            if(flag_next){ _slider.cycle('next'); }
			jQuery(this).find('.icon_pause').focus();
        }
    });

    // main visual slider helper
    function main_visual_action(speed){

        TweenMax.killTweensOf(_progress);

    	_progress_time = TweenMax.fromTo(_progress, parseInt(speed/1000), {
            width: '0%'
        }, {
            width: '100%',
            ease: Power0.easeNone,
            onStart: function(){
                flag_next = false;
            },
            onComplete: function(){
                flag_next = true;

                // swipe
                if(jQuery('.main_visual_state .cycle_state').hasClass('play')){
                    _slider.cycle('next');
                }
            }
        });

    }

}



// small screen main visual controller position
function main_visual_control_pos(init) {

    var _button = jQuery('.main_visual .cycle_control');
    var _dots = jQuery('.main_visual_state');
    var _container = jQuery('.main_visual_item:first-child .main_visual_image');

    if(!_button.length || !_dots.length) return;

    if(JT.is_screen(540)){
        _button.css('top', (_container.outerHeight()/2 - _button.outerHeight()/2));
        _dots.css('top', (_container.outerHeight() + 30));
    } else {
        _button.removeAttr('style');
        _dots.removeAttr('style');
    }

    if(init){
        _button.addClass('loaded');
        _dots.addClass('loaded');
    }

}



// bubble point button
function bubble_btn_setting(){

    // add markup
    var button_svg = '<svg viewBox="0 0 181.496 60.517" preserveAspectRatio="none">' +
                        '<path d="M0,30.283L0,30.283C0,43,9.676,56.822,28.243,56.719c18.91-0.104,38.538,0,63.41,0 s37.483,0,60.008,0c21.521,0,29.835-13.72,29.835-26.436l0,0l0,0c0-12.716-7.692-26.4-29.213-26.459c-21.677-0.06-36.663,0-61.535,0 s-44.353,0-63.389,0C8.792,3.824,0,17.567,0,30.283L0,30.283z"></path>' +
                     '</svg>';
    var button_svg_large = '<svg viewBox="0 0 375 67.436" preserveAspectRatio="none">' +
                               '<path d="M375,57.312c0,2.547-2.219,4.771-5.127,4.887c-19.831,0.788-82.306,0-185.231,0 c-92.054,0-159.441,0.735-179.44,0C2.262,62.091,0,59.811,0,57.239V34.603V10.148C0,7.576,2.261,5.33,5.201,5.257 c20.252-0.501,90.195,0.265,182.299,0c104.781-0.301,165.619-0.654,182.373,0C372.781,5.37,375,7.529,375,10.075v23.618V57.312z"></path>' +
                            '</svg>';
    var button_svg_medium = '<svg viewBox="-28.817 12.06 208.129 69.396" preserveAspectRatio="none">' +
                                '<path d="M-28.752,46.786L-28.752,46.786c0,14.574,11.089,30.415,32.367,30.297c21.671-0.119,44.166,0,72.669,0 c28.505,0,42.958,0,68.772,0c24.662,0,34.191-15.724,34.191-30.297l0,0l0,0c0-14.572-8.814-30.255-33.479-30.322 c-24.844-0.068-42.018,0-70.521,0s-50.83,0-72.646,0C-18.677,16.464-28.752,32.214-28.752,46.786L-28.752,46.786z"></path>' +
                            '</svg>';

    jQuery('.jt_btn_icon').each(function(){

        var _this = jQuery(this);

        if(_this.hasClass('jt_large')){
            _this.attr('data-morph-active', 'M375,57.336c0,2.547-2.225,4.671-5.127,4.887c-17.318,1.291-78.376,5.213-181.302,5.213 c-92.054,0-163.949-4.066-183.37-5.281C2.266,61.971,0,59.835,0,57.264V34.627V10.173c0-2.572,2.266-4.708,5.201-4.892 C24.623,4.066,96.518,0,188.571,0c102.926,0,163.983,3.922,181.302,5.213C372.775,5.429,375,7.554,375,10.1v23.618V57.336z');
            _this.attr('data-morph-reset', 'M375,57.312c0,2.547-2.219,4.771-5.127,4.887c-19.831,0.788-82.306,0-185.231,0 c-92.054,0-159.441,0.735-179.44,0C2.262,62.091,0,59.811,0,57.239V34.603V10.148C0,7.576,2.261,5.33,5.201,5.257 c20.252-0.501,90.195,0.265,182.299,0c104.781-0.301,165.619-0.654,182.373,0C372.781,5.37,375,7.529,375,10.075v23.618V57.312z');
            _this.append(button_svg_large);
        }else if(_this.hasClass('jt_medium')){
            _this.attr('data-morph-active', 'M-28.817,46.758L-28.817,46.758c0,16.691,11.96,29.113,33.088,32.137c21.126,3.023,42.488,2.533,71.009,2.533 c28.521,0,42.857-0.524,67.482-2.391c24.625-1.864,36.551-15.588,36.551-32.279l0,0l0,0c0-16.69-11.926-30.413-36.551-32.277 c-24.627-1.865-38.961-2.391-67.482-2.391c-28.521,0-49.883-0.491-71.009,2.532C-16.857,17.645-28.817,30.068-28.817,46.758 L-28.817,46.758z');
            _this.attr('data-morph-reset', 'M-28.752,46.786L-28.752,46.786c0,14.574,11.089,30.415,32.367,30.297c21.671-0.119,44.166,0,72.669,0 c28.505,0,42.958,0,68.772,0c24.662,0,34.191-15.724,34.191-30.297l0,0l0,0c0-14.572-8.814-30.255-33.479-30.322 c-24.844-0.068-42.018,0-70.521,0s-50.83,0-72.646,0C-18.677,16.464-28.752,32.214-28.752,46.786L-28.752,46.786z');
            _this.append(button_svg_medium);
        }else{
            _this.attr('data-morph-active', 'M0,30.258L0,30.258c0,14.555,10.429,25.387,28.853,28.024 c18.423,2.637,37.052,2.209,61.923,2.209s37.372-0.458,58.845-2.085c21.474-1.626,31.875-13.593,31.875-28.148l0,0l0,0 c0-14.555-10.4-26.521-31.875-28.147c-21.474-1.626-33.974-2.085-58.845-2.085s-43.5-0.428-61.923,2.208 C10.429,4.871,0,15.704,0,30.258L0,30.258z');
            _this.attr('data-morph-reset', 'M0,30.283L0,30.283C0,43,9.676,56.822,28.243,56.719c18.91-0.104,38.538,0,63.41,0 s37.483,0,60.008,0c21.521,0,29.835-13.72,29.835-26.436l0,0l0,0c0-12.716-7.692-26.4-29.213-26.459c-21.677-0.06-36.663,0-61.535,0 s-44.353,0-63.389,0C8.792,3.824,0,17.567,0,30.283L0,30.283z');
            _this.append(button_svg);
        }

    });

    // hover
    if(jQuery('html').hasClass('desktop')){
        jQuery('.jt_btn_icon').mouseenter(function(){

            var _this = jQuery(this);
            var flag = true;

            if(flag){
                flag = false;

                var btn_tl = new TimelineMax({repeat: 0, onComplete: function(){flag = true;}});

                btn_tl.to(_this.find('path'), .12, {morphSVG: _this.data('morph-active'), ease: Back.easeOut.config(1.2)})
                      .to(_this.find('path'), 1, {morphSVG: _this.data('morph-reset'), ease: Elastic.easeOut.config(1.2, 0.3)});
            }

        });
    }

}



// 회원가입 약관동의 체크박스
function join_agree_check(){

	var check_flag = false;
	var _agree_all = jQuery('#join_agree_all');
	var _agree_checks = jQuery('.join_agree_terms input:checkbox');

    // 전체동의
    _agree_all.on('ifChecked', function(e){
        _agree_checks.iCheck('check');
        check_flag = false;
    });

    _agree_all.on('ifUnchecked', function(e){
        if (!check_flag) {
            _agree_checks.iCheck('uncheck');
        }

        check_flag = false;
    });

    // 개별동의
    _agree_checks.on('ifUnchecked', function(e) {
		check_flag = true;
		_agree_all.iCheck('uncheck');
	});

    _agree_checks.on('ifChecked', function(e){
        var check_count = 0;

        _agree_checks.each(function () {
            if(jQuery(this).prop('checked') === true){
                check_count++;
            }
        });

        if (_agree_checks.length == check_count) {
            _agree_all.iCheck('check');
        }
    });

}



// selectric scroll debugging
function join_birth_check(){

    if(!!jQuery('.jt_form_data_birth').length) {
        JT.smoothscroll.destroy();
    }

}



// 일러스트 모션
function illust_floating_motion(){

    // 로그인, 회원가입
    TweenMax.to('.member_character_kkumi', 3, {x: 22,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.member_character_kkumi', 2.5, {y: -12,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.member_character_dani', 2.5, {x: 15,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.member_character_dani', 3, {y: -15,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});

	// 404 페이지
    TweenMax.to('.error_404_bg_blue', 3, {x: 22,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.error_404_bg_blue', 2.5, {y: -12,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});

    // 단꿈아이는?
    TweenMax.to('.company_illust_04', 3, {x: 22,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.company_illust_04', 2.5, {y: -12,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.company_illust_05', 2.5, {x: 15,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.company_illust_05', 3, {y: -15,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});

    TweenMax.to('.company_illust_01 img', 4, {x: 15,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.company_illust_01 img', 3.5, {y: -8,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.company_illust_satellite_01 > span', 3, {x: 15,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.company_illust_satellite_01 > span', 2.5, {y: -8,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});

    TweenMax.to('.company_illust_02 img', 4, {x: -15,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.company_illust_02 img', 3.5, {y: 8,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.company_illust_satellite_02 > span', 3, {x: -15,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.company_illust_satellite_02 > span', 2.5, {y: 8,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});

    TweenMax.to('.company_illust_03 img', 3, {x: -10,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.company_illust_03 img', 2.5, {y: 5,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.company_illust_satellite_03 > span', 2, {x: -10,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.company_illust_satellite_03 > span', 1.5, {y: 5,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});

/*	// 설쌤 소개
	TweenMax.to('.teacher_info_seol_illust', 2, {x: 15,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.teacher_info_seol_illust', 2.5, {y: -10,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
	TweenMax.to('.teacher_illust_01', 3, {x: 20,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    TweenMax.to('.teacher_illust_01', 2, {y: 15,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});*/

}



// mail domain select callback
function mail_select_change(){

    jQuery('.jt_mail_selectric').on('change', function(){
        var domain = jQuery(this).val();
        var _input = jQuery(this).closest('.jt_form_data_mail').find('.jt_mail_select_target');

        if ( _input.length > 0 ) {
            if ( domain == '직접입력' ) {
                _input.val('').focus();
            } else {
                _input.val(domain);
            }
        }
    });

}



// 캐릭터 소개 fullpage setting
function character_fullpage_init(){

    if( jQuery('#character_fullpage').length <= 0 ) return;

    jQuery('#character_fullpage').fullpage({
        controlArrows: false,
        verticalCentered: false,
        scrollingSpeed: 1000,
        navigation: false,
        responsiveWidth: 1024,
        afterRender: function(){
            // first script loading debugging
            jQuery('#character_fullpage').css('opacity', 1);
        }
    });

}



// 캐릭터 소개 영상처리
function character_animation_video(){

    var _this = jQuery('.character_animation_video');

    if(!_this.length) return;

    if(jQuery('html').hasClass('ie9') || jQuery('html').hasClass('ie8')) {

        _this.find('iframe').remove();
        _this.find('.character_animation_poster').show();

    }

}



// 테마곡 play, pause change
function thema_audio_play(){

    var play_flag = false;
    var tl = new TimelineLite();

    jQuery('.thema_list').on('click', '.thema_list_state', function(){

        var _this = jQuery(this);
        var _item = _this.closest('.thema_list_item');
        var _line = _item.find('.thema_list_volume_line');

        if(_this.hasClass('play')){

            tl.clear();
            TweenMax.staggerTo(_line, .4, {y:0});
            _line.removeClass('active');

            _this.removeClass('play').addClass('pause');
            _this.find('.icon_play').focus();

            play_flag = false;
            _this.find('audio').get(0).pause();

        } else {

            if(play_flag){
                tl.clear();

                var _before_item = jQuery('.thema_list').find('.thema_list_state.play');
                var _before_item_line = _before_item.closest('.thema_list_item').find('.thema_list_volume_line');
                TweenMax.staggerTo(_before_item_line, .4, {y:0});
                _before_item_line.removeClass('active');
                _before_item.removeClass('play').addClass('pause').find('audio').get(0).pause();
            }

            play_flag = true;
            _this.find('audio').get(0).play();

            tl.staggerTo(_line, .4, {y: -6,repeat: -1,yoyo: true,cycle: {delay: [0, 0.35, 0.2, 0.4]},ease: Power0.easeNone});
            tl.play();
            _line.addClass('active');

            _this.removeClass('pause').addClass('play');
            _this.find('.icon_pause').focus();

        }
    });

}



// 테마곡 가사보기 팝업
function thema_lyrics_popup(){

    var _body = jQuery('body');

    jQuery('.thema_list').magnificPopup({
        delegate: '.thema_list_lyrics',
        type: 'ajax',
        mainClass: 'mfp-fade',
        autoFocusLast: false,
        removalDelay: 100,
        ajax: {
            settings: null,
            cursor: 'mfp-ajax-cur',
            tError: '약관을 불러오는데 실패했습니다.'
        },
        callbacks: {
            beforeOpen: function() {

                JT.smoothscroll.destroy();

				if(!_body.hasClass('lyrics_popup_open')){
					_body.addClass('lyrics_popup_open');
				}

            },
            ajaxContentAdded: function() {

                jQuery(this.content[0]).find('.nicescroll_area').niceScroll({
                    autohidemode       : false,
                    background         : "#f5f5f5",
                    cursorborder       : "0px solid #aaa",
                    cursorcolor        : "#aaa",
                    cursorwidth        : 5,
                    cursorborderradius : "25px",
                    railoffset		   : {top: 0, left: 0}
                });

            },
            close: function(){

				if(_body.hasClass('lyrics_popup_open')){
					_body.removeClass('lyrics_popup_open');
				}

                JT.smoothscroll.init();

            }
        }
    });

}



// single page comment
function single_comment(){

    // 답글 open/close
    /*
     *  jQuery('.comment_list_item_reply_btn').on('click', function(){
     *
     *      var _this = jQuery(this);
     *      var _group = _this.closest('.comment_list_item');
     *      var _reply = _group.find('> .comment_list_item_reply');
     *
     *      _this.toggleClass('open');
     *      _reply.slideToggle();
     *
     *  });
     */

    // 삭제
    /*
     *  jQuery('.comment_wrap').on('click', '.comment_list_item_btn.delete', function(){
     *
     *      JT.alert({
     *          message    : '댓글을 <span>삭제</span>하시겠습니까?',
     *          is_confirm : true,
     *          on_confirm : function(){
     *              JT.alert('삭제가 <span>완료</span>되었습니다.');
     *          }
     *      });
     *
     *  });
     */

    // 신고하기
    jQuery('.comment_wrap').on('click', '.comment_list_item_btn.report', function(){

        var url = jQuery(this).data('url');

        $.magnificPopup.open({
			items: [
				{
					src: url,
			 	    type: 'ajax'
				}
			],
            mainClass: 'mfp-fade comment_report_popup',
            showCloseBtn: false,
            closeOnBgClick: false,
            autoFocusLast: false,
            removalDelay: 100,
            ajax: {
                settings: null,
                cursor: 'mfp-ajax-cur',
                tError: '데이터를 불러오는데 실패했습니다.'
            },
            callbacks: {
                beforeOpen: function() {

                    JT.smoothscroll.destroy();

    				if(!jQuery('body').hasClass('comment_report_popup_open')){
    					jQuery('body').addClass('comment_report_popup_open');
    				}

                },
                ajaxContentAdded: function() {

                    jQuery(this.content[0]).find('.jt_icheck').iCheck({
                        checkboxClass: 'icheckbox_minimal',
                        radioClass: 'iradio_minimal'
                    });

                    // 취소
                    jQuery(this.content[0]).find('.comment_report_cancel').on('click', function(){
                        $.magnificPopup.instance.close();
                    });

                    // 신고
                    /*
                     *  jQuery(this.content[0]).find('.comment_report_ok').on('click', function(){
                     *      $.magnificPopup.instance.close();
                     *      JT.alert('신고 접수가 <span>완료</span>되었습니다.');
                     *  });
                     */

                },
                close: function(){

    				if(jQuery('body').hasClass('comment_report_popup_open')){
    					jQuery('body').removeClass('comment_report_popup_open');
    				}

                    JT.smoothscroll.init();

                }
            }
		},0);

    });

}



// single post 신고하기
function single_report(){
    jQuery('.jt_single_report > button.report').on('click', function(){

        var url = jQuery(this).data('url');

        $.magnificPopup.open({
			items: [
				{
					src: url,
			 	    type: 'ajax'
				}
			],
            mainClass: 'mfp-fade comment_report_popup',
            showCloseBtn: false,
            closeOnBgClick: false,
            autoFocusLast: false,
            removalDelay: 100,
            ajax: {
                settings: null,
                cursor: 'mfp-ajax-cur',
                tError: '데이터를 불러오는데 실패했습니다.'
            },
            callbacks: {
                beforeOpen: function() {

                    JT.smoothscroll.destroy();

    				if(!jQuery('body').hasClass('comment_report_popup_open')){
    					jQuery('body').addClass('comment_report_popup_open');
    				}

                },
                ajaxContentAdded: function() {

                    jQuery(this.content[0]).find('.jt_icheck').iCheck({
                        checkboxClass: 'icheckbox_minimal',
                        radioClass: 'iradio_minimal'
                    });

                    // 취소
                    jQuery(this.content[0]).find('.comment_report_cancel').on('click', function(){
                        $.magnificPopup.instance.close();
                    });

                    // 신고
                    /*
                     *  jQuery(this.content[0]).find('.comment_report_ok').on('click', function(){
                     *      $.magnificPopup.instance.close();
                     *      JT.alert('신고 접수가 <span>완료</span>되었습니다.');
                     *  });
                     */

                },
                close: function(){

    				if(jQuery('body').hasClass('comment_report_popup_open')){
    					jQuery('body').removeClass('comment_report_popup_open');
    				}

                    JT.smoothscroll.init();

                }
            }
		},0);

    });
}



// Youtube custom play
function youtube_play(){

    // load youtube if necessary
	if(jQuery('.jt_video_container').length <= 0) return;

	var tag = document.createElement('script');
	tag.src = "https://www.youtube.com/iframe_api";

	var firstScriptTag = document.getElementsByTagName('script')[0];
	firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

	// if youtube api ready do your stuff
	window.onYouTubeIframeAPIReady = function() {

		// play if click on the poster
		jQuery('.jt_video_container .jt_video_poster').each(function () {

			var _poster = jQuery(this);
			var iframe_id = _poster.closest('.jt_video_container').find('iframe').attr('id');

            new YT.Player(iframe_id, {
                videoId: iframe_id,
                events: {
                    'onReady': function(event){
						_poster.on('click',function(){
							event.target.playVideo();

							_poster.fadeOut(800,function(){
							   _poster.remove();
							});

							return false;
						})
					}
                }
            });

		});

	}

}



// 캐릭터 소개 슬라이드
function character_slideshow(){

	var _slider = jQuery('.character_slider_for');

    if( !_slider.length ){ return; }

    /* ***************************************
     * motion
     * ************************************** */
    var tl_seol = new TimelineLite({paused: true});
	var tl_daisy = new TimelineLite({paused: true});
	var tl_aladin = new TimelineLite({paused: true});
	var tl_genie = new TimelineLite({paused: true});
	var tl_daesung = new TimelineLite({paused: true});
	var tl_kasim = new TimelineLite({paused: true});
	var tl_shuri = new TimelineLite({paused: true});
	var tl_black= new TimelineLite({paused: true});
	var tl_sultan = new TimelineLite({paused: true});

	var _seol = jQuery('.seolssam > figure > img');
	var _daisy = jQuery('.daisy > figure > img');
	var _aladin = jQuery('.aladin > figure > img');
	var _genie = jQuery('.genie > figure > img');
	var _genie_lamp = jQuery('.genie > figure > .genie_lamp');
	var _daesung = jQuery('.daesung > figure > img');
	var _kasim = jQuery('.kasim > figure > img');
	var _shuri = jQuery('.shuri > figure');
	var _shuri_light = jQuery('.shuri > figure > .shuri_light');
	var _black = jQuery('.black > figure ');
	var _sultan = jQuery('.sultan > figure > img');

    // set
	TweenMax.set(_seol, {transformOrigin: 'center bottom', rotation: -3, autoAlpha: 0});
	TweenMax.set(_daisy, {transformOrigin: 'center center', y: 8});
	TweenMax.set(_aladin, {x: -20});
	TweenMax.set(_genie_lamp, {transformOrigin: 'center center', rotation: 10});
	TweenMax.set(_genie, {transformOrigin: '70% 88%', scale: 0.8});
	TweenMax.set(_daesung, {transformOrigin: 'right bottom', y: 0});
	TweenMax.set(_kasim, {transformOrigin: 'center center', scale: 0.85});
	TweenMax.set(_shuri, {transformOrigin: 'center center', y: 6});
	TweenMax.set(_black, {x: -4, y: 0});
	TweenMax.set(_sultan, {x: 10});

	// seolssam motion
	tl_seol.to(_seol, .4, {autoAlpha: 1});
    tl_seol.to(_seol, .5, {rotation: 2, ease: Power1.easeInOut});
	tl_seol.to(_seol, .5, {rotation: -1, ease: Power1.easeInOut});
	tl_seol.to(_seol, .5, {rotation: 2, ease: Power1.easeInOut});
	tl_seol.to(_seol, .5, {rotation: 0, ease: Power1.easeOut});

	// daisy motion
	tl_daisy.to(_daisy, .6, {y: -8, ease: Power1.easeOut, delay: .2, repeat: 3, yoyo: true});

	// aladin motion
	tl_aladin.to(_aladin, .6, {x: 0, autoAlpha: 1, ease: Power1.easeOut, delay: .4});

	// genie motion
	tl_genie.to(_genie_lamp, .2, {rotation: 0, ease: Linear.easeNone, repeat: 2, yoyo: true});
	tl_genie.to(_genie, .5, {opacity: 1, scale: 1, ease: Linear.easeNone, delay: .07});

	// daesung motion
	tl_daesung.to(_daesung, .4, {y: -60, ease: Power1.easeOut, repeat: 3, yoyo: true});

	// kasim motion
	tl_kasim.to(_kasim, .6, {scale: 1, autoAlpha: 1, ease: Power1.easeOut, delay: .4});

	// shuri motion
	tl_shuri.to(_shuri, 1.2, {y: -6, ease: Sine.easeInOut, force3D: true, repeat: 2, yoyo: true, onStart: function(){
			TweenMax.to(_shuri_light, 1, {autoAlpha: 1, ease: Sine.easeInOut,force3D: true, delay: .4, repeat: 3, yoyo: true});
		}
	});
	tl_shuri.to(_shuri, 1.2, {y: 0, ease: Sine.easeInOut,force3D: true, onStart: function(){
			TweenMax.to(_shuri_light, 1, {autoAlpha: 0, ease: Power1.easeInOut});
		}
	});

	// black motion
	tl_black.to(_black, 1.6, {autoAlpha: 0.8, y: -10, repeat: 3, yoyo: true, ease: Sine.easeInOut,force3D: true, onStart: function(){
			TweenMax.to(_black, 0.8, {x: 4, ease: Sine.easeInOut,force3D: true, delay: .4, repeat: 6, yoyo: true})
		}
	});

	// sultan motion
	tl_sultan.to(_sultan, .6, {x: 0, autoAlpha: 1, ease: Power1.easeOut, delay: .4});



    /* ***************************************
     * slider
     * ************************************** */
	_slider.on('init', function(slick){
        // custom markup
		jQuery(this).find('button').append('<span></span>');

        // motion play
        tl_seol.restart();
	});

	_slider.slick({
		slidesToShow : 1,
		slidesToScroll : 1,
        speed: 400,
        fade: true,
		arrows: true,
        swipeToSlide : true,
        pauseOnFocus: false,
		pauseOnHover: false
	})

    _slider.on('beforeChange', function(event, slick, currentSlide, nextSlide){

        // remove current and add current
		jQuery('.character_slider_thumb').removeClass('slick_current');
		jQuery('.character_slider_thumb:eq('+ nextSlide +')').addClass('slick_current');

        // scrollTo
        var offset = 0;

		if(!jQuery('body').hasClass('minimize_layout') && !JT.is_screen(1023)){
            if(JT.is_screen(1380)){
                offset = 8;
            } else {
                offset = 7;
            }
        }

        jQuery('html,body').animate({scrollTop : _slider.offset().top - jQuery('#header').height() + offset}, 800);

        // motion
        switch(nextSlide) {
            case 0:
                tl_seol.restart();
                break;
            case 1:
                tl_daisy.restart();
                break;
            case 2:
                tl_aladin.restart();
                break;
            case 3:
                tl_daesung.restart();
                break;
            case 4:
                tl_genie.restart();
                break;
            case 5:
                tl_kasim.restart();
                break;
            case 6:
                tl_shuri.restart();
                break;
            case 7:
                tl_black.restart();
                break;
            case 8:
                tl_sultan.restart();
                break;
            default:
                // nothing
                break;
        }

	});

    // navigation click
	jQuery('.character_slider_nav').on('click', '.character_slider_thumb', function(e){

		e.preventDefault();

		// slickGoTo
		_slider.slick('slickGoTo', jQuery(this).index());

	});

}



// 회원탈퇴 iradio 기타 항목 textarea 연결
function iradio_etc_textarea() {

	var _etc = jQuery('.jt_icheck_label_reason_etc')
	var _target = jQuery('#remove_account_reason')

	_etc.on('ifChecked', function(event){
	    _target.attr('disabled', false);
	});

	_etc.on('ifUnchecked', function(event){
	    _target.attr('disabled', true);
	});

}



// bg_scroll_motion
function illust_scroll_motion(){

	jQuery(window).scroll(function(){

		var scroll_top = jQuery(window).scrollTop();

        // 단꿈아이는?
		TweenMax.to('.company_illust_01', 2, {y: scroll_top * 0.1, force3D:true});
        TweenMax.to('.company_illust_satellite_01', 2, {y: scroll_top * 0.05, force3D:true});
		TweenMax.to('.company_illust_02',1.5, {y: scroll_top * 0.15, force3D:true});
        TweenMax.to('.company_illust_satellite_02',1.5, {y: scroll_top * 0.1, force3D:true});
		TweenMax.to('.company_illust_03',1.5, {y: scroll_top * 0.07, force3D:true});
		TweenMax.to('.company_illust_satellite_03',1.5, {y: scroll_top * 0.04, force3D:true});

	});

}



// jt_icon_write_mobile
function jt_icon_write_mobile(){

	var _window = jQuery(window);
	var _document = jQuery(document);
	var _footer = jQuery('#footer');
	var _writeBtn = jQuery('.jt_icon_write');
	var _body = jQuery('body');
	var didScroll     = null;
	var currentScroll = 0;
	var lastScroll    = 0;
	var moveScroll    = 10;

	_window.on('scroll', function(){

		didScroll = true;

		if(_window.scrollTop() < _document.height() - _window.height() - _footer.outerHeight() - _writeBtn.outerHeight() + 40){
			_writeBtn.removeClass('fixBottom');
		} else{
			_writeBtn.addClass('fixBottom');
		}

	});

	setInterval(function() {

        if (didScroll && !jQuery('body').hasClass('open_menu')) {
            hasScrolled();
            didScroll = false;
        }

    }, 50);

	function hasScrolled(){

        currentScroll = jQuery(this).scrollTop();

        // Make sure they scroll more than moveScroll
        if(Math.abs(lastScroll - currentScroll) <= moveScroll) return;

        if(currentScroll > lastScroll){ // ScrollDown
			_body.addClass('js_pop_scroll');
        }
        else { // ScrollUp
			_body.removeClass('js_pop_scroll');
        }

        lastScroll = currentScroll;

    }
}



// 프로젝트 rwd layout init
function project_init() {

    // init setting
    var _container = jQuery('.jt_isotope');
    var _isotope_target = null;

    if( !_container.length ){ return; }

    project_isotope_init();

	jQuery(window).resize(function(){

		project_isotope_init();

	});

    function project_isotope_init(){
        if(JT.is_screen(768)){

            if(_isotope_target == null){
                _isotope_target = _container.isotope({
                    itemSelector: '.isotope_item',
                    masonry: {
                        columnWidth: '.isotope_grid_sizer',
                        gutter: '.isotope_gutter_sizer',
                        horizontalOrder: true
                    },
                    percentPosition: true
                });

                // layout Isotope after each image loads
                _isotope_target.imagesLoaded(function(){
                    _isotope_target.isotope('layout');
                });
            }

		} else {

            if(_isotope_target != null){
                _isotope_target.isotope('destroy');
                _isotope_target = null;
            }

		}
    }

    // small screen click event
    $('.project_list').on('click', '.project_list_content', function(e){
        if(JT.is_screen(768)){
            e.stopPropagation();

    		var target = e.target;

    		var url = jQuery(this).find('a:first').attr('href');
    		if(url != undefined){

                if (jQuery(this).find('a:first').attr('target') == '_blank') {
                    window.open(url);
                } else {
                    window.location.href = url;
                }
    		}
        }
    });

/*
 *  // comming soon
 *  $('.project .jt_loadmore > a').on('click', function(){
 *      JT.alert('새로운 이야기를 준비 중입니다!');
 *  });
 */

}



// main floating rwd
function main_floating_rwd(){

    if(JT.is_screen(1023)){
        TweenMax.to('.home_illust_primary_point', 3, {x: 22,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
        TweenMax.to('.home_illust_primary_point', 2.5, {y: -12,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
        TweenMax.to('.home_illust_secondary_point', 2.5, {x: 15,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
        TweenMax.to('.home_illust_secondary_point', 3, {y: -15,repeat: -1,yoyo: true,force3D: false,ease: Sine.easeInOut});
    } else {
        TweenMax.killTweensOf('.home_illust_primary_point, .home_illust_secondary_point');
    }

}



/*
 *   // 회원탈퇴 완료 팝업
 *  function account_remove(){
 *
 *      $('.account_remove_complete').on('click', function(e){
 *          e.preventDefault();
 *
 *          JT.alert({
 *              title      : '탈퇴 완료',
 *              message    : '단꿈아이 사이트에서 탈퇴가 완료되었습니다. <br>그동안 단꿈아이 사이트를 이용해주셔서 감사드리며, 남겨주신 의견을 참고 삼아 <br>보다 나은 서비스로 다시 찾아뵙겠습니다.'
 *          });
 *      });
 *
 *  }
 */


/* **************************************** *
 * HELPER
 * **************************************** */
// naver browser cehck
function is_naver(){

    var agt = navigator.userAgent.toLowerCase();

    if(agt.indexOf("naver") != -1) {
        jQuery('body').addClass('naver');
    }

}



})( window );
