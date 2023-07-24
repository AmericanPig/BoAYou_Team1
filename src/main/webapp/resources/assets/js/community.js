const closeWindowBtn = document.getElementById("closeWindow");
const iframeWrapper = document.getElementById("iframeWrapper");
const externalWebsite = document.getElementById("externalWebsite");

function openCommentPopup(event, community_no) {
    event.preventDefault();
    externalWebsite.src = "/controller/boayou/comments?community_no=" + community_no;
    iframeWrapper.classList.remove("hidden");
}

closeWindowBtn.addEventListener("click", () => {
    iframeWrapper.classList.add("hidden");
});
