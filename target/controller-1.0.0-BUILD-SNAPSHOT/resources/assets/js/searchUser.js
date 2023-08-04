function onSubmit(event) {
  event.preventDefault();

  const searchBox = document.getElementById("searchBox2");
  const keyword = searchBox.value;

  fetch(`/searchUser?keyword=${encodeURIComponent(keyword)}`, { method: "GET" })
    .then((response) => {
      if (!response.ok) {
        throw new Error("Network response was not ok");
      }
      return response.json();
    })
    .then((data) => {
      displayResults(data);
    })
    .catch((error) => {
      console.error("Error fetching data:", error);
    });
}

function displayResults(users) {
  const resultDiv = document.getElementById("result");
  resultDiv.innerHTML = "";

  const ul = document.createElement("ul");
  users.forEach((user) => {
    const li = document.createElement("li");
    li.textContent = `User ID: ${user.user_id}, Data: ${user.data}`;
    ul.appendChild(li);
  });

  resultDiv.appendChild(ul);
}

const form = document.querySelector("form");
form.addEventListener("submit", onSubmit);
