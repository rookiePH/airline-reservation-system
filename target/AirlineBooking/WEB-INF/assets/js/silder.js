var slider = document.getElementById('slider');

noUiSlider.create(slider, {
    start: [ 0.50 ],
    range: {
        'min': [   0 ],
        'max': [ 1 ]
    },
    contact:true,
    step: 0.01
});

var inputFormat = document.getElementById('yuzhi');

slider.noUiSlider.on('update', function( values, handle ) {
    inputFormat.value = values[handle];
});

inputFormat.addEventListener('change', function(){
    slider.noUiSlider.set(this.value);
});



var sliderForJuLei = document.getElementById('sliderForJuLei');

noUiSlider.create(sliderForJuLei, {
    start: [ 0.50 ],
    range: {
        'min': [   0 ],
        'max': [ 1 ]
    },
    contact:true,
    step: 0.01
});

var inputFormat1 = document.getElementById('julei');

sliderForJuLei.noUiSlider.on('update', function( values, handle ) {
    inputFormat1.value = values[handle];
});

inputFormat1.addEventListener('change', function(){
    sliderForJuLei.noUiSlider.set(this.value);
});


