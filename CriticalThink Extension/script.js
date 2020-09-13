safari.self.addEventListener("message", handleMessage);


// Function that handles when a message is sent from the Safari Extension.
function handleMessage(event) {
    if(event.name === "GET") {
        getPageContent();
    }
}


// Function to retrieve the: url, title, page content
// Then send these items back to the extension handler for
// processing.
function getPageContent() {
    let title = document.querySelector("article  h1") === null ? document.title : document.querySelector("article  h1").textContent;
    let text = document.querySelector("article") === null ? document.body.textContent : document.querySelector("article").textContent;
    
    const content = Promise.resolve(
      {
        "url" : window.location.href,
        "title" : title === null ? document.title : title,
        "text" : text === null ? document.body.textContent : text
      }
    );

    content.then((c) => {
        safari.extension.dispatchMessage("ANALYZE", { "content": c });
    });
}



