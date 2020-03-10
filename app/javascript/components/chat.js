function scrollLastMessageIntoView() {
  const messagesContainer = document.querySelector(".messages");
  // const messages = document.querySelectorAll('.message');
  // const lastMessage = messages[messages.length - 1];

  // if (lastMessage !== undefined) {
  //   lastMessage.scrollIntoView();
  // }
  messagesContainer.scroll({
    top: messagesContainer.scrollHeight,
    left: 0,
    behavior: 'smooth'
  });
}

function focusTextField() {
  const messageField = document.getElementById('message_content');
  messageField.focus();
}

window.focusTextField = focusTextField;
window.scrollLastMessageIntoView = scrollLastMessageIntoView;
