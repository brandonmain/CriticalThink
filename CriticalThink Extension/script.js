safari.self.addEventListener("message", handleMessage);


// Function that handles when a message is sent from the Safari Extension.
function handleMessage(event) {
    if(event.name === "GET") {
        getPageContent();
    }
}


// Function get all the text content contained within the body of a webpage.
// It then dispatches a message to the Safari Extension where it passes an array of
// all the content.
function getPageContent() {
    let nodes = [];
    document.querySelectorAll('body *').forEach(function(node) {
        nodes.push(node.textContent);
    });
    safari.extension.dispatchMessage("ANALYZE", { "text": nodes });
    nodes.clear();
}

