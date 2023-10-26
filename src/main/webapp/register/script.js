const labels = document.querySelectorAll('.form-control label')

labels.forEach(label => {
    label.innerHTML = label.innerText
        .split('')
        .map((letter, idx) => `<span style="transition-delay:${idx * 50}ms">${letter}</span>`)
        .join('')
})


const mobileField = document.getElementById("mobile");

mobileField.addEventListener("focus", function () {
    if (!mobileField.value) {
        mobileField.value = "+91";
    }
});

mobileField.addEventListener("blur", function () {
    if (mobileField.value === "+91") {
        mobileField.value = "";
    }
});

