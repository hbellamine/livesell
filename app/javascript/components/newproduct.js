const newForm = document.querySelector(".products.new");
console.log(newForm);

if(newForm) {
  console.log("hey")
  const radioBtns = document.querySelectorAll(".radios input")
  const radioMakeup = document.querySelector('product_kind_makeup')
  const radioShoes = document.querySelector('product_kind_shoes')
  const radioBags = document.querySelector('product_kind_bags')
  const radioClothes = document.querySelector('product_kind_clothes')

  const makeupElement = document.querySelector('#Makeup')
  const sizeElement = document.querySelector('#Clothes')
  const shoeElement = document.querySelector('#Shoes')
  const bagElement = document.querySelector('#Bags')

  makeupElement.style = 'display: none;';
  sizeElement.style = 'display: none;';
  shoeElement.style = 'display: none;';
  bagElement.style = 'display: none;';

  radioBtns.forEach((radio) => {
    radio.addEventListener('change', (elem) => {
      console.log("elem:", elem.currentTarget);

      if (elem.currentTarget.value == "Makeup") {
        makeupElement.style = 'display: block;';
        sizeElement.style = 'display: none;';
        shoeElement.style = 'display: none;';
        bagElement.style = 'display: none;';
      }
      if (elem.currentTarget.value == "Shoes") {
        makeupElement.style = 'display: none;';
        sizeElement.style = 'display: none;';
        shoeElement.style = 'display: block;';
        bagElement.style = 'display: none;';
      }

        if (elem.currentTarget.value == "Clothes") {
        makeupElement.style = 'display: none;';
        sizeElement.style = 'display: block;';
        shoeElement.style = 'display: none;';
        bagElement.style = 'display: none;';
      }

        if (elem.currentTarget.value == "Bags") {
        makeupElement.style = 'display: none;';
        sizeElement.style = 'display: none;';
        shoeElement.style = 'display: none;';
        bagElement.style = 'display: block;';
      }

    })
  })

}
