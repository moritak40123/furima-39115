function post (){
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () => {
    const priceValue = priceInput.value;
    const commission = document.getElementById("add-tax-price");
    commission.innerHTML = `${priceValue / 10}`;
  });
};

window.addEventListener('load', post);