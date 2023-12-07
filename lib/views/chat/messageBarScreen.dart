import 'package:flutter/material.dart';

///Normal Message bar with more actions
///
/// following attributes can be modified
///
///
/// # BOOLEANS
/// [replying] is additional reply widget top of the message bar
///
/// # STRINGS
/// [replyingTo] is a string to tag the replying message
///
/// # WIDGETS
/// [actions] are the additional leading action buttons like camera
/// and file select
///
/// # COLORS
/// [replyWidgetColor] is reply widget color
/// [replyIconColor] is the reply icon color on the left side of reply widget
/// [replyCloseColor] is the close icon color on the right side of the reply
/// widget
/// [messageBarColor] is the color of the message bar
/// [sendButtonColor] is the color of the send button
///
/// # METHODS
/// [onTextChanged] is function which triggers after text every text change
/// [onSend] is send button action
/// [onTapCloseReply] is close button action of the close button on the
/// reply widget usually change [replying] attribute to `false`

class MessageBarr extends StatelessWidget {
  final bool replying;
  final String replyingTo;
  final List<Widget> actions;
  final TextEditingController _textController = TextEditingController();
  final Color replyWidgetColor;
  final Color replyIconColor;
  final Color replyCloseColor;
  final Color messageBarColor;
  final Color sendButtonColor;
  final void Function(String)? onTextChanged;
  final void Function(String)? onSend;
  final void Function()? onTapCloseReply;

  /// [MessageBarr] constructor
  ///
  ///
  MessageBarr({
    this.replying = false,
    this.replyingTo = "",
    this.actions = const [],
    this.replyWidgetColor = const Color(0xffF4F4F5),
    this.replyIconColor = Colors.blue,
    this.replyCloseColor = Colors.black12,
    this.messageBarColor = const Color(0xffF4F4F5),
    this.sendButtonColor = Colors.blue,
    this.onTextChanged,
    this.onSend,
    this.onTapCloseReply,
  });

  /// [MessageBarr] builder method
  ///
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            replying
                ? Container(
                    color: replyWidgetColor,
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.reply,
                          color: replyIconColor,
                          size: 24,
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              'Re : ' + replyingTo,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: onTapCloseReply,
                          child: Icon(
                            Icons.close,
                            color: replyCloseColor,
                            size: 24,
                          ),
                        ),
                      ],
                    ))
                : Container(),
            replying
                ? Container(
                    height: 1,
                    color: Colors.grey.shade300,
                  )
                : Container(),
            SizedBox(
              height: 50,
              child: Container(
                color: Color(0xFF101316),
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 8,
                ),
                child: Row(
                  children: <Widget>[
                    ...actions,
                    Expanded(
                      child: Container(
                        child: SizedBox(
                          height: 30,
                          child: TextField(
                            controller: _textController,
                            keyboardType: TextInputType.multiline,
                            textCapitalization: TextCapitalization.sentences,
                            onChanged: onTextChanged,
                            decoration: InputDecoration(
                              hintText: "Enter Message",
                              hintMaxLines: 1,
                              contentPadding:
                                  EdgeInsets.only(left: 8, right: 8),
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 0.2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(
                                  color: Colors.black26,
                                  width: 0.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: InkWell(
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xFF32B5AD), shape: BoxShape.circle),
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        onTap: () {
                          if (_textController.text.trim() != '') {
                            if (onSend != null) {
                              onSend!(_textController.text.trim());
                            }
                            _textController.text = '';
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
