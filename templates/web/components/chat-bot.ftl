<#import "/templates/system/common/crafter.ftl" as crafter />

<style>
    .chat-list {
        padding: 0;
        font-size: 0.8rem;
        list-style: none;
    }

    .chat-list li {
        margin-bottom: 10px;
        overflow: auto;
        color: #ffffff;
    }

    .chat-message {
        border-radius: 20px;
        background: #a2c6fc;
        display: inline-block;
        padding: 10px 20px;
        position: relative;
    }

    .chat-message p {
        line-height: 18px;
        margin: 0;
        padding: 0;
        font-size: 0.85rem;
    }

    .chat-body {
        float: left;
        max-width: 90%;
    }

    .out .chat-body {
        float: right;
        text-align: left;
    }

    .out .chat-message {
        background: #77a9fa;
    }

    #chat {
        z-index: 999;
    }

    .card .card-header {
        border: 0;
        font-size: 1rem;
        padding: 0.65rem 1rem;
        font-weight: 600;
        color: #ffffff;
        border-radius: 0.3rem 0.3rem 0 0;
    }

    .card-body {
        height: 400px;
        overflow-y: auto;
    }

    .content {
        margin-top: 40px;
    }
</style>

<!-- Chat Toggle Button -->
<button id="chatBotButton" class="btn btn-primary position-fixed bottom-0 m-2" onclick="toggleChat()" aria-label="Apri chat">
    <i class="fa fa-comments"></i>
</button>

<!-- Chat Window -->
<div class="card position-fixed bottom-0 end-0 m-1 d-none" id="chat" style="width: 100%; max-width: 350px;">
    <div class="card-header d-flex">
        <button class="btn-close ms-auto" onclick="toggleChat()" aria-label="Chiudi chat"></button>
    </div>
    <div class="card-body">
        <ul class="chat-list" id="messages"></ul>
    </div>
    <div class="input-group p-1">
        <input type="text" class="form-control" id="user-message" placeholder="Scrivi un messaggio...">
        <div class="input-group-append">
            <button class="btn btn-success" type="button" id="send-button" disabled onclick="sendMessage()" aria-label="Invia messaggio">
                <i class="fa fa-paper-plane"></i>
            </button>
        </div>
    </div>
</div>

<script>
    let timeoutId;
    let inactivityPromptShown = false;

    document.getElementById('user-message').addEventListener('input', toggleSendButton);

    function toggleSendButton() {
        const sendButton = document.getElementById('send-button');
        sendButton.disabled = !getMessage().trim();
    }

    function toggleChat() {
        resetChat();
        const chat = document.getElementById('chat');
        chat.classList.toggle('d-none');
        if (!chat.classList.contains('d-none')) {
            addBotMessages(["Ciao, sono il tuo assistente virtuale", "Come posso esserti utile?"]);
        }
    }

    function resetChat() {
        clearTimeout(timeoutId);
        inactivityPromptShown = false;
        document.getElementById('messages').innerHTML = '';
        document.getElementById('user-message').disabled = false;
        document.getElementById('send-button').disabled = true;
    }

    function addMessage(text, isBot) {
        const messages = document.getElementById('messages');
        const li = document.createElement('li');
        li.className = isBot ? 'out' : 'in';

        const chatBody = document.createElement('div');
        chatBody.className = 'chat-body';

        const chatMessage = document.createElement('div');
        chatMessage.className = 'chat-message';

        const p = document.createElement('p');
        p.textContent = text;

        chatMessage.appendChild(p);
        chatBody.appendChild(chatMessage);
        li.appendChild(chatBody);
        messages.appendChild(li);

        messages.scrollTop = messages.scrollHeight;
    }

    function addBotMessages(messages) {
        messages.forEach(msg => addMessage(msg, true));
    }

    function getMessage() {
        return document.getElementById('user-message').value || '';
    }

    async function sendMessage() {
        const input = document.getElementById('user-message');
        const message = getMessage().trim();
        if (!message) return;

        addMessage(message, false);
        input.value = '';
        toggleSendButton();
        addMessage('Controllo subito...', true);
        await fetchBotResponse(message);
    }

    async function fetchBotResponse(message) {
        startInactivityTimer();
        try {
            const url = `https://vocalchatbot.deepreality.cloud/custom/semantic_search?user_message=${encodeURIComponent(message)}`;
            const response = await fetch(url, { method: 'POST' });

            if (!response.ok) {
                throw new Error('API error');
            }

            const json = await response.json();
            addMessage(json.answer, true);
        } catch (err) {
            addMessage('Mi dispiace, non riesco a elaborare la richiesta in questo momento.', true);
        }
    }

    function startInactivityTimer() {
        clearTimeout(timeoutId);
        inactivityPromptShown = false;

        timeoutId = setTimeout(() => {
            if (!inactivityPromptShown) {
                inactivityPromptShown = true;
                addMessage('Hai ancora bisogno di me?', true);
                showYesNoButtons();
            }
        }, 60000);
    }

    function showYesNoButtons() {
        const container = document.getElementById('messages');
        const answerDiv = document.createElement('div');
        const timestamp = Date.now();
        answerDiv.id = `boolean-answer-${timestamp}`;
        answerDiv.className = 'row justify-content-center mb-2';

        answerDiv.innerHTML = `
            <button class="btn btn-primary col-5 m-1" id="yes-${timestamp}">SI</button>
            <button class="btn btn-primary col-5 m-1" id="no-${timestamp}">NO</button>
        `;

        container.appendChild(answerDiv);

        document.getElementById(`yes-${timestamp}`).onclick = () => handleYes(timestamp);
        document.getElementById(`no-${timestamp}`).onclick = () => handleNo(timestamp);
    }

    function handleYes(timestamp) {
        disableButtons(timestamp);
        addMessage('Come posso esserti utile?', true);
        startInactivityTimer();
    }

    function handleNo(timestamp) {
        disableButtons(timestamp);
        document.getElementById('user-message').disabled = true;
        addBotMessages([
            'Grazie',
            'Spero di esserti stato utile',
            'Prima di andar via perfavore, chiudi la chat utilizzando il bottone in alto'
        ]);
    }

    function disableButtons(timestamp) {
        document.getElementById(`yes-${timestamp}`).disabled = true;
        document.getElementById(`no-${timestamp}`).disabled = true;
    }
</script>
