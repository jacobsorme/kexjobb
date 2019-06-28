# Simulator for Robotic Vacuum Cleaners 

This is the code for a Bachelors Degree thesis at KTH, [link](http://urn.kb.se/resolve?urn=urn:nbn:se:kth:diva-229771). 

### The Program
An explanation of the program can also be found in the thesis. The file `index.html` can be opened in a browser and the program is ran from there. A trail from a vacuum cleaner is drawn on a HTML canvas. Data on the pixels are then examined to obtain coverage. Below are snippets from `index.html`, where the coverage is calculated. 


```javascript
var canvas = document.getElementById("canvas");
var ctx = canvas.getContext("2d");
```
`ctx` in snippets is the context for the HTML canvas. 
```javascript
function pixels(ctx){
    count=0;
    var imgData=ctx.getImageData(0,0,canvas.width,canvas.height); // A long array, four values per pixel (R,G,B,A)
    // The array looks like this: [R,G,B,A, R,G,B,A, ... ]
    for (var i=3;i<imgData.data.length;i+=4) {
      if(imgData.data[i]>0)count++; // Alpha value examined, if a pixel colored (covered) it's greater than zero
    }
    return count/(imgData.data.length/4); // Four values per pixel in array, (imgData.data.length/4) pixels. 
}
```

Three cleaners are availible. The class `Cleaner` is the default random cleaner. There are classes `Snake` and `Spiral` too. In the end a heatmap is generated and results are printed to console. 
