safari.self.addEventListener("message", handleMessage);


function handleMessage(event) {
    if(event.name === "GET") {
        getPageContent();
    }
}

function getPageContent() {
    let body = document.body.textContent;
    safari.extension.dispatchMessage("ANALYZE", { "text": body });
}
