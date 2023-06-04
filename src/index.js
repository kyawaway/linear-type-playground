import './main.css';
import { Elm } from './Main.elm';
import * as serviceWorker from './serviceWorker';

Elm.Main.init({
  node: document.getElementById('root')
});


// When a command goes to the `sendMessage` port, we pass the message
// along to the WebSocket.
//app.ports.sendMessage.subscribe(function (code) {
//  // receive a message from elm frontent
//  console.log("Send", code);
//  try {
//    const result = LinearTypes.run(code);
//    app.ports.messageReceiver.send(messageJSON);
//  } catch (e) {
//    alert(e);
//  }
//});


// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
