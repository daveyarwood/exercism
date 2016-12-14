let shouting = (message) => message.match(/[A-ZÄÜ]/) &&
                            !message.match(/[a-zäü]/);

let asking = (message) => message.endsWith("?");

let notSayingAnything = (message) => message.match(/^\s*$/);

class Bob {
  hey(message) {
    if (shouting(message)) return "Whoa, chill out!";
    else if (asking(message)) return "Sure.";
    else if (notSayingAnything(message)) return "Fine. Be that way!";
    else return "Whatever.";
  }
}

export default Bob;

