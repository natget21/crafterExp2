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

<button id="chatBotButton" class="btn btn-primary position-fixed bottom-0 m-2" onclick="toggleChat()">
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
        window.messages = [];
        const messages = document.getElementById('messages');
        while (messages.firstChild) messages.removeChild(messages.firstChild);
        addMessage("Ciao, sono il tuo assistente virtuale", true);
        addMessage("Come posso esserti utile?", true);
        const chat = document.getElementById('chat');
        chat.classList.toggle('d-none');
    }
    
    function addMessage(text, isRobot) {
        window.messages.push(text);
        const messages = document.getElementById('messages');
    
        const message = document.createElement('li');
        message.className = isRobot ? 'out' : 'in';
    
        const chatBody = document.createElement('div');
        chatBody.className = 'chat-body';
    
        const chatMessage = document.createElement('div');
        chatMessage.className = 'chat-message';
    
        const p = document.createElement('p');
        p.style.fontSize = '0.85rem';
        p.textContent = text;
    
        chatMessage.appendChild(p);
        chatBody.appendChild(chatMessage);
        message.appendChild(chatBody);
        messages.appendChild(message);
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
        handleAnswer(answer);
    
        addMessage(json.answer, true);
    }
    
    function handleAnswer(answer) {
        console.log(answer);
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
</script>

