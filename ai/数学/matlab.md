Matlb实战
## 基础函数
### 画$y=x^2$，并导出svg
```matlab
x=linspace(-2, 2, 1000)
y=x.^2
plot(x, y)
saveas(gcf, 'x2.svg', 'svg')
```

### $y=sin(x)$
```matlab
x=linspace(0, 4*pi, 1000)
y=sin(x)
plot(x,y)
```


