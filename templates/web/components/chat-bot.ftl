<#import "/templates/system/common/crafter.ftl" as crafter />

<button id="openChatBtn" class="btn btn-primary position-fixed bottom-0 end-0 m-4">
    Chat Supporto
</button>

<div id="chatBox" class="d-flex shadow">
    <div class="p-2 border-bottom bg-light d-flex justify-content-between align-items-center w-100">
        <strong>Supporto</strong>
        <button id="closeChatBtn" class="btn btn-sm btn-outline-secondary">×</button>
    </div>
    <div id="chatMessages" class="flex-grow-1">
        <div class="chat-message">Ciao! Come posso aiutarti?</div>
    </div>
    <div id="chatInput" class="d-flex">
        <input type="text" id="chatText" class="form-control me-2" placeholder="Scrivi un messaggio...">
        <button class="btn btn-success" onclick="sendMessage()">Invia</button>
    </div>
</div>