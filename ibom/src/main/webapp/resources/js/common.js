( function(){
    var _body = jQuery('body');

    this.Common = {
        // copy to clipboard
        copyClipboard: function(txt, msg) {
            event.preventDefault();

            if (txt) {
                var _temp = jQuery('<input>').appendTo('body').val(txt).select();
                document.execCommand('copy');
                _temp.remove();

                if (msg && typeof msg == 'function') {
                    msg();

                } else if (msg !== false) {
                    alert((msg ? msg : '복사 되었습니다.'));
                }
            }
            return false;
        },

        AddComma: function(data_value) {
            var txtNumber = '' + data_value;

            if( isNaN(txtNumber) || txtNumber == '' ) {
                //alert('숫자만 입력 하세요.');
                return;
            } else {
                var rxSplit = new RegExp('([0-9])([0-9][0-9][0-9][,.])');
                var arrNumber = txtNumber.split('.');
                arrNumber[0] += '.';

                do {
                    arrNumber[0] = arrNumber[0].replace(rxSplit, '$1,$2');
                } while (rxSplit.test(arrNumber[0]));

                if( arrNumber.length > 1 ) {
                    return arrNumber.join('');
                } else {
                    return arrNumber[0].split('.')[0];
                }
            }
        },
        //
        // ajax post with add option(crossDomain)
        post: function(data) {
            return jQuery.ajaxQueue(jQuery.extend(data, { method:'post', xhrFields:{ withCredentials:true } }));
        },

        // ajax post with add option(crossDomain) with File
        postWithFile: function(data) {
            return Common.post(jQuery.extend(data,
                                           {
                                             cache: false,
                                             dataType: 'json',
                                             type: 'POST',
                                             processData: false, // Don't process the files
                                             contentType: false  // Set content type to false as jQuery will tell the server its a query string request
                                           }));
        },

        sprintf: function(text) {
            var i = 0, args = [];

            if (arguments.length) {
                Array.prototype.push.apply(args, arguments);
            }

            if (jQuery.isArray(args[1])) {
                args = args[1];
            } else {
                args.shift();
            }

            return text.replace(/%s/g, function() {
                return (i < args.length) ? args[i++] : '';
            });
        },

        submitUrl: function(url, data, target) {

            if (url) {
                var _form = jQuery('<form action="'+url+'" method="post"></form>').appendTo('body');

                if (target) {
                    _form.attr('target', target);
                }
                
                if (data) {
                    Common.append2Form(_form, data);
                }
                _form.submit();
            }
        },

        append2Form: function(_form, data, upKey) {

            if (upKey === undefined) {
                upKey = '';
            }

            if (jQuery.isPlainObject(data) || jQuery.isArray(data)) {
                jQuery.each(data, function(key, val) {
                    Common.append2Form(_form, val, (upKey ? upKey+'['+key+']' : key));
                });
            } else if (upKey) {
                jQuery('<input type="hidden" />').attr('name', upKey)
                                                 .attr('value', data)
                                                 .appendTo(_form);
            }
        },

        setTelCelMask: function() {

            if (jQuery.fn.mask) {
                jQuery(this).not('.masking')
                    .each(function() {
                        var _cel = jQuery(this).addClass('masking');
                        _cel.mask((_cel.val().length > 12 ? '000-0000-0000' : '000-000-00000'),
                                  { onKeyPress:function (val, e, field, options) {

                                        if (val.substr(0,2) == '02') {
                                            if (val.length <= 11) { _cel.mask('00-000-00000', options); }
                                            else if (val.length <= 12) { _cel.mask('00-0000-00000', options); }
                                            else                       { _cel.mask('00-0000-00000', options); }

                                        } else if ([ '031','032','033','041','042','043','044','051','052','053','054','055','061','062','063','064','050','070','080','010','011','012','015','017','019' ].indexOf(val.substr(0,3)) >= 0) {
                                            if (val.length <= 12) { _cel.mask('000-000-00000', options); }
                                            else if (val.length <= 13) { _cel.mask('000-0000-00000', options); }
                                            else                       { _cel.mask('000-0000-00000', options); }

                                        } else if (val.length > 12) {
                                            _cel.mask('000-0000-0000', options);
                                        } else {
                                            _cel.mask('000-000-00000', options);
                                        }
                                  }});
                    });
            }
            return this;
        },

        storage: function(name, key, val) {
            var data = JSON.parse(localStorage[name] || '{}');

            // set data
            if (key && key.constructor == Object) {
                localStorage[name] = JSON.stringify(key)

            // get data
            } else if (key === undefined) {
                return data;

            // get data[key]
            } else if (val === undefined) {
                return data[key];

            // set data[key]
            } else {
                data[key] = val;
                localStorage[name] = JSON.stringify(data);
            }
        },

        getBrowser: function() {
            var agent = navigator.userAgent.toLowerCase();
            var browser  ='';
            if (agent.indexOf('msie') > -1) { browser = 'ie' + agent.match(/msie (\d+)/)[1] }
            else if(agent.indexOf('trident') > -1) { browser = 'ie11' }
            else if(agent.indexOf('edge') > -1) { browser = 'edge' }
            else if(agent.indexOf('firefox') > -1) { browser = 'firefox' }
            else if(agent.indexOf('opr') > -1) { browser = 'opera' }
            else if(agent.indexOf('chrome') > -1) { browser = 'chrome' }
            else if(agent.indexOf('safari') > -1) { browser = 'safari' }
            return browser;
        },

        SearchPaging: function(url, fnResult, getData) {
            var _wrap = this;

            _wrap.on('reload', function(event, page) { event.preventDefault();
                    var postdata = getData(page);
                    Common.post({ url:url, data:postdata })            
                        .done(function(result) {                                                
                            if (result.alertmsg) { JT.alert(result.alertmsg); }                 
                            if (result.errno == '0') {
                                jQuery('#all_reply_cnt').text(Common.AddComma(result.all_reply_cnt || 0));
                                fnResult(result, postdata);
                            }
                        });
                })
                .on('click', '.jt_pagination .page_numbers', function(event) { event.preventDefault();
                    var page = jQuery(this).attr('page');
                    if (page) { _wrap.trigger('reload', page); }
                });
            return _wrap;
        },

        CommentAction: function() {
    var _comment = jQuery(this)
        .on('click', '.cmt_click', function(event) { event.preventDefault(); var _this = jQuery(this);
            var bc_no = _this.attr('bc_no') || '0';

            if (_this.hasClass('update')) {
                
                if (_this.hasClass('view-mode')) {
                    var _bottom = _this.closest('.comment_list_item').addClass('edit')
                                        .children('.comment_list_item_bottom');

                    _bottom.find('textarea').val(_bottom.find('.comment_list_item_content').text());

                } else if (_this.hasClass('edit-mode')) {
                    _this.closest('.comment_list_item').removeClass('edit');

                } else if (bc_no) {
                    JT.alert({
                        message    : '댓글을 <span>수정</span>하시겠습니까?',
                        is_confirm : true,
                        on_confirm : function(){
                            Common.post({ url:'/Communicate/Comment/mod',
                                          data:{ bc_no:bc_no,
                                                 bc_content:_this.siblings('.comment_write_data')
                                                                    .children('textarea').val() } })
                                .done(function(result) {

                                    if (result.errno == '0') {

                                        if (result.alertmsg) {
                                            JT.alert({
                                                message    : result.alertmsg,
                                                on_confirm : function(){
                                                    if (_this.hasClass('reply')) {
                                                        _this.closest('.comment_list_item').trigger('reload-reply');

                                                    } else if (_content.length || false) {
                                                        _content.trigger('reload');
                                                    }
                                                }
                                            });
                                        }

                                    } else {
                                        JT.alert(result.alertmsg);
                                    }
                                });
                        }
                    });
                }

            } else if (_this.hasClass('delete') && bc_no) {
                JT.alert({
                    message    : '댓글을 <span>삭제</span>하시겠습니까?',
                    is_confirm : true,
                    on_confirm : function(){
                        Common.post({ url:'/Communicate/Comment/del', data:{ bc_no:bc_no } })
                            .done(function(result) {

                                if (result.errno == '0') {

                                    if (result.alertmsg) {
                                        JT.alert({
                                            message    : result.alertmsg,
                                            on_confirm : function(){
                                                if (_this.hasClass('reply')) {
                                                    _this.closest('.comment_list_item').trigger('reload-reply');

                                                } else if (_content.length || false) {
                                                    _content.trigger('reload');
                                                }
                                            }
                                        });
                                    }

                                } else {
                                    JT.alert(result.alertmsg);
                                }
                            });
                    }
                });

            } else if (_this.hasClass('insert')) {
                JT.alert({
                    message    : '댓글을 <span>등록</span>하시겠습니까?',
                    is_confirm : true,
                    on_confirm : function(){
                        Common.post({ url:'/Communicate/Comment/add',
                                      data:{ bo_no:_comment.attr('bo_no'),
                                             bc_no:bc_no,
                                             bc_content:_this.siblings('.comment_write_data')
                                                                .children('textarea').val() } })
                            .done(function(result) {

                                if (result.errno == '0') {

                                    if (result.alertmsg) {
                                        JT.alert({
                                            message    : result.alertmsg,
                                            on_confirm : function(){

                                                if (_this.hasClass('reply')) {
                                                    _this.closest('.comment_list_item').trigger('reload-reply');

                                                } else if (_content.length || false) {
                                                    _content.trigger('reload');
                                                }
                                            }
                                        });
                                    }

                                } else {
                                    JT.alert(result.alertmsg);
                                }
                            });
                    }
                });

            // 답글(대댓글) open/close
            } else if (_this.hasClass('reply-onoff')) {
                var _this = jQuery(this),
                    _group = _this.closest('.comment_list_item'),
                    _reply = _group.find('> .comment_list_item_reply');

                _this.toggleClass('open');

                if (_this.hasClass('open')) {
                    Common.post({ url:'/Communicate/Comment/reply/search',
                                  data:{ bo_no:_this.attr('bo_no'), bc_no:_this.attr('bc_no') } })
                        .done(function(result) {

                            if (result.errno == '0') {
                                var cnt = Common.AddComma(result.totalcnt);
                                _this.children('span').text('답글 '+cnt);

                                _reply.html(result.html);
                                
                                if (!_reply.is(':visible')) {
                                    _reply.slideToggle();
                                }

                                if (result.all_reply_cnt) {
                                    jQuery('.all_reply_cnt').text(Common.AddComma(result.all_reply_cnt));
                                }
                            }
                        });
                } else {
                    _reply.slideToggle();
                }
            }
        })
        .on('reload-reply', '.comment_list_item', function(event) { event.preventDefault(); var _this = jQuery(this);
            jQuery('.comment_list_item_reply_btn', _this).removeClass('open').trigger('click');
        });
    return _comment;
        }   // CommentAction E

    }
} )( window );

