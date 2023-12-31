window.addEventListener('load', () => {
const priceInput = document.getElementById("item-price");
priceInput.addEventListener("input", () => {
  const inputValue = priceInput.value;
  const addTaxDom = document.getElementById("add-tax-price");
    const taxPrice = Math.floor(inputValue * 0.1);
    addTaxDom.innerHTML = taxPrice.toLocaleString();
  const profitDom = document.getElementById("profit");
    const profitPrice = Math.floor(inputValue - taxPrice);
    profitDom.innerHTML = profitPrice.toLocaleString();
})})