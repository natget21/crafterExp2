<#import "/templates/system/common/crafter.ftl" as crafter />

<style>
    .chat-list {
        padding: 0;
        font-size: .8rem;
    }
    
    .chat-list li {
        margin-bottom: 10px;
        overflow: auto;
        color: #ffffff;
    }
    
    .chat-list .chat-message {
        border-radius: 20px;
        background: #a2c6fc;
        display: inline-block;
        padding: 10px 20px;
        position: relative;
    }
    
    .chat-list .chat-message:before {
        content: "";
        position: absolute;
        top: 15px;
        width: 0;
        height: 0;
    }
    
    .chat-list .chat-message p {
        line-height: 18px;
        margin: 0;
        padding: 0;
    }
    
    .chat-list .chat-body {
        float: left;
        max-width: 90%;
    }
    
    .chat-list .out .chat-body {
        float: right;
        text-align: left;
    }
    
    .chat-list .out .chat-message {
        background: #77a9fa;
    }
    
    #chat {
        z-index: 999;
    }
    
    .card .card-header:first-child {
        -webkit-border-radius: 0.3rem 0.3rem 0 0;
        -moz-border-radius: 0.3rem 0.3rem 0 0;
        border-radius: 0.3rem 0.3rem 0 0;
    }
    .card .card-header {
        border: 0;
        font-size: 1rem;
        padding: .65rem 1rem;
        position: relative;
        font-weight: 600;
        color: #ffffff;
    }
    
    .card-body {
        height: 400px;
        overflow: auto;
    }
    
    .content{
        margin-top:40px;    
    }
</style>

<button class="btn btn-primary position-fixed bottom-0 m-2 d-block" style="z-index: 999;" onclick="toggleChat()">
    <i class="fa fa-comments"></i>
</button>

<div class="card w-25 position-fixed bottom-0 end-0 m-1 d-none" id="chat">
    <div class="card-header d-flex">
        <button class="btn-close ms-auto" onclick="toggleChat()"></button>
    </div>
    <div class="card-body">
        <ul class="chat-list" id="messages"></ul>
    </div>
    <div class="input-group p-1">
        <input type="text" class="form-control" id="user-message">
        <div class="input-group-append">
            <button class="btn btn-success" type="button" id="send-button" disabled="true" onclick="sendMessage()">
                <i class="fa fa-paper-plane"></i>
            </button>
        </div>
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('user-message').addEventListener('input', disableSendButton);
});


let timeoutId;

function disableSendButton() {
    const sendButton = document.getElementById('send-button');
    if (getMessage()) sendButton.removeAttribute('disabled');
    else sendButton.setAttribute('disabled', '');
}

function toggleChat() {
    const allMessages = window.messages || '';
    if(allMessages) {
        storeChat(allMessages);
    }
    window.messages = '';
    const messages = document.getElementById('messages');
    while (messages.firstChild) messages.removeChild(messages.firstChild);
    addMessage("Ciao, sono il tuo assistente virtuale", true);
    addMessage("Come posso esserti utile?", true);
    const chat = document.getElementById('chat');
    chat.classList.toggle('d-none');
}

function addMessage(text, isRobot) {
    const messages = document.getElementById('messages');

    const message = document.createElement('li');
    message.className = isRobot ? 'out' : 'in';

    const chatBody = document.createElement('div');
    chatBody.className = 'chat-body';

    const chatMessage = document.createElement('div');
    chatMessage.className = 'chat-message';

    const p = document.createElement('p');
    p.className = 'text-white';
    p.style.fontSize = '0.85rem';
    p.textContent = text;

    chatMessage.appendChild(p);
    chatBody.appendChild(chatMessage);
    message.appendChild(chatBody);
    messages.appendChild(message);
}

function addLink(link) {
    const messages = document.getElementById('messages');

    const message = document.createElement('li');
    message.className = 'out';

    const chatBody = document.createElement('div');
    chatBody.className = 'chat-body';

    const chatMessage = document.createElement('div');
    chatMessage.className = 'chat-message';

    const a = document.createElement('a');
    a.className = 'text-white';
    a.style.fontSize = '0.85rem';
    a.textContent = 'Clicca qui per maggiori info';
    a.href = link;
    a.target = '_blank';

    chatMessage.appendChild(a);
    chatBody.appendChild(chatMessage);
    message.appendChild(chatBody);
    messages.appendChild(message);
}

function addCourseMessage(course) {
    let show = false;
    const messages = document.getElementById('messages');

    const message = document.createElement('li');
    message.className = 'out';

    const chatBody = document.createElement('div');
    chatBody.className = 'chat-body';

    const chatMessage = document.createElement('div');
    chatMessage.className = 'chat-message';

    const ul = document.createElement('ul');
    ul.style.fontSize = '1.1em';
    ul.style.textAlign = 'justify';
    ul.style.lineBreak = 'anywhere';
    ul.style.paddingLeft = '0px';

    for (const [key, value] of Object.entries(course)) {
        if(key === 'introduction' || key === 'conclusion') continue;
        show = true;
        const li = document.createElement('li');
        li.innerHTML = '<strong>'+ key + '</strong>' + value;
        ul.appendChild(li);
    }
    if(show) {
        chatMessage.appendChild(ul);
        chatBody.appendChild(chatMessage);
        message.appendChild(chatBody);
        messages.appendChild(message);
    }
}


function getMessage() {
    return document.getElementById('user-message').value || '';
}

async function sendMessage() {
    const sendButton = document.getElementById('send-button');
    sendButton.setAttribute('disabled', '');
    const message = getMessage();
    document.getElementById('user-message').value = '';
    addMessage(message, false);
    addMessage('Controllo subito...', true);
    window.messages += ' ' + message;
    await sendRequestToBot(message);
}

async function sendRequestToBot(message) {
    startInactivityTimer();
    let url = 'https://vocalchatbot.deepreality.cloud/custom/semantic_search';
    url += '?user_message=' + encodeURIComponent(message);
    const response = await fetch(url, {method: 'POST'});

    if(!response.ok) {
        addMessage('Mi dispiace, ma in questo momento non sono in grado di elaborare la tua richiesta.', true);
        return;
    }

    const json = await response.json();
    const answer = json.answer;
    const links = json.link;
    window.messages += ' ' + answer;
    addMessage(answer, true);
    for(let link of links) {
        if(link) {
            addLink(link);
        }
    }


    // const handledAnswer = handleAnswer(answer, links);

    // addMessage(handledAnswer.introduction, true);
    // addCourseMessage(handledAnswer);
    // if(handledAnswer.conclusion !== handledAnswer.introduction) addMessage(handledAnswer.conclusion, true);
}

function handleAnswer(answer) {
    /*
    const dict = {};
    const rows = answer.trim().split('\n');
    dict['introduction'] = rows[0].trim();
    dict['conclusion'] = rows[rows.length - 1].trim();

    const regex = /\*\*(.+?)\*\*\s*(.*?)\n/g;
    let match;

    while ((match = regex.exec(answer)) !== null) {
        const keyword = match[1].trim();
        let text = match[2].trim();

        text = convertLink(text);
        console.log(text);

        if(text.startsWith(':')) text = text.substring(1);
        dict[keyword] = text;
    }
    */
    return dict;
}

function startInactivityTimer() {
    clearTimeout(timeoutId);
    timeoutId = setTimeout(() => {
        addMessage('Hai ancora bisogno di me?', true);
        hadleDecisionButtons();
    }, 60 * 1000); 
}

function hadleDecisionButtons() {
    const container = document.getElementById('messages');

    const answerDiv = document.createElement('div');
    const now = Date.now();
    answerDiv.id = 'boolean-answer-' + now;
    answerDiv.className = 'row justify-content-center mb-2';

    const yesButton = document.createElement('button');
    yesButton.id = "boolean-answer-yes-" + now;
    yesButton.className = 'btn btn-primary col-5 m-1';
    yesButton.textContent = 'SI';
    yesButton.onclick = function() {
        sayYes(now); 
    };

    const noButton = document.createElement('button');
    noButton.id = 'boolean-answer-no-' + now;
    noButton.className = 'btn btn-primary col-5 m-1';
    noButton.textContent = 'NO';
    noButton.onclick = function() {
        sayNo(now);
    };

    answerDiv.appendChild(yesButton);
    answerDiv.appendChild(noButton);

    container.appendChild(answerDiv);
}

function sayYes(now) {
    addMessage('Come posso esserti utile?', true);
    const yesButton = document.getElementById('boolean-answer-yes-' + now);
    yesButton.setAttribute('disabled', '');
    const noButton = document.getElementById('boolean-answer-no-' + now);
    noButton.setAttribute('disabled', '');
}

function sayNo(now) {
    const yesButton = document.getElementById('boolean-answer-yes-' + now);
    yesButton.setAttribute('disabled', '');
    const noButton = document.getElementById('boolean-answer-no-' + now);
    noButton.setAttribute('disabled', '');

    const userMessage = document.getElementById('user-message')
    userMessage.setAttribute('disabled', '');

    addMessage('Grazie', true);
    addMessage('Spero di esserti stato utile', true);
    addMessage('Prima di andar via perfavore, chiudi la chat utilizzando il bottone in alto', true);
}

function convertLink(answer) {
    const regex = /\[([^\]]+)\]\(([^)]+)\)/g;
    return answer.replace(regex, '<a target="_blank" href="$2">$1</a>');
}

async function storeChat(messages) {
    const userString = localStorage.getItem('crafterVadinUser');
    if (!userString || !messages) return;
    const user = JSON.parse(userString);
    const token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJvcmdhbml6YXRpb25JZCI6IjY3YWM3OGI2NDFmM2U0M2Y5MzQ3MzgxMCIsInVzZXJfbmFtZSI6Intsb2dpblJvbGU9bnVsbCwgaWQ9Njc4NDYwZTM1MDlhYzM0NjRkNmI2MjEwLCB1c2VybmFtZT1wcm9qZWN0LmNhZ2VAZ21haWwuY29tLCBkZXZpY2VUeXBlPW51bGwsIGRldmljZU5hbWU9bnVsbCwgc2Vzc2lvbklkPW51bGwsIHByb2plY3RJZD02ODY1MmM1MTFmN2Y2NDcyYTY3MGU0YTIsIG9yZ2FuaXphdGlvbklkPTY3YWM3OGI2NDFmM2U0M2Y5MzQ3MzgxMCwgcmVzdHJpY3Rpb25zPXtvcmdhbml6YXRpb25JZD02N2FjNzhiNjQxZjNlNDNmOTM0NzM4MTAsIGRvbWFpbnM9W2h0dHBzOi8vdm9jYWxjaGF0Ym90LmRlZXByZWFsaXR5LmNsb3VkLCBodHRwOi8vNTEuNjguMTczLjIwMSwgaHR0cHM6Ly9kZW1vLnNob3J0Y3V0LnVubywgaHR0cDovL2RlbW8uc2hvcnRjdXQudW5vLCBodHRwczovL2lkZWFsZS5zaG9ydGN1dC51bm8sIGh0dHA6Ly9pZGVhbGUuc2hvcnRjdXQudW5vLCBodHRwOi8vNTEuNjguMTczLjIwMTo4MDgwLCBodHRwOi8vNTEuNjguMTczLjIwMTo5MDgxLCBodHRwOi8vbG9jYWxob3N0OjUwMDAsIGh0dHA6Ly9sb2NhbGhvc3QsIDE3Mi4yMS4wLjEsIGxvY2FsaG9zdDo1MDAwLCBsb2NhbGhvc3Q6ODA4MCwgbG9jYWxob3N0OjkwODAsIGlkZWFsZS5zaG9ydGN1dC51bm8sIDUxLjY4LjE3My4yMDEsIDUxLjY4LjE3My4yMDE6ODA4MCwgNTEuNjguMTczLjIwMTo5MDgxLCBsb2NhbGhvc3Q6NTE3MywgZGVtby5zaG9ydGN1dC51bm8sIGh0dHBzOi8vYXBpLnNob3J0Y3V0LnVubywgaHR0cDovLzUxLjY4LjE3My4yMDEsIGh0dHA6Ly8xMjcuMC4wLjEsIGFwaS5zaG9ydGN1dC51bm8sIGh0dHBzOi8vYXBpLnNob3J0Y3V0LnVubywgbG9jYWxob3N0LCAxMjcuMC4wLjFdfSwgZW5hYmxlZD10cnVlLCBhY2NvdW50Tm9uRXhwaXJlZD10cnVlLCBjcmVkZW50aWFsc05vbkV4cGlyZWQ9dHJ1ZSwgYWNjb3VudE5vbkxvY2tlZD10cnVlLCBhdXRob3JpdGllcz1be2F1dGhvcml0eT1HQVRFV0FZX1NFUlZFUlNJREV9XX0iLCJzY29wZSI6WyJyZWFkIiwid3JpdGUiXSwicmVzdHJpY3Rpb25zIjp7Im9yZ2FuaXphdGlvbklkIjoiNjdhYzc4YjY0MWYzZTQzZjkzNDczODEwIiwiZG9tYWlucyI6WyJodHRwczovL3ZvY2FsY2hhdGJvdC5kZWVwcmVhbGl0eS5jbG91ZCIsImh0dHA6Ly81MS42OC4xNzMuMjAxIiwiaHR0cHM6Ly9kZW1vLnNob3J0Y3V0LnVubyIsImh0dHA6Ly9kZW1vLnNob3J0Y3V0LnVubyIsImh0dHBzOi8vaWRlYWxlLnNob3J0Y3V0LnVubyIsImh0dHA6Ly9pZGVhbGUuc2hvcnRjdXQudW5vIiwiaHR0cDovLzUxLjY4LjE3My4yMDE6ODA4MCIsImh0dHA6Ly81MS42OC4xNzMuMjAxOjkwODEiLCJodHRwOi8vbG9jYWxob3N0OjUwMDAiLCJodHRwOi8vbG9jYWxob3N0IiwiMTcyLjIxLjAuMSIsImxvY2FsaG9zdDo1MDAwIiwibG9jYWxob3N0OjgwODAiLCJsb2NhbGhvc3Q6OTA4MCIsImlkZWFsZS5zaG9ydGN1dC51bm8iLCI1MS42OC4xNzMuMjAxIiwiNTEuNjguMTczLjIwMTo4MDgwIiwiNTEuNjguMTczLjIwMTo5MDgxIiwibG9jYWxob3N0OjUxNzMiLCJkZW1vLnNob3J0Y3V0LnVubyIsImh0dHBzOi8vYXBpLnNob3J0Y3V0LnVubyIsImh0dHA6Ly81MS42OC4xNzMuMjAxIiwiaHR0cDovLzEyNy4wLjAuMSIsImFwaS5zaG9ydGN1dC51bm8iLCJodHRwczovL2FwaS5zaG9ydGN1dC51bm8iLCJsb2NhbGhvc3QiLCIxMjcuMC4wLjEiXX0sIl9pZCI6IjY3ODQ2MGUzNTA5YWMzNDY0ZDZiNjIxMCIsInByb2plY3RJZCI6IjY4NjUyYzUxMWY3ZjY0NzJhNjcwZTRhMiIsImF1dGhvcml0aWVzIjpbIkdBVEVXQVlfU0VSVkVSU0lERSJdLCJqdGkiOiI3ODdkYjZkNS1jNTk5LTRmZmQtYmNhZS1lYzZmMjFmNWJjMjgiLCJjbGllbnRfaWQiOiJJZGVhbGVfUHJvamVjdF9TZXJ2ZXJfU2lkZS0xNzUxNDYwOTQ1MzY0XzEifQ.gEOwwURfW7ynQ5gHyPhZZeXkDly8KxXZcbcmwsLkf6o';
    const url = 'https://api.shortcut.uno/v1/Ideale/storeChatBot';
    const headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + token,
        'Origin': 'http://localhost:5000'
    };
    const body = JSON.stringify({
        clientId: user._id,
        botChatContext: messages,
        organizationId: "67ac78b641f3e43f93473810"
    })
    const response = await fetch(url, { method: 'POST', headers, body });
}
</script>

