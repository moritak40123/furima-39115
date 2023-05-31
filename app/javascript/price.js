function post (){
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () => {
    const priceValue = priceInput.value;
    const commission = document.getElementById("add-tax-price");
    const commissionValue = Math.floor(priceValue * 0.1);
    commission.innerHTML = commissionValue;
    const profit = document.getElementById("profit");
    const profitValue = Math.floor(priceValue * 0.9);
    profit.innerHTML = profitValue;
  });
};

window.addEventListener('load', post);