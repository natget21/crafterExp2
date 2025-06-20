<#import "/templates/system/common/crafter.ftl" as crafter />

<button class="btn btn-primary position-absolute bottom-0 m-1" onclick="toggleChat()">
    <i class="fa-solid fa-comments"></i>
</button>

<div class="card w-25 position-absolute bottom-0 end-0 m-1" id="chat">
    <div class="card-header d-flex">
        <label class="my-auto">Chat</label>
        <button class="btn btn-danger ms-auto" onclick="toggleChat()">
            <i class="fa-solid fa-xmark"></i>
        </button>
    </div>
    <div class="card-body">
        <ul class="chat-list" id="messages"></ul>
    </div>
    <div class="input-group p-1">
        <input type="text" class="form-control" id="user-message">
        <div class="input-group-append">
            <button class="btn btn-success" type="button" id="send-button" disabled="true" onclick="sendMessage()">
                <i class="fa-solid fa-paper-plane"></i>
            </button>
        </div>
    </div>
</div>