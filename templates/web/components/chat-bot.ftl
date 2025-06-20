<#import "/templates/system/common/crafter.ftl" as crafter />
<section>
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
            -webkit-border-radius: 50px;
            -moz-border-radius: 50px;
            border-radius: 50px;
            background: #5a99ee;
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
            width: 90%;
        }
        
        .chat-list .out .chat-body {
            float: right;
            text-align: right;
        }
        
        .chat-list .out .chat-message {
            background: #fc6d4c;
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

    <button class="btn btn-primary position-fixed bottom-0 m-1" onclick="toggleChat()">
        <i class="fa fa-comments"></i>
    </button>

    <div class="card w-25 position-fixed bottom-0 end-0 m-1 d-none" id="chat">
        <div class="card-header d-flex">
            <button class="btn btn-danger ms-auto" onclick="toggleChat()">
                <i class="fa fa-xmark"></i>
            </button>
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
        document.getElementById('user-message').addEventListener('input', function() {
            const sendButton = document.getElementById('send-button');
            if (getMessage()) sendButton.removeAttribute('disabled');
            else sendButton.setAttribute('disabled', '');
        });

        function toggleChat() {
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

        function sendMessage() {
            const message = getMessage();
            document.getElementById('user-message').value = '';
            addMessage(message, false);
            sendRequestToBot(message);
        }

        async function sendRequestToBot(message) {
            let url = 'https://vocalchatbot.deepreality.cloud/custom/semantic_search';
            url += '?user_message=' + encodeURIComponent(message);
            const response = await fetch(url, {method: 'POST'});

            if(!response.ok) {
            addMessage('Si è verificato un errore.', true);
            return;
            }

            const json = await response.json();
            for(let item of json.items) {
                addMessage(item.name_s || 'Nessun nome', true);
            }
        }
    </script>
</section>
